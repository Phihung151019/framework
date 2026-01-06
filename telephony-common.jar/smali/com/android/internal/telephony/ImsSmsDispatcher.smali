.class public Lcom/android/internal/telephony/ImsSmsDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;
    }
.end annotation


# static fields
.field public static final blacklist MAX_SEND_RETRIES_OVER_IMS:I = 0x3

.field public static final blacklist SOURCE_INJECTED_FROM_IMS:I = 0x1


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private blacklist mConnectRunnable:Ljava/lang/Runnable;

.field private blacklist mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

.field private blacklist mCurSimIndex:I

.field private final blacklist mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private blacklist mEmergencyPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mHandleStatus:I

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private final blacklist mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private volatile blacklist mIsImsServiceUp:Z

.field private volatile blacklist mIsRegistered:Z

.field private volatile blacklist mIsSmsCapable:Z

.field private volatile blacklist mIsSmsOverImsOnly:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field public blacklist mMemoryAvailableNotifierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field public blacklist mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mPrevVolteRegi:Z

.field private blacklist mQualCommModem:Z

.field private volatile blacklist mRegisteredTransportType:I

.field private blacklist mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

.field private blacklist mSimMaxCount:I

.field private blacklist mSimUsedCount:I

.field public blacklist mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsimDownloadMsg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2gFGB-cnpg1iE20TVtHMvvqlgE4(Lcom/android/internal/telephony/ImsSmsDispatcher;Landroid/telephony/SmsMessage;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->lambda$injectSms$0(Landroid/telephony/SmsMessage;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectRunnable(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataDownloadHandler(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsManagerConnector(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/FeatureConnector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetrics(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/ims/ImsManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsImsServiceUp(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSmsCapable(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegisteredTransportType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertErrorCodeToNetworkReasonCode(Lcom/android/internal/telephony/ImsSmsDispatcher;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->convertErrorCodeToNetworkReasonCode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfailPendingEmergencySms(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->failPendingEmergencySms()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->handleImsSmsSendComplete(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVzwSmsWriteUicc(Lcom/android/internal/telephony/ImsSmsDispatcher;IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->handleVzwSmsWriteUicc(IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSamsungSmsReceived(Lcom/android/internal/telephony/ImsSmsDispatcher;ILjava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onSamsungSmsReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendPendingEmergencySms(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendPendingEmergencySms(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetListeners(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setListeners()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;)V
    .locals 8

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    .line 126
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    .line 127
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    .line 129
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegisteredTransportType:I

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 144
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$2;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$2;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 190
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$3;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$3;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 202
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$4;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$4;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 444
    new-instance p2, Lcom/android/internal/telephony/ImsSmsDispatcher$5;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$5;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 1214
    iput v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    .line 1215
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mQualCommModem:Z

    const/16 v1, 0x3e8

    .line 1216
    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    .line 1217
    iput v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimUsedCount:I

    .line 1218
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    const/4 v0, 0x1

    .line 1219
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    .line 1222
    iput v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    .line 1226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    .line 1229
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    .line 673
    iput-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

    .line 675
    new-instance p3, Lcom/android/internal/telephony/SmsDomainSelector;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, v1}, Lcom/android/internal/telephony/SmsDomainSelector;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    .line 678
    new-instance p3, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-direct {p3, p1, v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;I)V

    iput-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectorFactory:Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    new-instance v6, Lcom/android/internal/telephony/ImsSmsDispatcher$6;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$6;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    new-instance v7, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    const-string v5, "ImsSmsDispatcher"

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;->create(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    .line 716
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p3, 0x1b

    const/4 v0, 0x0

    invoke-interface {p1, p0, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 721
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    .line 722
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 723
    const-string p3, "com.samsung.intent.action.EMERGENCY_SMS_SEARCH_READY"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string p3, "com.samsung.intent.action.EMERGENCY_SMS_SEARCH_FAILED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string p3, "com.samsung.intent.action.SMS_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist Class2SmsToSim(I[BLandroid/telephony/SmsMessage;)V
    .locals 6

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class2SmsToSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-virtual {p3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    const-string v0, "Class2 replace msg received"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origAddr = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " protocolId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object p3, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p3, p3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1710
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x18

    .line 1709
    invoke-virtual {p0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemGetStoredMsgCountFromSim(Landroid/os/Message;)V

    return-void

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->getSimFullStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1715
    iget-object p3, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v3, p3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v5, 0x2

    const/4 v1, 0x3

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    return-void

    :cond_1
    move-object v0, p0

    move v2, p1

    .line 1718
    :try_start_0
    invoke-direct {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    iget-object p1, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 p2, 0x3

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist convertErrorCodeToNetworkReasonCode(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist failPendingEmergencySms()V
    .locals 8

    .line 1265
    const-string v0, "failPendingEmergencySms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    const/16 v0, 0x1f

    .line 1266
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1267
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1268
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmergencyNetworkControl(I)V

    .line 1270
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "0"

    const-string v3, "ISD_failPendingEmergencySms"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1273
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1274
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x11

    const/4 v7, 0x2

    const/4 v5, 0x2

    move-object v2, p0

    .line 1275
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->handleImsSmsSendComplete(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist getImsManager()Lcom/android/ims/ImsManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1129
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_0

    .line 1133
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1130
    :cond_0
    new-instance p0, Lcom/android/ims/ImsException;

    const-string v1, "ImsManager not up"

    const/16 v2, 0x6a

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1134
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist handleImsSmsSendComplete(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getMaxRetryCountOverIms()I

    move-result v2

    .line 1450
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getMaxSmsRetryCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1451
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getMaxSmsRetryCount()I

    move-result p3

    if-ge v2, p3, :cond_0

    iget p3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lt p3, v2, :cond_0

    add-int/2addr p3, v0

    .line 1453
    iput p3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1454
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 1458
    :cond_0
    iget p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1459
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1460
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSmsRetryDelayValue()I

    move-result p2

    int-to-long p2, p2

    .line 1459
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1465
    :cond_1
    iget-object p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    const-string v2, "ImsSmsDispatcher"

    if-eqz p2, :cond_2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_2

    .line 1466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested Application : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p2

    const-string v3, "sms_network_search_for_e911"

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1469
    iget p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    if-le p2, v0, :cond_3

    .line 1470
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not sent EMERGENCY_MODE_END_WITH_ECBM. mSendingEmergencySmsCount = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    goto :goto_0

    .line 1472
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result p2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result p2

    if-eq p2, v1, :cond_4

    .line 1473
    const-string p2, "EMERGENCY_MODE_END_WITH_ECBM."

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    .line 1474
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmergencyNetworkControl(I)V

    .line 1478
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->setTPMRvalueToSim()V

    const/4 p2, 0x0

    if-ne p3, v0, :cond_7

    .line 1485
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    const/16 p4, 0xed

    new-array p5, p2, [Ljava/lang/Object;

    .line 1484
    invoke-static {p3, p4, p5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 1488
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/Phone;->notifyCatSendSmsResult(I)V

    .line 1489
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 1492
    :try_start_0
    iget-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p5

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1493
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1492
    invoke-virtual {p1, p4, p5, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    throw p0

    .line 1498
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 1501
    :goto_1
    iget-object p2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_6

    .line 1503
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->putDeliveryPendingTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1504
    iget-object p0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->setPendingDeliveryIntent(Landroid/app/PendingIntent;)V

    :cond_6
    return-void

    .line 1510
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    const/16 v1, 0xee

    new-array p2, p2, [Ljava/lang/Object;

    .line 1509
    invoke-static {p3, v1, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 1512
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1513
    invoke-virtual {p2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1515
    invoke-virtual {p2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    .line 1519
    :cond_8
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const p3, 0xffff

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/Phone;->notifyCatSendSmsResult(I)V

    .line 1520
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1521
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 1523
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1524
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move v3, p4

    move v4, p5

    .line 1523
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1526
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1527
    throw p0

    :cond_9
    move-object v1, p1

    move v3, p4

    move v4, p5

    .line 1529
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1531
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    return-void
.end method

.method private blacklist handleVzwSmsWriteUicc(IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8

    .line 1297
    const-string v1, "ImsSmsDispatcher"

    .line 1299
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getSmsFormat(). Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1304
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->isSmsWriteUiccSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const-string v2, "3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1305
    const-string v0, "SmsWriteUiccSupported : VZW send msg"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x5

    :goto_1
    move v3, p3

    goto :goto_2

    :cond_0
    const/4 p3, 0x7

    goto :goto_1

    .line 1313
    :goto_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object p3

    .line 1315
    const-string p4, "pdu"

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    .line 1316
    const-string v0, "smsc"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-nez p3, :cond_1

    .line 1319
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p3}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmsc()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p3

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use default smsc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p4, :cond_2

    .line 1324
    array-length v0, p3

    array-length v2, p4

    add-int/2addr v0, v2

    new-array v6, v0, [B

    .line 1325
    array-length v0, p3

    const/4 v2, 0x0

    invoke-static {p3, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1326
    array-length p3, p3

    array-length v0, p4

    invoke-static {p4, v2, v6, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mergedPdu = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p1

    move v5, p2

    .line 1328
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    goto :goto_3

    .line 1330
    :cond_2
    const-string p0, "UICC WRITE FAIL! PDU is NULL"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method private blacklist injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V
    .locals 8

    .line 1540
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput p1, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1544
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v4, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p3, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;Landroid/telephony/SmsMessage;I)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v7, p1

    move-object v3, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;ZZI)V

    return-void
.end method

.method private blacklist isClass2Writable()Z
    .locals 1

    .line 1751
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string v0, "VZW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isEmergencySmsPossible()Z
    .locals 1

    .line 749
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLteService()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isLimitedLteService()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isLimitedLteService()Z
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 745
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isLteService()Z
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 739
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 740
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isShortMessageType0Msg(Landroid/telephony/SmsMessage;)Z
    .locals 0

    .line 1741
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isUsimDataDownload(Landroid/telephony/SmsMessage;)Z
    .locals 1

    .line 1731
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p0

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v0, :cond_1

    .line 1732
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    .line 1733
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p0

    const/16 p1, 0x7c

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$injectSms$0(Landroid/telephony/SmsMessage;II)V
    .locals 6

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS handled result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_7

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p3, v3, :cond_1

    if-eq p3, v2, :cond_0

    const/4 v4, 0x4

    if-eq p3, v4, :cond_3

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1551
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 1553
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 1552
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsReceivedViaImsToEmergencyStateTracker(Ljava/lang/String;)V

    :cond_2
    move v4, v3

    :cond_3
    :goto_0
    if-ne p3, v2, :cond_4

    .line 1572
    const-string v2, "IMS Memory full: SMS_REJECTED_ACTION"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1575
    const-string v5, "result"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p3

    const-string v5, "subId"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.RECEIVE_SMS"

    invoke-virtual {p3, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    .line 1581
    :try_start_0
    iget-object p3, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz p3, :cond_6

    .line 1582
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMessageRef = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    if-ne p3, v3, :cond_5

    .line 1585
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    .line 1588
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    return-void

    .line 1592
    :cond_6
    const-string p1, "SMS Received with a PDU that could not be parsed."

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1596
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSmsDispatcher ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onSamsungSmsReceived(ILjava/lang/String;[B)V
    .locals 14

    move-object/from16 v7, p2

    move-object/from16 v5, p3

    .line 1340
    const-string v1, " Parsing Failed "

    const-string v2, "IncomingSms: - IMS Deliver : "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1342
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1343
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0, v5, v7}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    const-string v10, "Failed to acknowledgeSms(). Error: "

    const/4 v11, 0x1

    const-string v12, "3gpp"

    const-string v13, "ImsSmsDispatcher"

    if-nez v0, :cond_1

    .line 1346
    :try_start_1
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1347
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    const-string v5, "1"

    const-string v6, "ISH_onSamsungSmsReceived_MessageNullPdu"

    iget-object v12, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    invoke-virtual {v4, v5, v6, v12}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1348
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v11}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1352
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    :goto_1
    invoke-virtual {v0, v13, v1, p0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1350
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1352
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1426
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1352
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v3, v13, v1, p0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1353
    throw v0

    .line 1357
    :cond_1
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1359
    iget-object v1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput p1, v1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1362
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_nsri_security_solution"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1364
    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendNsriRemoteControl([BI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1426
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1368
    :cond_3
    :try_start_6
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1369
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1370
    const-string v4, "IncomingSms: - IMS Deliver "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " format ="

    .line 1371
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " token ="

    .line 1372
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1374
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v4, :cond_4

    .line 1375
    const-string v4, " pdu : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1378
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v13, v2, v4}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1380
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_write_uicc_supported"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1381
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsPreference;->isSmsWriteUiccSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1382
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v1, v2, :cond_5

    .line 1383
    const-string v1, "SmsWriteUiccSupported : VZW Recieved msg"

    invoke-static {v13, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v6, 0x1

    const/4 v2, 0x3

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    .line 1386
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message class = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v2, v4, :cond_a

    .line 1388
    const-string v2, "class2 message"

    invoke-static {v13, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isClass2Writable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1391
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isUsimDataDownload(Landroid/telephony/SmsMessage;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1392
    invoke-direct {p0, p1, v5, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->Class2SmsToSim(I[BLandroid/telephony/SmsMessage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1426
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1395
    :cond_6
    :try_start_7
    const-string v0, "isUsimDataDownload for vzw"

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    .line 1397
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v2, p1, v0, v5, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownloadWithPdu(ILcom/android/internal/telephony/uicc/UsimServiceTable;[BI)V

    .line 1398
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1426
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1402
    :cond_7
    :try_start_8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isUsimDataDownload(Landroid/telephony/SmsMessage;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1403
    const-string v0, "isUsimDataDownload"

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    .line 1405
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v2, p1, v0, v5, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownloadWithPdu(ILcom/android/internal/telephony/uicc/UsimServiceTable;[BI)V

    .line 1406
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mUsimDownloadMsg:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1426
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1409
    :cond_8
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isShortMessageType0Msg(Landroid/telephony/SmsMessage;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_9

    .line 1411
    :try_start_a
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v0, v11}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 1414
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v13, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1426
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1419
    :cond_9
    :try_start_c
    invoke-direct {p0, p1, v5, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->Class2SmsToSim(I[BLandroid/telephony/SmsMessage;)V

    goto :goto_5

    .line 1422
    :cond_a
    const-string v2, "Normal SMS received"

    invoke-static {v13, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-direct {p0, p1, v7, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1426
    :goto_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    throw p0
.end method

.method private blacklist sendNsriRemoteControl([BI)V
    .locals 9

    .line 1778
    const-string v0, "Failed to close stream, exception is: "

    const-string v1, "ImsSmsDispatcher"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1779
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    .line 1781
    aget-byte v5, p1, v4

    .line 1782
    array-length v6, p1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [B

    add-int/lit8 v7, v5, 0x1

    .line 1783
    array-length v8, p1

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {p1, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1784
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    const/16 v4, 0x25

    .line 1787
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x6

    .line 1788
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1789
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1790
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1791
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send NSRI TPDU: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x1d

    invoke-virtual {p0, v5, p2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1800
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1802
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1796
    :catch_1
    :try_start_2
    const-string p0, "IOException during send NSRI Remote Control"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1799
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1800
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1802
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 1799
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1800
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1802
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :goto_3
    throw p0
.end method

.method private blacklist sendPendingEmergencySms(Z)V
    .locals 3

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPendingEmergencySms count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    const/16 v0, 0x1f

    .line 1241
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ss = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    .line 1244
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0x20

    .line 1246
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1248
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->failPendingEmergencySms()V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 1251
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->setEmergencySearchMode(I)V

    .line 1252
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1253
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 1254
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1255
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist setListeners()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    new-instance v2, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 732
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    new-instance v2, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 734
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->onSmsReady()V

    return-void
.end method

.method private blacklist writeSmsToSim(III[BI)V
    .locals 7

    const/4 v0, 0x0

    .line 1678
    aget-byte v1, p4, v0

    add-int/lit8 v2, v1, 0x1

    .line 1679
    new-array v3, v2, [B

    .line 1680
    array-length v4, p4

    sub-int/2addr v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    new-array v4, v4, [B

    .line 1681
    invoke-static {p4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1682
    array-length v6, p4

    sub-int/2addr v6, v1

    sub-int/2addr v6, v5

    invoke-static {p4, v2, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p5, :cond_0

    move-object v0, p0

    .line 1685
    iget-object p0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    move v1, p2

    move p2, p1

    iget p1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    move p5, p3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    move-object v2, p4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p4

    const/16 v3, 0x1a

    .line 1686
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, p5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p5

    .line 1685
    invoke-interface/range {p0 .. p5}, Lcom/android/internal/telephony/SemCommandsInterface;->secWriteSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    move-object v0, p0

    move v1, p2

    move-object v2, p4

    move p2, p1

    if-ne p5, v5, :cond_1

    .line 1688
    iget-object p0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 1689
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x17

    invoke-virtual {v0, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 1688
    invoke-interface {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_1
    const/4 p0, 0x2

    if-ne p5, p0, :cond_2

    .line 1691
    iget-object p0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1692
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string p1, "3gpp"

    invoke-static {p0, v2, p1}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p0

    .line 1693
    iget-object p1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p4, p4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/16 p5, 0x16

    .line 1694
    invoke-virtual {v0, p5, v1, p4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 p4, 0x3

    .line 1693
    invoke-interface {p1, p4, p2, p3, p0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1696
    :cond_2
    const-string p0, "ImsSmsDispatcher"

    const-string p1, "Invalid Write Type"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected blacklist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 0

    .line 927
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 0

    if-eqz p3, :cond_0

    .line 1766
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    .line 1769
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->calculateLength(ZLjava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0
.end method

.method public blacklist domainSelector(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    iget v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mRegisteredTransportType:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsDomainSelector;->setImgRegiAndCapability(ZIZ)V

    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsDomainSelector;->getSmsDomain(ILjava/lang/String;)I

    move-result p1

    .line 1609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DomainSelector : domain = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSelector:Lcom/android/internal/telephony/SmsDomainSelector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->convertToDomainName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImsSmsDispatcher"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1614
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1612
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    return-void
.end method

.method public blacklist fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .line 1143
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected blacklist getFormat()Ljava/lang/String;
    .locals 0

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "3gpp2"

    return-object p0

    :cond_0
    const-string p0, "3gpp"

    return-object p0
.end method

.method public blacklist getImsSmsFormat()Ljava/lang/String;
    .locals 2

    .line 1285
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSmsFormat()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get sms format. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsSmsDispatcher"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const-string p0, "unknown"

    return-object p0
.end method

.method public blacklist getMaxRetryCountOverIms()I
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_max_retries_zero"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_max_retries_one"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result p0

    .line 849
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 854
    const-string v0, "imssms.sms_max_retry_over_ims_count_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    .line 860
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry Count Over Ims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist getMaxSmsRetryCount()I
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_max_retries_zero"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v2, "sms_max_retries_one"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result p0

    .line 815
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 819
    const-string v0, "imssms.sms_max_retry_count_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    .line 824
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public blacklist getSmsListener()Landroid/telephony/ims/aidl/IImsSmsListener;
    .locals 0

    .line 1155
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mImsSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object p0
.end method

.method public blacklist getSmsRetryDelayValue()I
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result p0

    .line 874
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 878
    const-string v0, "imssms.sms_over_ims_send_retry_delay_millis_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d0

    .line 883
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 906
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 921
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 899
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p8}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .locals 0

    .line 1438
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result p0

    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/util/SMSDispatcherUtil;->getSubmitPduForAutoLogin(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 478
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_16

    const/16 v4, 0xb

    if-eq v2, v4, :cond_15

    const/16 v4, 0x1d

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "ImsSmsDispatcher"

    if-eq v2, v4, :cond_12

    const/16 v4, 0x1f

    const/4 v8, 0x0

    if-eq v2, v4, :cond_11

    const/16 v4, 0x20

    if-eq v2, v4, :cond_10

    const/16 v4, 0xff

    const/16 v9, 0x19

    const-string v10, "3gpp"

    packed-switch v2, :pswitch_data_0

    .line 666
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 489
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    if-nez v1, :cond_0

    .line 490
    const-string v1, "Radio state is OFF, mPrevVolteRegi = false"

    invoke-static {v7, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iput-boolean v8, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RADIO_OFF_OR_NOT_AVAILABLE. sendPendingEmergencySms count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->failPendingEmergencySms()V

    return-void

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v1

    if-eq v1, v3, :cond_14

    .line 497
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmergencyNetworkControl(I)V

    return-void

    .line 636
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 637
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 640
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 642
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v10}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 644
    const-string v4, "EVENT_SEC_WRITE_SMS_COMPLETE"

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 646
    const-string v2, "Successfully write replace message to UICC"

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iput v6, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    goto :goto_0

    .line 649
    :cond_2
    const-string v4, "Failed to write replace message to UICC"

    invoke-static {v7, v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    iput v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    .line 652
    :goto_0
    invoke-direct {p0, v1, v10, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V

    return-void

    .line 573
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 574
    iget v3, p1, Landroid/os/Message;->arg1:I

    move v5, v3

    .line 575
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 576
    iget-object v1, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 578
    const-string v8, "EVENT_READ_SMS_COMPLETE"

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_b

    .line 580
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;

    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCurSimIndex = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v8, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a

    .line 584
    sget-boolean v8, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v8, :cond_3

    .line 585
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read SIM Msg: index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pdu = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " smsc = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->smsc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_3
    iget v11, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    iget v12, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    if-gt v11, v12, :cond_6

    iget-object v11, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 594
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    iget v8, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    if-ne v2, v8, :cond_5

    .line 595
    iput v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    .line 596
    const-string v2, "last index! write replace msg 1"

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move v2, v5

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    return-void

    .line 599
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current index is empty. read next, mCurSimIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v9, v5, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    return-void

    .line 605
    :cond_6
    iget-object v11, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_14

    .line 606
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->smsc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;->pdu:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v10}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 609
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11, v10}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    if-nez v8, :cond_7

    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readMsg: isReplace = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " addr = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " pid = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 611
    invoke-static {v7, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_7
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 615
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 616
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v8

    if-ne v2, v8, :cond_8

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match! write replace msg, mCurSimIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move v2, v5

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    return-void

    :cond_8
    move v2, v5

    .line 620
    iget v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    iget v8, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    if-ne v5, v8, :cond_9

    .line 621
    iput v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    .line 622
    const-string v4, "last index! write replace msg 2"

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    return-void

    .line 625
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not match! read next msg, mCurSimIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v9, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    return-void

    :cond_a
    move v2, v5

    .line 589
    const-string v4, "Read SIM Msg is Null"

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v9, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    return-void

    :cond_b
    move v2, v5

    .line 631
    const-string v4, "Fail to read sms"

    invoke-static {v7, v4, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v9, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    return-void

    .line 547
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 548
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 549
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 550
    iget-object v5, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 551
    const-string v10, "EVENT_GET_STORED_MESSAGE_COUNT_COMPLETE"

    invoke-static {v7, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_d

    .line 553
    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;

    .line 554
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "token = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " usedCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->usedCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " totalCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->totalCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iput v8, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    .line 556
    iget v8, v2, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->totalCount:I

    iput v8, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimMaxCount:I

    .line 557
    iget v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;->usedCount:I

    iput v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSimUsedCount:I

    if-nez v2, :cond_c

    .line 559
    iput v4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    .line 560
    const-string v2, "SIM msg is empty."

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    move v2, v3

    move v3, v1

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->writeSmsToSim(III[BI)V

    return-void

    :cond_c
    move v2, v3

    move v3, v1

    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput v6, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mCurSimIndex:I

    invoke-virtual {p0, v9, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->oemReadSmsFromSim(ILandroid/os/Message;)V

    return-void

    .line 567
    :cond_d
    const-string v0, "Fail to stored msg count"

    invoke-static {v7, v0, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 538
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 539
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_e

    .line 540
    const-string v0, "Successfully write SMS to UICC"

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_e
    const-string v1, "Failed to write SMS to UICC"

    invoke-static {v7, v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 521
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 522
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 525
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 527
    const-string v4, "EVENT_CLASS2_MSG_WRITE_COMPLETE"

    invoke-static {v7, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 529
    const-string v2, "Successfully write class2 message to UICC"

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iput v6, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    goto :goto_1

    .line 532
    :cond_f
    const-string v4, "Failed to write class2 message to UICC"

    invoke-static {v7, v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    iput v5, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mHandleStatus:I

    .line 535
    :goto_1
    invoke-direct {p0, v1, v10, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->injectSms(ILjava/lang/String;Landroid/telephony/SmsMessage;)V

    return-void

    .line 661
    :cond_10
    const-string v1, "EVENT_EMERGENCY_DELAYED_MSG_RETRY"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendPendingEmergencySms(Z)V

    return-void

    .line 656
    :cond_11
    const-string v1, "EVENT_EMERGENCY_DELAYED_MSG"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 657
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendPendingEmergencySms(Z)V

    return-void

    .line 501
    :cond_12
    const-string v2, "EVENT_SEND_NSRI_DONE"

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 503
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 504
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 506
    :try_start_0
    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_13

    .line 507
    const-string v2, "Successfully send NSRI remote control"

    invoke-static {v7, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v6}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    .line 511
    :cond_13
    const-string v4, "Failed to send NSRI remote control"

    invoke-static {v7, v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 516
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    .line 484
    :cond_15
    const-string v1, "SMMA Notification retry.."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->onMemoryAvailable()V

    return-void

    .line 480
    :cond_16
    const-string v2, "SMS retry.."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 481
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    .line 789
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isAvailable(Ljava/lang/String;)Z
    .locals 5

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1624
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->getDcnAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1625
    const-string p0, "ImsSmsDispatcher"

    const-string p1, "DCN should be sent over 1x, isAvailable = false"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1630
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->domainSelector(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1632
    :try_start_2
    const-string v2, "ImsSmsDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDomainSelector failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :goto_0
    const-string p1, "ImsSmsDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: up= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cap= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", smsOverImsOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    .line 1638
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected blacklist isCdmaMo()Z
    .locals 0

    .line 1149
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencySmsSupport(Ljava/lang/String;)Z
    .locals 8

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ImsSmsDispatcher"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not emergency number"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    return v2

    .line 760
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "carrier_config"

    .line 763
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_1

    .line 765
    const-string p1, "configManager is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 768
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 770
    const-string p1, "PersistableBundle is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 773
    :cond_2
    :try_start_2
    const-string v5, "support_emergency_sms_over_ims_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 775
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsPossible()Z

    move-result v5

    .line 776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencySmsSupport emergencySmsCarrierSupport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " destAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mIsImsServiceUp: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " lteOrLimitedLte: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 781
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsImsServiceUp:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 783
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 784
    throw p0
.end method

.method public blacklist isImsforNonLegacyImsSms()Z
    .locals 2

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImsforNonLegacyImsSms: reg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", smsOverImsOnly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsRegistered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsCapable:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mIsSmsOverImsOnly:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPreVolteRegi()Z
    .locals 0

    .line 1670
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    return p0
.end method

.method public blacklist onMemoryAvailable()V
    .locals 5

    .line 934
    const-string v0, "onMemoryAvailable "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 937
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMemoryAvailable: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getSmscAddress()Ljava/lang/String;

    move-result-object v1

    .line 941
    const-string v2, "ImsSmsDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ims/ImsManager;->setSmsc(Ljava/lang/String;)V

    .line 944
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsManager;->onMemoryAvailable(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMemoryAvailable failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected blacklist sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1856
    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendDatawithOrigPort is not supported in ImsSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IZJ)V"
        }
    .end annotation

    .line 1825
    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendMultipartText is not supported in ImsSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIIIZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "IZIIIZJ)V"
        }
    .end annotation

    .line 1847
    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendMultipartTextwithOptions is not supported in ImsSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 956
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 958
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms:  mRetryCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMessageRef="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SS="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 961
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 965
    iput-boolean v5, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 967
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 969
    iget-object v6, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    .line 970
    const-string v6, "destAddr"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 972
    iget-object v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v9

    const-string v10, "sms_network_search_for_e911"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_3

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 973
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v9

    if-ne v9, v5, :cond_1

    .line 974
    iget v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    add-int/2addr v9, v5

    iput v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSendingEmergencySmsCount:I

    goto :goto_0

    .line 976
    :cond_1
    const-string v0, "pending emergency sms"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logd(Ljava/lang/String;)V

    .line 977
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mEmergencyPendingQueue:Ljava/util/Queue;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 978
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getEmergencySearchMode()I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 979
    :cond_2
    const-string v0, "emergency sms network search start"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->logi(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmergencyNetworkControl(I)V

    const/16 v0, 0x1f

    .line 981
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 989
    :cond_3
    :goto_0
    invoke-virtual {v1, v7, v5}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 991
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 992
    invoke-virtual {v0, v10}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 994
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 995
    const-string v3, "LastSentMsg"

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 996
    iget-object v11, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v12, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 997
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 996
    invoke-virtual/range {v11 .. v18}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 999
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void

    .line 1006
    :cond_5
    const-string v7, "pdu"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, [B

    .line 1007
    const-string v7, "smsc"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 1008
    iget v10, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v11, 0x0

    if-lez v10, :cond_6

    move v12, v5

    goto :goto_2

    :cond_6
    move v12, v11

    .line 1010
    :goto_2
    iget-object v10, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 1011
    const-string v14, "3gpp"

    const-string v15, "3gpp2"

    if-nez v10, :cond_8

    .line 1012
    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isCdmaMo()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v15

    goto :goto_3

    :cond_7
    move-object v10, v14

    .line 1016
    :cond_8
    :goto_3
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v12, :cond_9

    .line 1020
    aget-byte v14, v13, v11

    move/from16 v16, v11

    and-int/lit8 v11, v14, 0x1

    if-ne v11, v5, :cond_a

    or-int/lit8 v11, v14, 0x4

    int-to-byte v11, v11

    .line 1021
    aput-byte v11, v13, v16

    .line 1022
    iget v11, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    int-to-byte v11, v11

    aput-byte v11, v13, v5

    goto :goto_4

    :cond_9
    move/from16 v16, v11

    .line 1026
    :cond_a
    :goto_4
    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .line 1028
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v11

    if-nez v11, :cond_c

    if-eqz v14, :cond_c

    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1029
    invoke-interface {v11}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v11

    const/16 v5, 0x14

    if-eq v11, v5, :cond_c

    .line 1030
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v5

    iget-object v11, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1031
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const v3, 0xffff

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->notifyCatSendSmsResult(I)V

    .line 1032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1034
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1035
    iget-object v3, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v4

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1036
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    .line 1035
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IIILjava/lang/String;)V

    move/from16 v4, v16

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1038
    :cond_b
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v3

    move/from16 v4, v16

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    :goto_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1043
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->notifySmsSentFailedToEmergencyStateTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V

    return-void

    .line 1041
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    throw v0

    .line 1047
    :cond_c
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 1049
    const-string v6, "(?<=.{2}).(?=.{2})"

    const-string v11, ""

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1053
    :cond_d
    const-string v6, "ImsSmsDispatcher"

    if-nez v9, :cond_e

    .line 1054
    iget-object v9, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SmsDispatchersController;->getSmsc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v9

    .line 1055
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v10

    .line 1056
    const-string v10, "use default smsc"

    invoke-static {v6, v10}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    move-object/from16 v18, v10

    .line 1059
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 1062
    :goto_7
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :try_start_2
    invoke-direct {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v0

    iget v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v0, v8, v7}, Lcom/android/ims/ImsManager;->setRetryCount(II)V

    .line 1066
    invoke-direct {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v7

    iget v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v10, v18

    :try_start_3
    invoke-virtual/range {v7 .. v13}, Lcom/android/ims/ImsManager;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v18, v10

    .line 1068
    :try_start_4
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v17

    iget-wide v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    const/16 v19, 0x1

    move-object/from16 v16, v0

    move-wide/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;IJ)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v18, v10

    .line 1071
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendSms failed. Falling back to PSTN. Error: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->loge(Ljava/lang/String;)V

    .line 1072
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1074
    iget-object v0, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v17

    const/16 v19, 0x4

    iget-wide v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move-object/from16 v16, v0

    move-wide/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsServiceSendSms(ILjava/lang/String;IJ)V

    move-object/from16 v10, v18

    .line 1076
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v22

    .line 1078
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    iget-wide v9, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1082
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v29

    .line 1083
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v30

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1084
    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v32

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1085
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v33

    .line 1086
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v34

    const/16 v23, 0x1

    const/16 v25, 0x1

    const/16 v26, 0xf

    move-wide/from16 v27, v9

    .line 1076
    invoke-virtual/range {v22 .. v34}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIJZJZZI)V

    .line 1087
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_f

    .line 1088
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1090
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v7, 0xf

    const/4 v9, 0x1

    .line 1092
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V

    .line 1101
    :cond_f
    :goto_9
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1103
    iget-object v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v7, :cond_10

    .line 1104
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    .line 1106
    :goto_a
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1107
    const-string v10, "sendSms: - IMS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " isIms()="

    .line 1108
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v10, " mno="

    .line 1109
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " token="

    .line 1110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, " mRetryCount="

    .line 1111
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, " mImsRetry="

    .line 1112
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1113
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1114
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " smsc="

    .line 1115
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " da="

    .line 1116
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " packageName="

    .line 1117
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1119
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_11

    .line 1120
    const-string v2, " pdu : "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1123
    :cond_11
    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v6, v2, v1}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected blacklist sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IJ)V
    .locals 0

    .line 1814
    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendText is not supported in ImsSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIIIIJ)V
    .locals 0

    .line 1835
    const-string p0, "ImsSmsDispatcher"

    const-string p1, "sendTextwithOptions is not supported in ImsSmsDispatcher"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setPreVolte(Z)V
    .locals 2

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreVolte: isVoiceOverCellularImsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWifiCallingEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1658
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1660
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    .line 1662
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreVolte: mPrevVolteRegi = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPrevVolteRegi:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist shouldBlockSmsForEcbm()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
