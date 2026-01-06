.class public Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
.super Ljava/lang/Object;
.source "SatelliteModemInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;,
        Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mDemoListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

.field private final blacklist mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

.field protected final blacklist mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mIsBinding:Z

.field private blacklist mIsBound:Z

.field private blacklist mIsSatelliteServiceSupported:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private final blacklist mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

.field private final blacklist mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

.field private blacklist mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

.field private final blacklist mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

.field private final blacklist mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mVendorListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

.field private blacklist mVendorSatellitePackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$DChGqo6s3-LYVRE3AKvwbIPE8vg(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramTransferStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDemoListener(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDemoSimulator(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/DemoSimulator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtnSignalStrengthChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingDatagramsRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteCapabilitiesChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteDatagramsReceivedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteListenerProxy(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteModemStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePositionInfoChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteRegistrationFailureRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Landroid/telephony/satellite/stub/ISatellite;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSupportedStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTerrestrialNetworkAvailableChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/telephony/satellite/stub/ISatellite;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisconnectSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->disconnectSatelliteService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msLogFrom(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 8

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    .line 94
    const-string p4, ""

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    const/4 p4, 0x0

    .line 97
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 99
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 101
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 103
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 105
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 106
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 108
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 110
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 112
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 114
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 116
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 266
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 267
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    .line 268
    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/DemoSimulator;->make(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;)Lcom/android/internal/telephony/satellite/DemoSimulator;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

    .line 269
    new-instance p4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    .line 271
    new-instance v0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-direct {v0, p4, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;-><init>(Landroid/telephony/satellite/stub/ISatelliteListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteListenerProxy:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    .line 272
    new-instance p1, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;-><init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    .line 274
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    const/4 p4, 0x1

    invoke-direct {p1, p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatelliteServiceSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsSatelliteServiceSupported:Z

    .line 276
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 277
    new-instance v0, Lcom/android/internal/telephony/ExponentialBackoff;

    new-instance v7, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    const-wide/16 v1, 0x7d0

    const-wide/32 v3, 0xfa00

    const/4 v5, 0x2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 293
    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    .line 294
    const-string p1, "Created SatelliteModemInterface. Attempting to bind to SatelliteService."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->bindService()V

    return-void
.end method

.method private blacklist disconnectSatelliteService()V
    .locals 1

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
    .locals 1

    .line 231
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    if-nez v0, :cond_0

    .line 232
    const-string v0, "SatelliteModemInterface was not yet initialized."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->loge(Ljava/lang/String;)V

    .line 234
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    return-object v0
.end method

.method private blacklist getSatellitePackageName()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    return-object p0

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10403c4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSatelliteServiceSupport()Z
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatellitePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    if-eqz v1, :cond_2

    .line 281
    :cond_1
    monitor-exit v0

    return-void

    .line 283
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 286
    :try_start_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 288
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unbindService()V

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 288
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 291
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->bindService()V

    return-void

    .line 283
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 1726
    const-string v0, "SatelliteModemInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
    .locals 2

    .line 247
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    .line 249
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    .line 251
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    return-object p0
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .locals 1

    .line 1730
    const-string v0, "SatelliteModemInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 1732
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .locals 1

    .line 1737
    const-string v0, "SatelliteModemInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 1739
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private varargs blacklist sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v1, 0x7

    move-object v3, p1

    move-object v5, p2

    .line 1746
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/SatelliteController;->sLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private varargs blacklist sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x7

    move-object v3, p1

    move-object v5, p2

    .line 1753
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/SatelliteController;->sLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected static blacklist sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1716
    :cond_0
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    move-object p2, v0

    .line 1717
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1718
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(Landroid/os/Message;)V
    .locals 4

    .line 1560
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1566
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$26;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$26;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->abortSendingSatelliteDatagrams(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1582
    const-string v2, "abortSendingSatelliteDatagrams"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortSendingSatelliteDatagrams: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1585
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1589
    :cond_0
    const-string v0, "abortSendingSatelliteDatagrams: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1590
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method protected blacklist bindService()V
    .locals 6

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 323
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatellitePackageName()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 327
    const-string v0, "Unable to bind to the satellite service because the package is undefined."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 331
    :try_start_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 332
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void

    :catchall_0
    move-exception p0

    .line 332
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 336
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.telephony.satellite.SatelliteService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Lcom/android/internal/telephony/satellite/SatelliteModemInterface-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 342
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    invoke-virtual {v4, v2, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 345
    const-string v2, "bindService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 348
    const-string v0, "Successfully bound to the satellite service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 351
    :try_start_4
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 352
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 353
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error binding to the satellite service. Retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 355
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catchall_1
    move-exception v1

    .line 352
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 359
    :goto_0
    const-string v1, "bindService"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_8
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 363
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception binding to the satellite service. Retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 366
    invoke-virtual {v2}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p0

    .line 363
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    goto :goto_2

    .line 322
    :cond_3
    :goto_1
    :try_start_a
    monitor-exit v0

    return-void

    .line 324
    :goto_2
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0
.end method

.method public blacklist enableCellularModemWhileSatelliteModeIsOn(ZLandroid/os/Message;)V
    .locals 4

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 714
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 731
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDemoModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    invoke-virtual {v2, v3, p1, v0}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(Landroid/telephony/satellite/stub/ISatellite;ZLandroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 745
    :goto_0
    const-string v0, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 p0, 0x3

    .line 749
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    goto :goto_1

    .line 754
    :cond_1
    const-string p1, "enableCellularModemWhileSatelliteModeIsOn: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/16 p0, 0xa

    .line 756
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist getService()Landroid/telephony/satellite/stub/ISatellite;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-object p0
.end method

.method public blacklist isSatelliteServiceConnected()Z
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1602
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1603
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isSatelliteServiceSupported()Z
    .locals 0

    .line 1596
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsSatelliteServiceSupported:Z

    return p0
.end method

.method public blacklist pollPendingSatelliteDatagrams(Landroid/os/Message;)V
    .locals 4

    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1066
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->pollPendingSatelliteDatagrams(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1082
    const-string v2, "pollPendingSatelliteDatagrams"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pollPendingDatagrams: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1085
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1089
    :cond_0
    const-string v0, "pollPendingDatagrams: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1090
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist registerForDatagramTransferStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNtnSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForPendingDatagrams(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteDatagramsReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatellitePositionInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteRegistrationFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteSupportedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/os/Message;)V
    .locals 5

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 820
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$4;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$4;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$5;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$5;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestIsSatelliteEnabled(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 849
    const-string v2, "requestIsSatelliteEnabled"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestIsSatelliteEnabled: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 852
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 856
    :cond_0
    const-string v0, "requestIsSatelliteEnabled: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 857
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabledForCarrier(ILandroid/os/Message;)V
    .locals 5

    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1374
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$20;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$20;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21;

    invoke-direct {v4, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestIsSatelliteEnabledForCarrier(Landroid/telephony/satellite/stub/ISatellite;ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1402
    const-string v0, "requestIsSatelliteEnabledForCarrier"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestIsSatelliteEnabledForCarrier: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1405
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1409
    :cond_0
    const-string p1, "requestIsSatelliteEnabledForCarrier: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1410
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/os/Message;)V
    .locals 5

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 874
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$6;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$6;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$7;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$7;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestIsSatelliteSupported(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 900
    const-string v2, "requestIsSatelliteSupported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestIsSatelliteSupported: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 903
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 907
    :cond_0
    const-string v0, "requestIsSatelliteSupported: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 908
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestNtnSignalStrength(Landroid/os/Message;)V
    .locals 5

    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1427
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$22;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$22;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$23;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$23;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestSignalStrength(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1458
    const-string v2, "requestSignalStrength"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNtnSignalStrength: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1461
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1465
    :cond_0
    const-string v0, "requestNtnSignalStrength: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1466
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/os/Message;)V
    .locals 5

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 925
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$8;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$8;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$9;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$9;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestSatelliteCapabilities(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 954
    const-string v2, "requestSatelliteCapabilities"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSatelliteCapabilities: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 957
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 961
    :cond_0
    const-string v0, "requestSatelliteCapabilities: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 962
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;Landroid/os/Message;)V
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 777
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    .line 779
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSatelliteModemEnableRequestAttributes(Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;)Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    move-result-object p1

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$3;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 777
    invoke-virtual {v2, v0, p1, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 795
    const-string v0, "requestSatelliteEnabled"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSatelliteEnabled: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 798
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 802
    :cond_0
    const-string p1, "setSatelliteEnabled: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 803
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSatelliteListeningEnabled(ZILandroid/os/Message;)V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 667
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$1;

    invoke-direct {v3, p0, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestSatelliteListeningEnabled(Landroid/telephony/satellite/stub/ISatellite;ZILandroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 687
    const-string p2, "requestSatelliteListeningEnabled"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestSatelliteListeningEnabled: RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 p0, 0x3

    .line 691
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    goto :goto_0

    .line 696
    :cond_0
    const-string p1, "requestSatelliteListeningEnabled: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/16 p0, 0xa

    .line 698
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist requestSatelliteModemState(Landroid/os/Message;)V
    .locals 5

    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1157
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$14;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$14;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$15;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$15;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestSatelliteModemState(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1185
    const-string v2, "requestSatelliteModemState"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSatelliteModemState: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1188
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1192
    :cond_0
    const-string v0, "requestSatelliteModemState: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1193
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSetSatelliteEnabledForCarrier(IZLandroid/os/Message;)V
    .locals 4

    .line 1323
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1329
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$19;

    invoke-direct {v3, p0, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$19;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, p1, p2, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->setSatelliteEnabledForCarrier(Landroid/telephony/satellite/stub/ISatellite;IZLandroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1346
    const-string p2, "setSatelliteEnabledForCarrier"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestSetSatelliteEnabledForCarrier: RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1349
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1353
    :cond_0
    const-string p1, "requestSetSatelliteEnabledForCarrier: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xb

    .line 1354
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/os/Message;)V
    .locals 5

    .line 1206
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1212
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$16;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$16;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->requestTimeForNextSatelliteVisibility(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1243
    const-string v2, "requestTimeForNextSatelliteVisibility"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestTimeForNextSatelliteVisibility: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1246
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1250
    :cond_0
    const-string v0, "requestTimeForNextSatelliteVisibility: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1251
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;ZZLandroid/os/Message;)V
    .locals 3

    .line 1106
    iget-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1112
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    .line 1114
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;)Landroid/telephony/satellite/stub/SatelliteDatagram;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$13;

    invoke-direct {v2, p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$13;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 1112
    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1130
    const-string p2, "sendSatelliteDatagram"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendDatagram: RemoteException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1133
    invoke-static {p4, v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1137
    :cond_0
    const-string p1, "sendDatagram: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1138
    invoke-static {p4, v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1276
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 1282
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v5, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$18;

    invoke-direct {v5, p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$18;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->setSatellitePlmn(Landroid/telephony/satellite/stub/ISatellite;ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1299
    const-string p2, "setSatellitePlmn"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1301
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setSatellitePlmn: RemoteException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1302
    invoke-static {p4, v6, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1306
    :cond_0
    const-string p1, "setSatellitePlmn: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1307
    invoke-static {p4, v6, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist setSatelliteServicePackageName(Ljava/lang/String;)V
    .locals 2

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteServicePackageName: config_satellite_service_package is updated, new packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1660
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    .line 1661
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 1662
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unbindService()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1662
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1666
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1669
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    goto :goto_2

    .line 1667
    :cond_2
    :goto_1
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    .line 1671
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatelliteServiceSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsSatelliteServiceSupported:Z

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->bindService()V

    .line 1673
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void
.end method

.method public blacklist startSendingNtnSignalStrength(Landroid/os/Message;)V
    .locals 4

    .line 1478
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1484
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$24;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$24;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->startSendingNtnSignalStrength(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1500
    const-string v2, "startSendingNtnSignalStrength"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSendingNtnSignalStrength: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1503
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1507
    :cond_0
    const-string v0, "startSendingNtnSignalStrength: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1508
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/os/Message;)V
    .locals 4

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 981
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$10;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$10;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->startSendingSatellitePointingInfo(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 997
    const-string v2, "startSendingSatellitePointingInfo"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSendingSatellitePointingInfo: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1000
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1004
    :cond_0
    const-string v0, "startSendingSatellitePointingInfo: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1005
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist stopSendingNtnSignalStrength(Landroid/os/Message;)V
    .locals 4

    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1525
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$25;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$25;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->stopSendingNtnSignalStrength(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1541
    const-string v2, "stopSendingNtnSignalStrength"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSendingNtnSignalStrength: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1544
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1548
    :cond_0
    const-string v0, "stopSendingNtnSignalStrength: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1549
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/os/Message;)V
    .locals 4

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1023
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$11;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$11;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->stopSendingSatellitePointingInfo(Landroid/telephony/satellite/stub/ISatellite;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1039
    const-string v2, "stopSendingSatellitePointingInfo"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSendingSatellitePointingInfo: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1042
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1046
    :cond_0
    const-string v0, "stopSendingSatellitePointingInfo: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1047
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method protected blacklist unbindService()V
    .locals 2

    .line 372
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->disconnectSatelliteService()V

    const/4 v0, 0x0

    .line 374
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unbindService"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogTo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    return-void
.end method

.method public blacklist unregisterForDatagramTransferStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNtnSignalStrengthChanged(Landroid/os/Handler;)V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPendingDatagrams(Landroid/os/Handler;)V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteDatagramsReceived(Landroid/os/Handler;)V
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteModemStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatellitePositionInfoChanged(Landroid/os/Handler;)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteRegistrationFailure(Landroid/os/Handler;)V
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteSupportedStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;)V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateSatelliteSubscription(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1616
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceProxy:Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$27;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$27;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-virtual {v2, v0, p1, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteServiceProxy;->updateSatelliteSubscription(Landroid/telephony/satellite/stub/ISatellite;Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1633
    const-string v0, "updateSatelliteSubscription"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sLogFrom(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSatelliteSubscription: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1636
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1640
    :cond_0
    const-string p1, "updateSatelliteSubscription: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1641
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist updateSystemSelectionChannels(Ljava/util/List;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSystemSelectionChannels: SystemSelectionSpecifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1685
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 1687
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1690
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSystemSelectionSpecifier(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$28;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$28;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 1689
    invoke-interface {v0, p1, v2}, Landroid/telephony/satellite/stub/ISatellite;->updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSystemSelectionChannels: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1702
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1706
    :cond_0
    const-string p1, "updateSystemSelectionChannels: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1707
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method
