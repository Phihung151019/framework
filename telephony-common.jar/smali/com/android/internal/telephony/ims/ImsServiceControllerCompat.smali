.class public Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.super Lcom/android/internal/telephony/ims/ImsServiceController;
.source "ImsServiceControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;,
        Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;
    }
.end annotation


# instance fields
.field private blacklist mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

.field private blacklist mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

.field private final blacklist mMmTelCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;)V
    .locals 8

    .line 114
    new-instance v7, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v7}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p0, 0x0

    .line 78
    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    .line 79
    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 83
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 116
    iput-object p7, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)V
    .locals 6

    .line 106
    new-instance v5, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v5}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p0, 0x0

    .line 78
    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    .line 79
    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 83
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 107
    new-instance p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$$ExternalSyntheticLambda0;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    return-void
.end method

.method private blacklist createMMTelCompat(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->getInterface(I)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelFeatureFactory:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;->create(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    move-result-object v0

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    new-instance p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;-><init>()V

    .line 341
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V

    .line 345
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 3

    const/4 v0, 0x0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_0
    monitor-exit v1

    return-object p0

    .line 380
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 382
    const-string p1, "ImsSCCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t createRcsFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist getInterface(I)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    if-nez p0, :cond_0

    .line 328
    const-string p0, "ImsSCCompat"

    const-string p1, "getInterface: IImsService returned null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 331
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;

    invoke-interface {p0}, Lcom/android/ims/internal/IImsService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/ims/ImsServiceController;->createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsFeatureContainer;->setState(I)V

    :cond_0
    return-object p0
.end method

.method protected final blacklist createImsFeature(IIIJ)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createImsFeature "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ImsSCCompat"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0

    .line 235
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createMMTelCompat(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist disableIms(II)V
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 148
    const-string p2, "ImsSCCompat"

    if-nez p0, :cond_0

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableIms: adapter null for slot :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->disableIms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t disableIms IMS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final blacklist enableIms(II)V
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    .line 131
    const-string p2, "ImsSCCompat"

    if-nez p0, :cond_0

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableIms: adapter null for slot :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->enableIms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t enable IMS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final blacklist getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2

    const/4 p2, 0x0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, p2

    :goto_0
    monitor-exit v0

    return-object p0

    .line 188
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 190
    const-string p1, "ImsSCCompat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t getRegistration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public final blacklist getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2

    const/4 p2, 0x0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, p2

    :goto_0
    monitor-exit v0

    return-object p0

    .line 169
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 171
    const-string p1, "ImsSCCompat"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t getRegistration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method protected final blacklist getServiceInterface()Ljava/lang/String;
    .locals 0

    .line 122
    const-string p0, "android.telephony.ims.compat.ImsService"

    return-object p0
.end method

.method public blacklist getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .locals 3

    const/4 v0, 0x0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_0
    monitor-exit v1

    return-object p0

    .line 209
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 211
    const-string p1, "ImsSCCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t getSipTransport : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected blacklist getStaticServiceCapabilities()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method protected blacklist isServiceControllerAvailable()Z
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected final blacklist notifyImsServiceReady()V
    .locals 1

    .line 225
    const-string p0, "ImsSCCompat"

    const-string v0, "notifyImsServiceReady"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected final blacklist removeImsFeature(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 271
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    if-eqz p3, :cond_0

    .line 274
    invoke-virtual {p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->onFeatureRemoved()V

    .line 275
    :cond_0
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->isServiceControllerAvailable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 287
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :try_start_1
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->removeImsFeature(II)V

    .line 289
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 291
    const-string p1, "ImsSCCompat"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t removeImsFeature: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .locals 3

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceController "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSCCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Lcom/android/ims/internal/IImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 307
    :cond_1
    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsServiceStaticCompat:Lcom/android/ims/internal/IImsService;

    return-void
.end method

.method public blacklist startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .locals 3

    .line 350
    const-string p1, "ims6"

    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 356
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 359
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;-><init>(Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    .line 360
    invoke-interface {p1, v1, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;->binderDied()V

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$ImsDeathRecipient;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected blacklist unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    .line 0
    return-void
.end method
