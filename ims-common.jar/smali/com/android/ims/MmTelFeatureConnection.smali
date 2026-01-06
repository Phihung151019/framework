.class public Lcom/android/ims/MmTelFeatureConnection;
.super Lcom/android/ims/FeatureConnection;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;,
        Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;,
        Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;,
        Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;,
        Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;
    }
.end annotation


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "MmTelFeatureConn"


# instance fields
.field private final blacklist mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

.field private blacklist mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<",
            "Lcom/android/ims/ImsEcbm;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

.field private blacklist mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

.field private blacklist mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<",
            "Lcom/android/ims/ImsMultiEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

.field private final blacklist mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

.field private blacklist mSupportsEmergencyCalling:Z

.field private blacklist mUt:Lcom/android/ims/ImsUt;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetServiceInterface(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "f"    # Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p6, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p7, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 311
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

    .line 296
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 297
    new-instance p2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {p2, p1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 299
    new-instance p2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {p2, p1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 313
    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 314
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    .line 315
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    .line 317
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    .line 318
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    .line 319
    return-void
.end method

.method private blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1
    .param p1, "b"    # Landroid/os/IBinder;

    .line 797
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setEcbmInterface(Lcom/android/ims/ImsEcbmStateListener;)V
    .locals 4
    .param p1, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 557
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    .line 558
    .local v1, "imsEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/ims/ImsEcbm;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->of(Ljava/lang/Object;)Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    move-result-object v2

    goto :goto_0

    .line 559
    :cond_0
    new-instance v2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    :goto_0
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 560
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsEcbm;

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 564
    .end local v1    # "imsEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_1
    monitor-exit v0

    .line 565
    return-void

    .line 553
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECBM interface already open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .end local p1    # "ecbmListener":Lcom/android/ims/ImsEcbmStateListener;
    throw v1

    .line 564
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p1    # "ecbmListener":Lcom/android/ims/ImsEcbmStateListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setMultiEndpointInterface(Lcom/android/ims/ImsExternalCallStateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 594
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    .line 595
    .local v1, "imEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    if-eqz v1, :cond_0

    .line 596
    new-instance v2, Lcom/android/ims/ImsMultiEndpoint;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsMultiEndpoint;-><init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->of(Ljava/lang/Object;)Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    move-result-object v2

    goto :goto_0

    .line 597
    :cond_0
    new-instance v2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    :goto_0
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 598
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsMultiEndpoint;

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 602
    .end local v1    # "imEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :cond_1
    monitor-exit v0

    .line 603
    return-void

    .line 590
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiendpoint interface is already open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .end local p1    # "listener":Lcom/android/ims/ImsExternalCallStateListener;
    throw v1

    .line 602
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p1    # "listener":Lcom/android/ims/ImsExternalCallStateListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 625
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSms(III)V

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist acknowledgeSms(III[B)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 633
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsWithPdu(III[B)V

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 641
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsReport(III)V

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 423
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallback(Landroid/os/IInterface;)V

    .line 424
    return-void
.end method

.method public blacklist addCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 428
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 429
    return-void
.end method

.method public blacklist addEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 414
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 415
    return-void
.end method

.method public blacklist addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 442
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 443
    return-void
.end method

.method public blacklist addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 395
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallback(Landroid/os/IInterface;)V

    .line 396
    return-void
.end method

.method public blacklist addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 400
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 401
    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 804
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeAudioPath(II)V

    .line 805
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 468
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 470
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 471
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 503
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist closeConnection()V
    .locals 5

    .line 372
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 375
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 376
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    .line 377
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 380
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsEcbm;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 381
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 384
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsMultiEndpoint;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 385
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :cond_3
    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeatureConn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeConnection: couldn\'t remove listeners! Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 389
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .param p1, "callServiceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 495
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 512
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist createOrGetUtInterface()Lcom/android/ims/ImsUt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    monitor-exit v0

    return-object v1

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 521
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 525
    .local v1, "imsUt":Lcom/android/ims/internal/IImsUt;
    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    .line 526
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    monitor-exit v0

    return-object v2

    .line 527
    .end local v1    # "imsUt":Lcom/android/ims/internal/IImsUt;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsEcbm;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 573
    return-object v1

    .line 570
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECBM interface has not been opened"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    throw v1

    .line 575
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getInitialCallNetworkType(I)I
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 874
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getInitialCallNetworkType(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 875
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist getRegistrationBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 3

    .line 545
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 546
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist getRegistrationTech()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 534
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v1

    return v1

    .line 537
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 648
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 649
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 839
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist initImsSmsImplAdapter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsSmsImplAdapter["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 687
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->initImsSmsImplAdapter()V

    .line 688
    monitor-exit v0

    .line 689
    return-void

    .line 688
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 853
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->isCmcEmergencyCallSupported(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 854
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isEmergencyMmTelAvailable()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    return v0
.end method

.method public blacklist notifyEpsFallbackResult(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEpsFallbackResult["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 695
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifyEpsFallbackResult(II)V

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist notifySrvccCanceled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 734
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccCanceled()V

    .line 735
    monitor-exit v0

    .line 736
    return-void

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist notifySrvccCompleted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 720
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccCompleted()V

    .line 721
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist notifySrvccFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 727
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccFailed()V

    .line 728
    monitor-exit v0

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/telephony/ims/aidl/ISrvccStartedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 713
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    .line 714
    monitor-exit v0

    .line 715
    return-void

    .line 714
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onFeatureCapabilitiesUpdated(J)V
    .locals 5
    .param p1, "capabilities"    # J

    .line 777
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    const-wide/16 v1, 0x1

    or-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 780
    monitor-exit v0

    .line 781
    return-void

    .line 780
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onMemoryAvailable(I)V
    .locals 2
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 617
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onMemoryAvailable(I)V

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist onRemovedOrDied()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->close()V

    .line 325
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;->close()V

    .line 326
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->close()V

    .line 327
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->close()V

    .line 332
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    invoke-virtual {v1}, Lcom/android/ims/ImsUt;->close()V

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->closeConnection()V

    .line 338
    invoke-super {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onSmsReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 655
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onSmsReady()V

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V
    .locals 2
    .param p1, "mmTelListener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .param p2, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .param p3, "multiEndpointListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 360
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    .line 361
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 362
    invoke-direct {p0, p2}, Lcom/android/ims/MmTelFeatureConnection;->setEcbmInterface(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 363
    invoke-direct {p0, p3}, Lcom/android/ims/MmTelFeatureConnection;->setMultiEndpointInterface(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 486
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    .line 487
    invoke-direct {p0, v2}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityStatus()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    monitor-exit v0

    .line 486
    return-object v1

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 478
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 480
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .locals 2
    .param p1, "sessionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 462
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 432
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 433
    return-void
.end method

.method public blacklist removeCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 437
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 438
    return-void
.end method

.method public blacklist removeEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 419
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 420
    return-void
.end method

.method public blacklist removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 447
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 448
    return-void
.end method

.method public blacklist removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 404
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 405
    return-void
.end method

.method public blacklist removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 409
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 410
    return-void
.end method

.method protected blacklist retrieveFeatureState()Ljava/lang/Integer;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 767
    :catch_0
    move-exception v0

    .line 771
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendDtmfEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "dtmfEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 832
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendDtmfEvent(ILjava/lang/String;)V

    .line 833
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendMmsProcType(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_0
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMmsProcType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 704
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendMmsProcType(IZ)V

    .line 705
    monitor-exit v0

    .line 706
    return-void

    .line 705
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 846
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 609
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .local v3, "token":I
    .local v4, "messageRef":I
    .local v5, "format":Ljava/lang/String;
    .local v6, "smsc":Ljava/lang/String;
    .local v7, "isRetry":Z
    .local v8, "pdu":[B
    :try_start_1
    invoke-interface/range {v2 .. v8}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 611
    monitor-exit v1

    .line 612
    return-void

    .line 611
    .end local v3    # "token":I
    .end local v4    # "messageRef":I
    .end local v5    # "format":Ljava/lang/String;
    .end local v6    # "smsc":Ljava/lang/String;
    .end local v7    # "isRetry":Z
    .end local v8    # "pdu":[B
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "format":Ljava/lang/String;
    .restart local p4    # "smsc":Ljava/lang/String;
    .restart local p5    # "isRetry":Z
    .restart local p6    # "pdu":[B
    :catchall_0
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .restart local v3    # "token":I
    .restart local v4    # "messageRef":I
    .restart local v5    # "format":Ljava/lang/String;
    .restart local v6    # "smsc":Ljava/lang/String;
    .restart local v7    # "isRetry":Z
    .restart local v8    # "pdu":[B
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method public blacklist setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .locals 2
    .param p1, "sessionType"    # I
    .param p2, "threshold"    # Landroid/telephony/ims/MediaThreshold;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 454
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setMediaQualityThreshold(ILandroid/telephony/ims/MediaThreshold;)V

    .line 455
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setRetryCount(II)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRetryCount["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 671
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setRetryCount(II)V

    .line 672
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 662
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 663
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setSmsc(Ljava/lang/String;)V
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_0
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmsc["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 679
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setSmsc(Ljava/lang/String;)V

    .line 680
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 792
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setTerminalBasedCallWaitingStatus(Z)V

    .line 793
    monitor-exit v0

    .line 794
    return-void

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setTtyMode(I)V
    .locals 2
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 867
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setTtyMode(I)V

    .line 868
    monitor-exit v0

    .line 869
    return-void

    .line 868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 582
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    .line 583
    monitor-exit v0

    .line 584
    return-void

    .line 583
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 825
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setVideoCrtAudio(IZ)V

    .line 826
    monitor-exit v0

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist shouldProcessCall(Z[Ljava/lang/String;)I
    .locals 2
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isEmergencyMmTelAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmTelFeatureConn ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTel does not support emergency over IMS, fallback to CS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v0, 0x1

    return v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 758
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 811
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->startLocalRingBackTone(III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 818
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->stopLocalRingBackTone()I

    move-result v1

    monitor-exit v0

    return v1

    .line 819
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist triggerAutoConfigurationForApp(I)V
    .locals 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 860
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->triggerAutoConfigurationForApp(I)V

    .line 861
    monitor-exit v0

    .line 862
    return-void

    .line 861
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist triggerDeregistration(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 741
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_0

    .line 742
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->triggerDeregistration(I)V

    goto :goto_0

    .line 744
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeatureConn ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "triggerDeregistration IImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :goto_0
    return-void
.end method
