.class public Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
.super Ljava/lang/Object;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist REGISTER_IMS_CHANGED_DELAY:J = 0x3a98L


# instance fields
.field private final blacklist mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private final blacklist mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

.field private final blacklist mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private blacklist mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

.field private blacklist mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

.field private blacklist mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

.field private volatile blacklist mInitialized:Z

.field private volatile blacklist mIsDestroyed:Z

.field private volatile blacklist mIsImsCallbackRegistered:Z

.field private volatile blacklist mIsRcsConnected:Z

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private final blacklist mLock:Ljava/lang/Object;

.field public final blacklist mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field public final blacklist mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mMobileDataObserver:Landroid/database/ContentObserver;

.field public final blacklist mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private blacklist mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

.field private blacklist mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

.field public final blacklist mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field public final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSimInfoContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mSubId:I

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method public static synthetic blacklist $r8$lambda$-QM9FQcRx9mdczqj0BGCp4nWonY(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->lambda$new$0(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Ao2w5ZgvnYQqRxpe2VftJX9Fpjk(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)Landroid/telephony/ims/ImsRcsManager;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->lambda$new$1(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsMmTelManager(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDestroyed(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImsCallbackRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)I
    .locals 0

    iget p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUceStatsWriter(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/UceStatsWriter;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsMmtelRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsMmtelRegistered(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsMmtelUnregistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsMmtelUnregistered()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsRcsRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsRcsUnregistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsRcsUnregistered()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMmTelSubscriberAssociatedUriChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;[Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMmtelCapabilitiesStatusChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmtelCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMobileDataChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMobileDataChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleProvisioningChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleProvisioningChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishThrottleChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handlePublishThrottleChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsSubscriberAssociatedUriChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;[Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTtyPreferredModeChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleTtyPreferredModeChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVtSettingChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleVtSettingChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogw(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerImsProvisionCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceCapListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "info"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p4, "callback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p5, "uceStatsWriter"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    .line 197
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 200
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 203
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 207
    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    .line 387
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 501
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$5;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$5;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 532
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 547
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$7;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$7;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 213
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    .line 214
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    .line 217
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 218
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 220
    iput-object p5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 222
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceCapListenerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 223
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 224
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    .line 225
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    .line 226
    return-void
.end method

.method private blacklist getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;
    .locals 4
    .param p1, "subId"    # I

    .line 444
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 446
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 447
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsMmTelManager error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 449
    return-object v0
.end method

.method private blacklist getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;
    .locals 4
    .param p1, "subId"    # I

    .line 455
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 457
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 458
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRcsManager error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 460
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .locals 2

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    return-object v0
.end method

.method private blacklist getMobileDataObserver()Landroid/database/ContentObserver;
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 405
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$2;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    monitor-exit v0

    return-object v1

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getSimInfoContentObserver()Landroid/database/ContentObserver;
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 421
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    monitor-exit v0

    return-object v1

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleImsMmtelRegistered(I)V
    .locals 1
    .param p1, "imsTransportType"    # I

    .line 599
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsMmtelRegistered(I)V

    .line 600
    return-void
.end method

.method private blacklist handleImsMmtelUnregistered()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsMmtelUnregistered()Z

    move-result v0

    .line 608
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    .line 611
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendImsUnregisteredMessage()V

    .line 614
    :cond_0
    return-void
.end method

.method private blacklist handleImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 2
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 648
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 651
    :cond_0
    return-void
.end method

.method private blacklist handleImsRcsUnregistered()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRcsUnregistered()Z

    move-result v0

    .line 659
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    .line 661
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendImsUnregisteredMessage()V

    .line 664
    :cond_0
    return-void
.end method

.method private blacklist handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "regiChanged"    # Z

    .line 620
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getMmtelAssociatedUri()Landroid/net/Uri;

    move-result-object v0

    .line 621
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMmTelAssociatedUri([Landroid/net/Uri;)V

    .line 622
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getMmtelAssociatedUri()Landroid/net/Uri;

    move-result-object v1

    .line 624
    .local v1, "currentUri":Landroid/net/Uri;
    if-nez p2, :cond_1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 626
    .local v2, "hasChanged":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMmTelSubscriberAssociatedUriChanged: hasChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 630
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 633
    :cond_2
    return-void
.end method

.method private blacklist handleMmtelCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 3
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 636
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMmtelCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v0

    .line 637
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMTel capabilities status changed: isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 638
    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 642
    :cond_0
    return-void
.end method

.method private blacklist handleMobileDataChanged(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 576
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMobileData(Z)Z

    move-result v0

    .line 577
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 578
    if-eqz v0, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 582
    :cond_0
    return-void
.end method

.method private blacklist handleProvisioningChanged()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 690
    return-void
.end method

.method private blacklist handlePublishThrottleChanged(I)V
    .locals 1
    .param p1, "value"    # I

    .line 696
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->updatePublishThrottle(I)V

    .line 697
    return-void
.end method

.method private blacklist handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "regiChanged"    # Z

    .line 670
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getRcsAssociatedUri()Landroid/net/Uri;

    move-result-object v0

    .line 671
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRcsAssociatedUri([Landroid/net/Uri;)V

    .line 672
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getRcsAssociatedUri()Landroid/net/Uri;

    move-result-object v1

    .line 674
    .local v1, "currentUri":Landroid/net/Uri;
    if-nez p2, :cond_1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 676
    .local v2, "hasChanged":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRcsSubscriberAssociatedUriChanged: hasChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 679
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 680
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 682
    :cond_2
    return-void
.end method

.method private blacklist handleTtyPreferredModeChanged(I)V
    .locals 3
    .param p1, "preferredMode"    # I

    .line 567
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateTtyPreferredMode(I)Z

    move-result v0

    .line 568
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY preferred mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 569
    if-eqz v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 573
    :cond_0
    return-void
.end method

.method private blacklist handleVtSettingChanged(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 585
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateVtSetting(Z)Z

    move-result v0

    .line 586
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VT setting changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 587
    if-eqz v0, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 591
    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$new$0(I)Landroid/telephony/ims/ImsMmTelManager;
    .locals 1
    .param p1, "subId"    # I

    .line 197
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$1(I)Landroid/telephony/ims/ImsRcsManager;
    .locals 1
    .param p1, "subId"    # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$2(I)Landroid/telephony/ims/ProvisioningManager;
    .locals 1
    .param p0, "subId"    # I

    .line 204
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 729
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[D] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 734
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[I] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 739
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method private blacklist registerImsProvisionCallback()V
    .locals 4

    .line 311
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "registerImsProvisionCallback: already registered."

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 313
    return-void

    .line 316
    :cond_0
    const-string v0, "registerImsProvisionCallback"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 322
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerMmTelCapabilityCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsRcsManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ProvisioningManager;->registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/telephony/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImsProvisionCallback error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    .line 344
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendRegisterImsContentChangedMessage(J)V

    .line 348
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist registerReceivers()V
    .locals 7

    .line 282
    const-string v0, "registerReceivers"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    .line 284
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 291
    nop

    .line 292
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 293
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object v2

    .line 291
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 295
    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 296
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getSimInfoContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    .line 295
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    :cond_0
    return-void
.end method

.method private blacklist unregisterImsProvisionCallback()V
    .locals 3

    .line 351
    const-string v0, "unregisterImsProvisionCallback"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister MMTel registration error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 361
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->unregisterMmTelCapabilityCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    goto :goto_1

    .line 362
    :catch_1
    move-exception v0

    .line 363
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister MMTel capability error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 368
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    if-eqz v0, :cond_1

    .line 370
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 373
    goto :goto_2

    .line 371
    :catch_2
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister rcs capability error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 378
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ProvisioningManager;->unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 381
    goto :goto_3

    .line 379
    :catch_3
    move-exception v0

    .line 380
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister provisioning callback error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 384
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    .line 385
    return-void
.end method

.method private blacklist unregisterReceivers()V
    .locals 2

    .line 301
    const-string v0, "unregisterReceivers"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getSimInfoContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 751
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 752
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceCapListener[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 755
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->dump(Ljava/io/PrintWriter;)V

    .line 757
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 759
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 760
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 761
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 764
    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    return-object v0
.end method

.method public blacklist initialize()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "initialize: This instance is already destroyed"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 235
    monitor-exit v0

    return-void

    .line 237
    :cond_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 239
    :cond_1
    const-string v1, "initialize"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 241
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    .line 242
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;->getProvisioningManager(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    .line 243
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerReceivers()V

    .line 244
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerImsProvisionCallback()V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 247
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onDestroy()V
    .locals 2

    .line 266
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    .line 268
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 270
    :cond_0
    const-string v1, "turnOffListener"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 272
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterReceivers()V

    .line 273
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    .line 274
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRcsConnected()V
    .locals 3

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    .line 253
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendRegisterImsContentChangedMessage(J)V

    .line 254
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .locals 1

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    .line 259
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendUnregisterImsCallbackMessage()V

    .line 260
    return-void
.end method

.method public blacklist removeRequestPublishMessage()V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeRequestPublishMessage()V

    .line 701
    return-void
.end method

.method public blacklist setImsCallbackRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .line 725
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    .line 726
    return-void
.end method

.method public blacklist setImsMmTelManagerFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 710
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 711
    return-void
.end method

.method public blacklist setImsRcsManagerFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 715
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 716
    return-void
.end method

.method public blacklist setProvisioningMgrFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 720
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 721
    return-void
.end method
