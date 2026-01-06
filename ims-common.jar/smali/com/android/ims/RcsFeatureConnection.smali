.class public Lcom/android/ims/RcsFeatureConnection;
.super Lcom/android/ims/FeatureConnection;
.source "RcsFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;,
        Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RcsFeatureConnection"


# instance fields
.field private final blacklist mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

.field private final blacklist mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsRcsFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "feature"    # Landroid/telephony/ims/aidl/IImsRcsFeature;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p6, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p7, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 122
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "slotId":I
    .end local p3    # "subId":I
    .end local p5    # "c":Landroid/telephony/ims/aidl/IImsConfig;
    .end local p6    # "r":Landroid/telephony/ims/aidl/IImsRegistration;
    .end local p7    # "s":Landroid/telephony/ims/aidl/ISipTransport;
    .local v1, "context":Landroid/content/Context;
    .local v2, "slotId":I
    .local v3, "subId":I
    .local v4, "c":Landroid/telephony/ims/aidl/IImsConfig;
    .local v5, "r":Landroid/telephony/ims/aidl/IImsRegistration;
    .local v6, "s":Landroid/telephony/ims/aidl/ISipTransport;
    invoke-direct/range {v0 .. v6}, Lcom/android/ims/FeatureConnection;-><init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V

    .line 123
    new-instance p1, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    iget-object p2, v0, Lcom/android/ims/RcsFeatureConnection;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;-><init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V

    iput-object p1, v0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    .line 124
    new-instance p1, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    iget-object p2, v0, Lcom/android/ims/RcsFeatureConnection;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;-><init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V

    iput-object p1, v0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    .line 125
    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/telephony/ims/aidl/IImsRcsFeature;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 126
    return-void
.end method

.method private blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 201
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist checkServiceIsAlive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    sget-boolean v0, Lcom/android/ims/RcsFeatureConnection;->sImsSupportedOnDevice:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    return-void

    .line 162
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not alive."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IMS is not supported on this device."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method private blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 209
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist addCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 182
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->addCallback(Landroid/os/IInterface;)V

    .line 183
    return-void
.end method

.method public blacklist addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 174
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 175
    return-void
.end method

.method public blacklist addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 178
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 179
    return-void
.end method

.method public blacklist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 225
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist close()V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->removeCapabilityExchangeEventListener()V

    .line 130
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->close()V

    .line 131
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->close()V

    .line 132
    return-void
.end method

.method protected blacklist getRegistrationBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 3

    .line 292
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 293
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1
    .param p1, "b"    # Landroid/os/IBinder;

    .line 275
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFeatureCapabilitiesUpdated(J)V
    .locals 0
    .param p1, "capabilities"    # J

    .line 271
    return-void
.end method

.method protected blacklist onRemovedOrDied()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->close()V

    .line 137
    invoke-super {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 138
    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 217
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 218
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist queryCapabilityStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 169
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->queryCapabilityStatus()I

    move-result v1

    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist removeCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 194
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 195
    return-void
.end method

.method public blacklist removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 186
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0, p2}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 187
    return-void
.end method

.method public blacklist removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 190
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p2}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 191
    return-void
.end method

.method public blacklist removeCapabilityExchangeEventListener()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/ims/RcsFeatureConnection;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 155
    :goto_0
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .locals 2
    .param p2, "c"    # Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 241
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist requestPublication(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .locals 2
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "responseCallback"    # Landroid/telephony/ims/aidl/IPublishResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 233
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist retrieveFeatureState()Ljava/lang/Integer;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRcsFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    .local p2, "myCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 249
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsFeature;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 251
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsAlive()V

    .line 145
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
