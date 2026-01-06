.class public Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
.super Ljava/lang/Object;
.source "PublishControllerImpl.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/publish/PublishController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCapabilityType:I

.field private final blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentPublishState:I

.field private blacklist mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

.field private blacklist mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

.field private blacklist mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

.field private volatile blacklist mIsDestroyedFlag:Z

.field public blacklist mLastPublishState:I

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private blacklist mPidfXml:Ljava/lang/String;

.field private final blacklist mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private blacklist mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

.field private blacklist mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

.field private blacklist mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

.field private blacklist mPublishStateCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPublishStateLock:Ljava/lang/Object;

.field private blacklist mPublishStateUpdatedTime:Ljava/time/Instant;

.field private final blacklist mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

.field private volatile blacklist mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

.field private volatile blacklist mReceivePublishFromService:Z

.field private final blacklist mSubId:I

.field private final blacklist mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method public static synthetic blacklist $r8$lambda$GD9kM2MOV36qBUPtPkNuxXGqiso(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->lambda$handlePublishStateChangedMessage$2(Landroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUceCtrlCallback(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCarrierConfigChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleCarrierConfigChangedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroyedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleDestroyedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNotifyCurrentPublishStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishSentMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishSentMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishStateChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishUpdatedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/SipDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishUpdatedMessage(Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsCapabilitiesChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRcsCapabilitiesChangedMessage(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsConnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Lcom/android/ims/RcsFeatureManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRcsConnectedMessage(Lcom/android/ims/RcsFeatureManager;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsDisconnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRcsDisconnectedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestCanceledMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRequestCanceledMessage(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestPublishMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRequestPublishMessage(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleResetDeviceStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleResetDeviceStateMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleUnpublishedMessage(ILjava/time/Instant;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPresencePublishEnabled(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->isPresencePublishEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublishController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    .line 114
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    .line 132
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    .line 137
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 384
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 156
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    .line 157
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    .line 158
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 159
    invoke-static {}, Lcom/android/ims/rcs/uce/UceStatsWriter;->getInstance()Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 160
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initPublishController(Landroid/os/Looper;)V

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "deviceCapFactory"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;
    .param p6, "processorFactory"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;
    .param p7, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    .line 114
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    .line 132
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    .line 137
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 384
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 168
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    .line 169
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    .line 170
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 171
    iput-object p5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    .line 172
    iput-object p6, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    .line 173
    iput-object p7, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 174
    invoke-direct {p0, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initPublishController(Landroid/os/Looper;)V

    .line 175
    return-void
.end method

.method private blacklist clearPublishStateCallbacks()V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    const-string v1, "clearPublishStateCallbacks"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 351
    .local v1, "lastIndex":I
    move v2, v1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    .line 352
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 353
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 354
    .local v3, "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 351
    nop

    .end local v3    # "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 356
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_0
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getCarrierServiceDescriptionFeatureTagMap()[Ljava/lang/String;
    .locals 3

    .line 1020
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1021
    .local v0, "manager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    .line 1022
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    :goto_0
    nop

    .line 1023
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "ims.publish_service_desc_feature_tag_map_override_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getInitialPublishState(I)I
    .locals 1
    .param p1, "capabilityType"    # I

    .line 205
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 206
    return v0

    .line 207
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 208
    return v0

    .line 210
    :cond_1
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .locals 2

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    return-object v0
.end method

.method private blacklist getPublishAttributes(ILandroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes;
    .locals 2
    .param p1, "mCurrentPublishState"    # I
    .param p2, "details"    # Landroid/telephony/ims/SipDetails;

    .line 1081
    const/4 v0, 0x0

    .line 1082
    .local v0, "tuples":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactPresenceTuple;>;"
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLastSuccessfulPresenceTuplesWithoutContactUri()Ljava/util/List;

    move-result-object v0

    .line 1085
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1086
    new-instance v1, Landroid/telephony/ims/PublishAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/telephony/ims/PublishAttributes$Builder;-><init>(I)V

    invoke-virtual {v1, p2}, Landroid/telephony/ims/PublishAttributes$Builder;->setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes$Builder;

    move-result-object v1

    .line 1087
    invoke-virtual {v1, v0}, Landroid/telephony/ims/PublishAttributes$Builder;->setPresenceTuples(Ljava/util/List;)Landroid/telephony/ims/PublishAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/PublishAttributes$Builder;->build()Landroid/telephony/ims/PublishAttributes;

    move-result-object v1

    .line 1086
    return-object v1

    .line 1089
    :cond_1
    new-instance v1, Landroid/telephony/ims/PublishAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/telephony/ims/PublishAttributes$Builder;-><init>(I)V

    invoke-virtual {v1, p2}, Landroid/telephony/ims/PublishAttributes$Builder;->setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/PublishAttributes$Builder;->build()Landroid/telephony/ims/PublishAttributes;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleCarrierConfigChangedMessage()V
    .locals 3

    .line 976
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 978
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->updateCapabilityTypeAndPublishStateIfNeeded()V

    .line 980
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getCarrierServiceDescriptionFeatureTagMap()[Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateCapabilityRegistrationTrackerMap([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 985
    :cond_1
    return-void
.end method

.method private blacklist handleDestroyedMessage()V
    .locals 2

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    .line 936
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updatePresenceCapable(Z)V

    .line 937
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->unregisterRcsAvailabilityChanged()V

    .line 938
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->onDestroy()V

    .line 939
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->onDestroy()V

    .line 940
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onDestroy()V

    .line 941
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->clearPublishStateCallbacks()V

    .line 943
    monitor-exit v0

    .line 944
    return-void

    .line 943
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 1094
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1096
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getUcePublishState(Z)I

    move-result v0

    .line 1097
    .local v0, "publishState":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getPublishAttributes(ILandroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    .end local v0    # "publishState":I
    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCurrentPublishStateUpdateMessage exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 1101
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1094
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist handlePublishSentMessage()V
    .locals 10

    .line 1169
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1172
    .local v1, "lastIndex":I
    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1173
    .local v3, "tempPublishState":I
    move v4, v1

    .local v4, "index":I
    :goto_0
    if-ltz v4, :cond_4

    .line 1174
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 1175
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    .local v5, "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    const/4 v6, 0x0

    .line 1178
    .local v6, "isSupportPublishingState":Z
    :try_start_1
    iget-object v7, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v7

    .line 1179
    .local v7, "object":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 1180
    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v8

    .line 1184
    .end local v7    # "object":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 1182
    :catch_0
    move-exception v7

    .line 1186
    :goto_1
    const/4 v7, 0x7

    :try_start_2
    iput v7, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1187
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 1188
    if-eqz v5, :cond_3

    .line 1189
    iget v8, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-direct {p0, v8, v7}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getPublishAttributes(ILandroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V

    goto :goto_2

    .line 1197
    :cond_2
    if-eq v3, v2, :cond_3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_3

    .line 1201
    iput v8, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 1202
    if-eqz v5, :cond_3

    .line 1203
    iget v8, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    invoke-direct {p0, v8, v7}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getPublishAttributes(ILandroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1210
    :cond_3
    :goto_2
    goto :goto_3

    .line 1208
    :catch_1
    move-exception v7

    .line 1209
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notify publish state changed error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 1173
    .end local v5    # "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .end local v6    # "isSupportPublishingState":Z
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1212
    .end local v1    # "lastIndex":I
    .end local v3    # "tempPublishState":I
    .end local v4    # "index":I
    :cond_4
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private blacklist handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .locals 3
    .param p1, "newPublishState"    # I
    .param p2, "updatedTimestamp"    # Ljava/time/Instant;
    .param p3, "pidfXml"    # Ljava/lang/String;
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 1045
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1048
    :cond_0
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    invoke-virtual {p2, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish state changes from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1056
    iput-object p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    .line 1057
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    .line 1059
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    if-ne v1, p1, :cond_2

    monitor-exit v0

    return-void

    .line 1060
    :cond_2
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 1061
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1062
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUnPublish(I)V

    .line 1068
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify publish state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/SipDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1076
    const-string v0, "Notify publish state changed: completed"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1077
    return-void

    .line 1049
    :cond_4
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePublishStateChangedMessage: updatedTimestamp is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", publishState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1052
    monitor-exit v0

    return-void

    .line 1062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handlePublishUpdatedMessage(Landroid/telephony/ims/SipDetails;)V
    .locals 2
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 1216
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 1217
    :cond_0
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLastPidfXml()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;-><init>(Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 1219
    .local v0, "updatedPublish":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->publishUpdated(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 1220
    return-void
.end method

.method private blacklist handleRcsCapabilitiesChangedMessage(I)V
    .locals 3
    .param p1, "capabilities"    # I

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRcsCapabilitiesChangedMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1029
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 1030
    :cond_0
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 1031
    .local v0, "RcsImsCapabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 1032
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v2

    .line 1031
    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updatePresenceCapable(Z)V

    .line 1034
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 1037
    :cond_1
    return-void
.end method

.method private blacklist handleRcsConnectedMessage(Lcom/android/ims/RcsFeatureManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 906
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 907
    :cond_0
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 908
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->onRcsConnected()V

    .line 909
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    .line 910
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->registerRcsAvailabilityChanged(Lcom/android/ims/RcsFeatureManager;)V

    .line 911
    return-void
.end method

.method private blacklist handleRcsDisconnectedMessage()V
    .locals 3

    .line 917
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 918
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 919
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updatePresenceCapable(Z)V

    .line 920
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->onRcsDisconnected()V

    .line 921
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onRcsDisconnected()V

    .line 925
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->isPresencePublishEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    nop

    .line 927
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    .line 926
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1, v0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 929
    :cond_1
    return-void
.end method

.method private blacklist handleRequestCanceledMessage(J)V
    .locals 1
    .param p1, "taskId"    # J

    .line 1151
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->cancelPublishRequest(J)V

    .line 1153
    return-void
.end method

.method private blacklist handleRequestPublishMessage(I)V
    .locals 5
    .param p1, "type"    # I

    .line 1104
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequestPublishMessage: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1112
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mReceivePublishFromService:Z

    if-nez v1, :cond_1

    .line 1113
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mReceivePublishFromService:Z

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 1117
    .local v0, "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isPublishRequestBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1118
    :cond_2
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->resetDeviceState()V

    .line 1123
    .end local v0    # "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    :cond_3
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->isPublishRequestAllowed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequestPublishMessage: SKIP. The request is not allowed. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setPendingRequest(I)V

    .line 1126
    return-void

    .line 1130
    :cond_4
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->updatePublishingAllowedTime(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getPublishingDelayTime()Ljava/util/Optional;

    move-result-object v0

    .line 1136
    .local v0, "delay":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestPublishMessage: SKIP. The delay is empty. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setPendingRequest(I)V

    .line 1139
    return-void

    .line 1142
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestPublishMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 1144
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->doPublish(I)V

    goto :goto_0

    .line 1146
    :cond_6
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(IJ)V

    .line 1148
    :goto_0
    return-void
.end method

.method private blacklist handleResetDeviceStateMessage()V
    .locals 1

    .line 1156
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->resetDeviceState()V

    .line 1158
    return-void
.end method

.method private blacklist handleUnpublishedMessage(ILjava/time/Instant;)V
    .locals 1
    .param p1, "newPublishState"    # I
    .param p2, "updatedTimestamp"    # Ljava/time/Instant;

    .line 1162
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->resetState()V

    .line 1164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 1166
    return-void
.end method

.method private blacklist initDeviceCapabilitiesListener()V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;->createDeviceCapListener(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    .line 222
    return-void
.end method

.method private blacklist initPublishController(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 178
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getCapabilityType(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 179
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getInitialPublishState(I)I

    move-result v0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 180
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 181
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 182
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    .line 184
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getCarrierServiceDescriptionFeatureTagMap()[Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "serviceDescFeatureTagMap":[Ljava/lang/String;
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-direct {v1, v2, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;-><init>(I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 187
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initPublishProcessor()V

    .line 188
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initDeviceCapabilitiesListener()V

    .line 191
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->initialize()V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPublishController completed: capabilityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", publishState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private blacklist initPublishProcessor()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;->createPublishProcessor(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    .line 217
    return-void
.end method

.method private blacklist isPresencePublishEnabled()Z
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isPublishRequestAllowed()Z
    .locals 4

    .line 863
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 864
    const-string v0, "isPublishRequestAllowed: capability presence uce is not enabled."

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 865
    return v1

    .line 869
    :cond_0
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mReceivePublishFromService:Z

    if-nez v0, :cond_1

    .line 870
    const-string v0, "isPublishRequestAllowed: The first PUBLISH request from the server has not been received."

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 872
    return v1

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 877
    .local v0, "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isPublishRequestBlocked()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 885
    :cond_2
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->isPublishingNow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 886
    const-string v2, "isPublishRequestAllowed: There is already a publish request running now."

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 887
    return v1

    .line 889
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 878
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPublishRequestAllowed: The device state is disallowed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 879
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 880
    return v1
.end method

.method private synthetic blacklist lambda$handlePublishStateChangedMessage$2(Landroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .locals 3
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 1071
    :try_start_0
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-direct {p0, v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getPublishAttributes(ILandroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    goto :goto_0

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify publish state changed error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 1075
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "capInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 128
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "capInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p4, "uceStatsWriter"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 134
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "subId":I
    .end local p2    # "capInfo":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p3    # "callback":Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .end local p4    # "uceStatsWriter":Lcom/android/ims/rcs/uce/UceStatsWriter;
    .local v1, "context":Landroid/content/Context;
    .local v2, "subId":I
    .local v3, "capInfo":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .local v4, "callback":Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .local v5, "uceStatsWriter":Lcom/android/ims/rcs/uce/UceStatsWriter;
    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V

    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 1250
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

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

    .line 1252
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 1255
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

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

    .line 1257
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 1260
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

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

    .line 1262
    return-void
.end method

.method private blacklist registerRcsAvailabilityChanged(Lcom/android/ims/RcsFeatureManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 952
    :try_start_0
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p1, v0, v1}, Lcom/android/ims/RcsFeatureManager;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/telephony/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRcsAvailabilityChanged exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 956
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method private blacklist unregisterRcsAvailabilityChanged()V
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 964
    .local v0, "manager":Lcom/android/ims/RcsFeatureManager;
    if-nez v0, :cond_0

    return-void

    .line 966
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/RcsFeatureManager;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    goto :goto_0

    .line 967
    :catch_0
    move-exception v1

    .line 970
    :goto_0
    return-void
.end method

.method private blacklist updateCapabilityTypeAndPublishStateIfNeeded()V
    .locals 5

    .line 994
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_0
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 996
    .local v1, "originalMechanism":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getCapabilityType(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 999
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    if-ne v1, v2, :cond_0

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCapTypeAndPublishStateIfNeeded: The capability type is not changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1002
    monitor-exit v0

    return-void

    .line 1006
    :cond_0
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getInitialPublishState(I)I

    move-result v2

    .line 1008
    .local v2, "updatedPublishState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCapTypeAndPublishStateIfNeeded from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new publish state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 1016
    .end local v1    # "originalMechanism":I
    .end local v2    # "updatedPublishState":I
    monitor-exit v0

    .line 1017
    return-void

    .line 1016
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist addRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 269
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addRegistrationOverrideCapabilities(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearRegistrationOverrideCapabilities()Landroid/telephony/ims/RcsContactUceCapability;
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->clearRegistrationOverrideCapabilities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearResetDeviceStateTimer()V
    .locals 1

    .line 342
    const-string v0, "clearResetDeviceStateTimer"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->clearResetDeviceStateTimer()V

    .line 344
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 1273
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1274
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublishControllerImpl[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1277
    const-string v1, "isPresenceCapable="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1279
    const-string v1, "mCurrentPublishState="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1281
    const-string v1, "mLastPublishState="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1283
    const-string v1, " at time "

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1285
    const-string v1, "Last PIDF XML:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1287
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1289
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "null"

    if-eqz v1, :cond_2

    .line 1290
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    .line 1291
    .local v2, "pidfXml":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->removeNumbersFromUris(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    .end local v2    # "pidfXml":Ljava/lang/String;
    goto :goto_1

    .line 1293
    :cond_2
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "***"

    :cond_3
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    :goto_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1297
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    if-eqz v1, :cond_4

    .line 1298
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->dump(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 1300
    :cond_4
    const-string v1, "mPublishProcessor is null"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    :goto_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1304
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->dump(Ljava/io/PrintWriter;)V

    .line 1306
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1308
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 1309
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1310
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1313
    return-void
.end method

.method public blacklist getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 2
    .param p1, "mechanism"    # I

    .line 380
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastPidfXml()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLatestRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPublishControllerCallback()Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    return-object v0
.end method

.method public blacklist getPublishHandler()Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    return-object v0
.end method

.method public blacklist getRcsCapabilitiesCallback()Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    return-object v0
.end method

.method public blacklist getUcePublishState(Z)I
    .locals 3
    .param p1, "isSupportPublishingState"    # Z

    .line 250
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_0

    .line 252
    monitor-exit v0

    const/4 v0, 0x6

    return v0

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    .line 257
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    monitor-exit v0

    return v1

    .line 259
    :cond_1
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 260
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    monitor-exit v0

    return v1

    .line 262
    :cond_2
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    monitor-exit v0

    return v1

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onCarrierConfigChanged()V
    .locals 1

    .line 244
    const-string v0, "onCarrierConfigChanged"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendCarrierConfigChangedMsg()V

    .line 246
    return-void
.end method

.method public blacklist onDestroy()V
    .locals 1

    .line 238
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendDestroyedMsg()V

    .line 240
    return-void
.end method

.method public blacklist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    .locals 1
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 374
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishUpdatedMessage(Landroid/telephony/ims/SipDetails;)V

    .line 376
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 226
    const-string v0, "onRcsConnected"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRcsConnectedMsg(Lcom/android/ims/RcsFeatureManager;)V

    .line 228
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .locals 1

    .line 232
    const-string v0, "onRcsDisconnected"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRcsDisconnectedMsg()V

    .line 234
    return-void
.end method

.method public blacklist onUnpublish()V
    .locals 2

    .line 364
    const-string v0, "onUnpublish"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 365
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendUnpublishedMessage(I)V

    .line 367
    return-void
.end method

.method public blacklist registerPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 311
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPublishStateCallback: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 315
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    .line 319
    return-void

    .line 316
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist removeRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 278
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->removeRegistrationOverrideCapabilities(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist requestPublishCapabilitiesFromService(I)V
    .locals 2
    .param p1, "triggerType"    # I

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive the publish request from service: service trigger type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->removeRequestPublishMessage()V

    .line 461
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 462
    return-void
.end method

.method public blacklist setCapabilityType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1224
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 1225
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getInitialPublishState(I)I

    move-result v0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1226
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 1227
    return-void
.end method

.method public blacklist setPublishStateCallback(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;",
            ">;)V"
        }
    .end annotation

    .line 1231
    .local p1, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;>;"
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 1232
    return-void
.end method

.method public blacklist setupResetDeviceStateTimer(J)V
    .locals 2
    .param p1, "resetAfterSec"    # J

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupResetDeviceStateTimer: resetAfterSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendResetDeviceStateTimerMessage(J)V

    .line 338
    return-void
.end method

.method public blacklist unregisterPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 326
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterPublishStateCallback:mPublishStateCallbacks: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 330
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
