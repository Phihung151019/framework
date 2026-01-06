.class public Lcom/android/internal/telephony/ims/ImsServiceController;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;
    }
.end annotation


# instance fields
.field private final blacklist mAnomalyUUID:Ljava/util/UUID;

.field private blacklist mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mBoundUser:Landroid/os/UserHandle;

.field private blacklist mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

.field private blacklist mChangedPackages:Landroid/content/pm/ChangedPackages;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mFeatureStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

.field private final blacklist mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

.field private blacklist mImsFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field private blacklist mImsStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsServiceFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsBinding:Z

.field private blacklist mIsBound:Z

.field private blacklist mLastSequenceNumber:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private blacklist mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

.field private blacklist mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

.field private blacklist mRestartImsServiceRunnable:Ljava/lang/Runnable;

.field private blacklist mServiceCapabilities:J

.field private blacklist mSlotIdToSubIdMap:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$87otLPw00bqJ_RdIHTz9rD1S5vA(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .locals 0

    .line 1019
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$LLemOMUF5n3Dke_YfbQqH3ljOCg(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 0

    .line 507
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$TffSz4GDYLjUWxV_T7ETIfCEBUE(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z
    .locals 1

    .line 945
    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmFeatureType(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$UaIEhazVRcU9doBR_ZVgIZe73Xs(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .locals 0

    .line 848
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 849
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 851
    :cond_0
    const-string p0, "ImsServiceController"

    const-string p1, "Failed to grant permissions to service."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aidQFL7FUKEOm5Dw3v21K2VDaZQ(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 0

    .line 627
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$hUjzyDx8iCYJkdywAqsv5mfEYm8(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .locals 0

    .line 553
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vbEjzEYY6bxqBtyCa8XckQ5uyXM(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 0

    .line 1019
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundUser(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/UserHandle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepo(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/ims/ImsFeatureBinderRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddImsServiceFeature(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndReportAnomaly(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->checkAndReportAnomaly(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupAllFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanupAllFeatures()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmodifyCapabiltiesForSlot(Lcom/android/internal/telephony/ims/ImsServiceController;Ljava/util/Set;IJ)J
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mretrieveStaticImsServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->retrieveStaticImsServiceCapabilities()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->startDelayedRebindToService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindService()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 9

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "e93b05e4-6d0a-4755-a6da-a2d2dbfb10d6"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 289
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 300
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 302
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 303
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 305
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 308
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 350
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 362
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 417
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 418
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 419
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 420
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    .line 421
    new-instance v1, Lcom/android/internal/telephony/ExponentialBackoff;

    .line 422
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    .line 423
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 427
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    move-object v1, p6

    .line 428
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    move-object/from16 v1, p7

    .line 429
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 430
    new-instance v1, Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;-><init>(Landroid/os/Looper;Landroid/content/ComponentName;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    .line 431
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 9

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "e93b05e4-6d0a-4755-a6da-a2d2dbfb10d6"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 289
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 300
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 302
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 303
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 308
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 350
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 362
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 377
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 378
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 379
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 386
    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "ImsServiceControllerHandler"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 387
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 388
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandler:Landroid/os/Handler;

    .line 389
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    .line 391
    new-instance v1, Lcom/android/internal/telephony/ExponentialBackoff;

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 392
    invoke-interface {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 393
    invoke-interface {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 397
    const-string v0, "legacy_permission"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 399
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    .line 400
    new-instance p4, Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-direct {p4, p3, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;-><init>(Landroid/os/Looper;Landroid/content/ComponentName;)V

    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    .line 401
    iput-object p5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_0

    .line 404
    iget p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mChangedPackages:Landroid/content/pm/ChangedPackages;

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/content/pm/ChangedPackages;->getSequenceNumber()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    :cond_0
    return-void
.end method

.method private blacklist addImsFeatureBinder(IIILandroid/os/IInterface;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    const-string v0, "ImsServiceController"

    if-nez p4, :cond_0

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addImsFeatureBinder: null IInterface reported for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 982
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 981
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 987
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImsFeatureBinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;

    move-result-object p0

    .line 989
    iget-object p1, v2, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p1, v3, v4, p3, p0}, Lcom/android/ims/ImsFeatureBinderRepository;->addConnection(IIILcom/android/ims/ImsFeatureContainer;)V

    return-void
.end method

.method private blacklist addImsFeatureStatusCallback(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V

    .line 938
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method private blacklist addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    const-string v2, "ImsServiceController"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v1, :cond_0

    goto :goto_1

    .line 868
    :cond_0
    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v3, :cond_1

    .line 869
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    move-object v0, p0

    move-wide v4, p2

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->createImsFeature(IIIJ)Landroid/os/IInterface;

    move-result-object v1

    move-object v4, v1

    .line 871
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureBinder(IIILandroid/os/IInterface;J)V

    .line 873
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureStatusCallback(II)V

    goto :goto_0

    .line 876
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supports emergency calling on slot "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v1, v2, p4, v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureCreated(IIILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void

    .line 865
    :cond_2
    :goto_1
    const-string v0, "addImsServiceFeature called with null values."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist checkAndReportAnomaly(Landroid/content/ComponentName;)V
    .locals 3

    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "ImsServiceController"

    if-nez v0, :cond_0

    .line 1034
    const-string p0, "mPackageManager null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1037
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 1038
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {v0}, Landroid/content/pm/ChangedPackages;->getSequenceNumber()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 1041
    invoke-virtual {v0}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 1042
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore due to updated, package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1047
    :cond_1
    const-string p1, "IMS Service Crashed"

    .line 1048
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cleanupAllFeatures()V
    .locals 4

    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const/4 v3, 0x0

    .line 1027
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1029
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getFeaturesForSlot(ILjava/util/Set;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1019
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1020
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private blacklist grantPermissionsToService(Landroid/os/UserHandle;)V
    .locals 5

    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grant permissions to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting Runtime permissions to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 844
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    if-eqz v2, :cond_0

    .line 845
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 846
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    new-instance v3, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0, p1, v3, v4}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 p0, 0x3a98

    .line 854
    invoke-static {v2, p0, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 857
    :catch_0
    const-string p0, "Unable to grant permissions, binder died."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;IJ)J"
        }
    .end annotation

    .line 817
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getFeaturesForSlot(ILjava/util/Set;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 818
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1

    or-long/2addr p3, p0

    .line 832
    :cond_0
    const-string p0, "ImsServiceController"

    const-string p1, "skipping single service enforce check..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3
.end method

.method private blacklist removeImsFeatureBinder(II)V
    .locals 0

    .line 993
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->removeConnection(II)Lcom/android/ims/ImsFeatureContainer;

    return-void
.end method

.method private blacklist removeImsFeatureStatusCallback(II)V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 945
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    if-eqz v0, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 949
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    :cond_0
    return-void
.end method

.method private blacklist removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V
    .locals 4

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    const-string v1, "ImsServiceController"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v0, v2, v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 892
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_1

    .line 893
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureStatusCallback(II)V

    .line 894
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureBinder(II)V

    .line 896
    :try_start_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeature(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 900
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t remove feature {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 901
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}, connection is down: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 900
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 906
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doesn\'t support emergency calling on slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 887
    :cond_2
    :goto_0
    const-string p0, "removeImsServiceFeature called with null values."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist retrieveStaticImsServiceCapabilities()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getStaticServiceCapabilities()J

    move-result-wide v0

    .line 751
    const-string v2, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveStaticImsServiceCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 751
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveStaticImsServiceCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 756
    :try_start_0
    iput-wide v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    .line 757
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist sanitizeFeatureConfig(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 506
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;-><init>()V

    .line 507
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 508
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 509
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 510
    new-instance v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    iget v2, v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist startDelayedRebindToService()V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void
.end method

.method private blacklist unbindService()V
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-eqz v1, :cond_0

    .line 794
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 797
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 799
    :cond_0
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService called on already unbound ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Note: unbindService called with no ServiceConnection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 804
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist bind(Landroid/os/UserHandle;Ljava/util/Set;Landroid/util/SparseIntArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")Z"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 460
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 461
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 462
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 463
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    .line 464
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 465
    const-string p3, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind mSlotIdToSubIdMap : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind mSlotIdToSubIdMap : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 468
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->setNumOfSlots(I)V

    .line 469
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->grantPermissionsToService(Landroid/os/UserHandle;)V

    .line 470
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getServiceInterface()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    .line 472
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 476
    const-string p2, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding ImsService:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    const v3, 0x4000041

    invoke-virtual {p2, p3, v1, v3, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 481
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    binding failed, retrying in "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 482
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mS"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 481
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 483
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 484
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 486
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return p1

    .line 488
    :goto_1
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 489
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    binding exception="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retrying in "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 490
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mS"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 489
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 491
    const-string p2, "ImsServiceController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error binding ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") with exception: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rebinding in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    monitor-exit v0

    return v2

    .line 497
    :cond_1
    monitor-exit v0

    return v2

    .line 499
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public blacklist changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;-><init>()V

    .line 554
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 553
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 558
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->setNumOfSlots(I)V

    .line 562
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 563
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 564
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 565
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 567
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 568
    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subId changed for slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 570
    const-string v7, "ImsServiceController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subId changed for slot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v4, :cond_0

    .line 578
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->subIdChangedToInvalid(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 582
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 583
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeImsServiceFeatures mSlotIdToSubIdMap updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 584
    const-string p2, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeImsServiceFeatures mSlotIdToSubIdMap updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 587
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeImsServiceFeatures no change. newImsFeatures : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 588
    const-string p0, "ImsServiceController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeImsServiceFeatures no change. newImsFeatures : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    monitor-exit v0

    return-void

    .line 591
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Features ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 592
    const-string p2, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Features ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for ImsService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance p2, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 597
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    .line 598
    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    if-eqz p1, :cond_8

    .line 600
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 602
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 603
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 604
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v6, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v5

    .line 606
    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    iget v8, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    goto :goto_1

    .line 609
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 611
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 612
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 613
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_2

    .line 616
    :cond_4
    new-instance p2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 618
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 619
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 621
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 622
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    array-length v1, p1

    :goto_3
    if-ge v5, v1, :cond_7

    aget v3, p1, v5

    .line 623
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 626
    invoke-virtual {p2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda4;

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 627
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;-><init>()V

    .line 628
    invoke-static {v7}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v7

    .line 627
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 629
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const/4 v9, 0x1

    .line 630
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_4

    .line 632
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 633
    iget-object v9, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v10, v8, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v11, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v9

    .line 635
    invoke-direct {p0, v8, v9, v10, v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    goto :goto_5

    .line 637
    :cond_6
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 640
    :cond_7
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v1

    .line 643
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    iget v4, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v3, v4, p2, v1, v2}, Lcom/android/ims/ImsFeatureBinderRepository;->notifyFeatureCapabilitiesChanged(IIJ)V

    goto :goto_6

    .line 646
    :cond_8
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    .line 1001
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v3

    .line 1004
    const-string p2, "ImsServiceController"

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v4

    .line 1013
    const-string p0, "createFeatureContainer: create ImsFeatureContainer"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v0, Lcom/android/ims/ImsFeatureContainer;

    move-object v1, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/ims/ImsFeatureContainer;-><init>(Landroid/os/IBinder;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;J)V

    return-object v0

    .line 1005
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createFeatureContainer: invalid state. Reporting as not available. componentName= "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1005
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "createFeatureContainer: invalid state. Reporting as not available."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist createImsFeature(IIIJ)Landroid/os/IInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1

    const/4 p4, 0x2

    if-eq p3, p4, :cond_0

    return-object v1

    .line 928
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    const-wide/16 p2, 0x1

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_2

    .line 920
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 925
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableIms(II)V
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->disableIms(II)V

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1063
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist enableIms(II)V
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->enableIms(II)V

    return-void
.end method

.method public blacklist getBoundUser()Landroid/os/UserHandle;
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 716
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    return-object p0
.end method

.method public blacklist getRebindDelay()J
    .locals 2

    .line 656
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 706
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist getServiceInterface()Ljava/lang/String;
    .locals 0

    .line 761
    const-string p0, "android.telephony.ims.ImsService"

    return-object p0
.end method

.method public blacklist getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 726
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist getStaticServiceCapabilities()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsServiceController;->getImsServiceCapabilities()J

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 733
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist isServiceControllerAvailable()Z
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist notifyImsServiceReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const-string v1, "ImsServiceController"

    const-string v2, "notifyImsServiceReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsServiceController;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 744
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsServiceController;->notifyImsServiceReadyForFeatureCreation()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 746
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method protected blacklist removeImsFeature(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 973
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeImsFeature(IIZ)V

    return-void
.end method

.method public blacklist removeImsServiceFeatureCallbacks()V
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public blacklist resetIms(II)V
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->resetIms(II)V

    return-void
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .locals 1

    .line 769
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsEnablementTracker:Lcom/android/internal/telephony/ims/ImsEnablementTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsEnablementTracker;->setServiceController(Landroid/os/IBinder;)V

    return-void
.end method

.method protected blacklist startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public blacklist stopBackoffTimerForTesting()V
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImsServiceController: componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", boundUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", serviceController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rebindDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRebindDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", slotToSubIdMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1059
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unbind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-nez v1, :cond_0

    .line 525
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 528
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeatureCallbacks()V

    .line 530
    const-string v1, "ImsServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v2, "unbinding"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V

    const/4 v1, 0x0

    .line 536
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 537
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    const/4 v1, 0x0

    .line 538
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBoundUser:Landroid/os/UserHandle;

    .line 539
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 540
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    .line 541
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V
    .locals 1

    .line 440
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to unbind due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1

    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 965
    :catch_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterImsFeatureStatusCallback - couldn\'t remove "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
