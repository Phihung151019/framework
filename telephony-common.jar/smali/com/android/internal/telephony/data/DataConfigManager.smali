.class public Lcom/android/internal/telephony/data/DataConfigManager;
.super Landroid/os/Handler;
.source "DataConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;,
        Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist REEVALUATE_BOOTSTRAP_SIM_DATA_USAGE_MILLIS:J


# instance fields
.field private final blacklist mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mBandwidthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final blacklist mDataConfigManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataHandoverRetryRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSetupRetryRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandoverRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private blacklist mIsApnConfigAnomalyReportEnabled:Z

.field private blacklist mIsInvalidQnsParamAnomalyReportEnabled:Z

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mMeteredApnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNetworkCapabilityPriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetworkConnectingTimeout:I

.field private blacklist mNetworkDisconnectingTimeout:I

.field private blacklist mNetworkHandoverTimeout:I

.field private blacklist mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mResources:Landroid/content/res/Resources;

.field private final blacklist mRoamingMeteredApnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoamingUnmeteredNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private blacklist mShouldKeepNetworkUpInNonVops:Z

.field private final blacklist mSingleDataNetworkTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTcpBufferSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnmeteredNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1MvQW_KBg42WQWa2Q_kyqKictzQ(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;[I)V
    .locals 1

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1641
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8TbYBuuexTBSzhIVw-ciuzrB1-4(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$B_nlWBFydWffWvw-p1HEG26gyMY(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;)V
    .locals 1

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$C8LuI05QcZrg3eL7bKQPpxorTNE(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .locals 1

    .line 446
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MJu86eG1TaImz5HgaHTr3Qqd1Qo(Lcom/android/internal/telephony/data/DataConfigManager;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$new$0(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Pcm3R0WNyhizvq9ApBLffAzVe30(Lcom/android/internal/telephony/data/DataConfigManager;ZLjava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$isAnyMeteredCapability$5(ZLjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$WEBZNw0vRYRSlZvwcbt99dSkxQI(Ljava/lang/Integer;)Z
    .locals 0

    .line 677
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$WP7bw11RDuFOMrH9aIKiUCBVwa8(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .locals 1

    .line 440
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kgrnxsnekECBxFwMKyXjx7IOV8Q(Lcom/android/internal/telephony/data/DataConfigManager;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$new$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n9QpeX1I5UXGuMKly5Scp6BIZoA(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1615
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1614
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 174
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/DataConfigManager;->REEVALUATE_BOOTSTRAP_SIM_DATA_USAGE_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 0

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    const/4 p2, 0x0

    .line 284
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 286
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    .line 290
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    .line 293
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    .line 296
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    .line 299
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 303
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    .line 307
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    .line 310
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    .line 314
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    .line 318
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    .line 322
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    .line 327
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    .line 331
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    const/4 p2, 0x0

    .line 334
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    .line 336
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    .line 343
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    .line 363
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 364
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DCM-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    .line 366
    const-string p2, "DataConfigManager created."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_0

    .line 371
    new-instance p2, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-virtual {p1, p2, p3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 380
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance p2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    const-string p3, "telephony"

    invoke-static {p3, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateCarrierConfig()V

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDeviceConfig()V

    return-void
.end method

.method private static blacklist getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .locals 2

    .line 1309
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    .line 1310
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    .line 1324
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->networkTypeToDataConfigNetworkType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x14

    if-ne v0, p0, :cond_1

    .line 1313
    const-string p0, "NR_SA_MMWAVE"

    return-object p0

    .line 1315
    :cond_1
    const-string p0, "NR_NSA_MMWAVE"

    return-object p0

    .line 1318
    :cond_2
    const-string p0, "NR_NSA"

    return-object p0

    .line 1321
    :cond_3
    const-string p0, "LTE_CA"

    return-object p0
.end method

.method private synthetic blacklist lambda$isAnyMeteredCapability$5(ZLjava/lang/Integer;)Z
    .locals 0

    .line 719
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->isMeteredCapability(IZ)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .locals 0

    .line 373
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 374
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 383
    const-string v0, "telephony"

    .line 384
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 385
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 1589
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1597
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist networkTypeToDataConfigNetworkType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1475
    const-string p0, ""

    return-object p0

    .line 1474
    :pswitch_0
    const-string p0, "NR_SA"

    return-object p0

    .line 1473
    :pswitch_1
    const-string p0, "LTE_CA"

    return-object p0

    .line 1472
    :pswitch_2
    const-string p0, "IWLAN"

    return-object p0

    .line 1471
    :pswitch_3
    const-string p0, "TD_SCDMA"

    return-object p0

    .line 1470
    :pswitch_4
    const-string p0, "GSM"

    return-object p0

    .line 1469
    :pswitch_5
    const-string p0, "HSPA+"

    return-object p0

    .line 1467
    :pswitch_6
    const-string p0, "eHRPD"

    return-object p0

    .line 1466
    :pswitch_7
    const-string p0, "LTE"

    return-object p0

    .line 1464
    :pswitch_8
    const-string p0, "EvDo_B"

    return-object p0

    .line 1468
    :pswitch_9
    const-string p0, "iDEN"

    return-object p0

    .line 1460
    :pswitch_a
    const-string p0, "HSPA"

    return-object p0

    .line 1459
    :pswitch_b
    const-string p0, "HSUPA"

    return-object p0

    .line 1458
    :pswitch_c
    const-string p0, "HSDPA"

    return-object p0

    .line 1465
    :pswitch_d
    const-string p0, "1xRTT"

    return-object p0

    .line 1463
    :pswitch_e
    const-string p0, "EvDo_A"

    return-object p0

    .line 1462
    :pswitch_f
    const-string p0, "EvDo_0"

    return-object p0

    .line 1461
    :pswitch_10
    const-string p0, "CDMA"

    return-object p0

    .line 1457
    :pswitch_11
    const-string p0, "UMTS"

    return-object p0

    .line 1456
    :pswitch_12
    const-string p0, "EDGE"

    return-object p0

    .line 1455
    :pswitch_13
    const-string p0, "GPRS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method private blacklist updateAutoDataSwitchConfig()V
    .locals 24

    move-object/from16 v1, p0

    .line 1087
    monitor-enter p0

    .line 1088
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1089
    iget-object v0, v1, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "auto_data_switch_rat_signal_score_string_bundle"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1091
    const-string v2, "GPRS"

    const-string v3, "EDGE"

    const-string v4, "UMTS"

    const-string v5, "CDMA"

    const-string v6, "1xRTT"

    const-string v7, "EvDo_0"

    const-string v8, "EvDo_A"

    const-string v9, "HSDPA"

    const-string v10, "HSUPA"

    const-string v11, "HSPA"

    const-string v12, "EvDo_B"

    const-string v13, "eHRPD"

    const-string v14, "iDEN"

    const-string v15, "LTE"

    const-string v16, "LTE_CA"

    const-string v17, "HSPA+"

    const-string v18, "GSM"

    const-string v19, "TD_SCDMA"

    const-string v20, "NR_NSA"

    const-string v21, "NR_NSA_MMWAVE"

    const-string v22, "NR_SA"

    const-string v23, "NR_SA_MMWAVE"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x16

    if-ge v4, v5, :cond_4

    .line 1116
    aget-object v5, v2, v4

    .line 1117
    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1118
    array-length v7, v6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    move v7, v3

    .line 1120
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_3

    .line 1121
    aget v8, v6, v7

    if-gez v8, :cond_0

    .line 1122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto switch score must not < 0 for network type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1126
    :cond_0
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1127
    iget-object v8, v1, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1131
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto switch score table should specify 5 signal strength for network type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1137
    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist updateBandwidths()V
    .locals 10

    .line 862
    monitor-enter p0

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "bandwidth_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "bandwidth_nr_nsa_use_lte_value_for_uplink_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_3

    .line 869
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 872
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 873
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid bandwidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x1

    .line 879
    aget-object v7, v6, v5

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 880
    array-length v9, v7

    if-eq v9, v8, :cond_1

    .line 881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid bandwidth values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 886
    :cond_1
    :try_start_1
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 887
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 893
    :try_start_2
    aget-object v7, v6, v3

    const-string v9, "NR"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 896
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    const-string v7, "LTE"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v5, v5, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    .line 899
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    aget-object v6, v6, v3

    new-instance v9, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-direct {v9, v8, v5}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v5

    .line 889
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception parsing bandwidth values for network type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 903
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private blacklist updateCarrierConfig()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v0, :cond_1

    .line 498
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 501
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 500
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    .line 503
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateNetworkCapabilityPriority()V

    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDataRetryRules()V

    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateMeteredApnTypes()V

    .line 506
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateSingleDataNetworkTypeAndCapabilityExemption()V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateVopsConfig()V

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateUnmeteredNetworkTypes()V

    .line 509
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateBandwidths()V

    .line 510
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateTcpBuffers()V

    .line 511
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateHandoverRules()V

    .line 512
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateAutoDataSwitchConfig()V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier config updated. Config is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v1, "not "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "carrier specific."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateDataRetryRules()V
    .locals 7

    .line 566
    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "telephony_data_setup_retry_rules_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 571
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 575
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataRetryRules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "telephony_data_handover_retry_rules_string_array"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 584
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    new-instance v5, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    .line 588
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataRetryRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 592
    :cond_1
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private blacklist updateDeviceConfig()V
    .locals 7

    const/4 v0, 0x0

    .line 455
    new-array v1, v0, [Ljava/lang/String;

    .line 456
    const-string v2, "telephony"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 459
    const-string v2, "anomaly_ims_release_request"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    .line 458
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    .line 460
    const-string v2, "anomaly_network_unwanted"

    .line 461
    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    .line 460
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    .line 462
    const-string v2, "anomaly_setup_data_call_failure"

    .line 463
    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    .line 464
    const-string v2, "anomaly_qns_param"

    invoke-virtual {v1, v2, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsInvalidQnsParamAnomalyReportEnabled:Z

    .line 466
    const-string v2, "anomaly_network_connecting_timeout"

    const v3, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    .line 468
    const-string v2, "anomaly_network_disconnecting_timeout"

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    .line 476
    iget v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    iput v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    .line 478
    const-string v2, "anomaly_apn_config_enabled"

    invoke-virtual {v1, v2, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsApnConfigAnomalyReportEnabled:Z

    return-void
.end method

.method private blacklist updateHandoverRules()V
    .locals 7

    .line 1344
    monitor-enter p0

    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "iwlan_handover_policy_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1349
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v5, v3, v6}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;-><init>(Ljava/lang/String;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1353
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHandoverRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1357
    :cond_0
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private blacklist updateMeteredApnTypes()V
    .locals 3

    .line 644
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_metered_apn_types_strings"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;-><init>()V

    .line 650
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 651
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 653
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_metered_roaming_apn_types_strings"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 657
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;-><init>()V

    .line 658
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    .line 659
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 661
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist updateNetworkCapabilityPriority()V
    .locals 8

    .line 522
    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "telephony_network_capability_priorities_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 527
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 529
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 530
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 531
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid config \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 536
    :cond_0
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilityFromString(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    .line 538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid config \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 542
    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 543
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 546
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist updateSingleDataNetworkTypeAndCapabilityExemption()V
    .locals 3

    .line 734
    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "only_single_dc_allowed_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 743
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "capabilities_exempt_from_single_dc_check_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 746
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    .line 747
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 749
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist updateTcpBuffers()V
    .locals 8

    .line 992
    monitor-enter p0

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x107012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 997
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1000
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1001
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 1002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid TCP buffer sizes entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    .line 1005
    aget-object v6, v5, v4

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    .line 1006
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid TCP buffer sizes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1009
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    aget-object v7, v5, v2

    aget-object v4, v5, v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1012
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist updateUnmeteredNetworkTypes()V
    .locals 2

    .line 827
    monitor-enter p0

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "unmetered_network_types_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 834
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "roaming_unmetered_network_types_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 840
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized blacklist updateVopsConfig()V
    .locals 3

    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "ims.keep_pdn_up_in_no_vops_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "ims.ims_pdn_enabled_in_no_vops_support_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 763
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public blacklist allowBringUpNetworkInNonVops(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 805
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist allowClearInitialAttachDataProfile()Z
    .locals 1

    .line 1556
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x111000f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1608
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isConfigCarrierSpecific="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    const-string p2, "Network capability priority:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1614
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1616
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1617
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1618
    const-string p2, "Data setup retry rules:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1620
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1621
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isIwlanHandoverPolicyEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isIwlanHandoverPolicyEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const-string p2, "Data handover retry rules:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1625
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1626
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1627
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldHonorRetryTimerForEmergencyNetworkRequest="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldHonorRetryTimerForEmergencyNetworkRequest()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1627
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSetupDataCallAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkUnwantedAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mImsReleaseRequestAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsInvalidQnsParamAnomalyReportEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsInvalidQnsParamAnomalyReportEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkConnectingTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkDisconnectingTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkHandoverTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsApnConfigAnomalyReportEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsApnConfigAnomalyReportEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    const-string p2, "Auto data switch:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1640
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchScoreTolerance="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchScoreTolerance()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchAvailabilityStabilityTimeThreshold="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilityStabilityTimeThreshold()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1643
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchPerformanceStabilityTimeThreshold="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchPerformanceStabilityTimeThreshold()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1645
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchValidationMaxRetry="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchValidationMaxRetry()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1649
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Metered APN types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;-><init>()V

    .line 1650
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1649
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Roaming metered APN types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;-><init>()V

    .line 1652
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1651
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Single data network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 1654
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1653
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Capabilities exempt from single PDN="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    .line 1656
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    .line 1657
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1655
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mShouldKeepNetworkUpInNonVops="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mEnabledVopsNetworkTypesInNonVops="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isPingTestBeforeAutoDataSwitchRequired="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isPingTestBeforeAutoDataSwitchRequired()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1660
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unmetered network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Roaming unmetered network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    .line 1664
    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1663
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    const-string p2, "Bandwidths:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1667
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1668
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldUseDataActivityForRrcDetection="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldUseDataActivityForRrcDetection()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isTempNotMeteredSupportedByCarrier="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTempNotMeteredSupportedByCarrier()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldResetDataThrottlingWhenTacChanges="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldResetDataThrottlingWhenTacChanges()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1672
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Data service package name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Default MTU="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    const-string p2, "TCP buffer sizes by RAT:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1678
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda8;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1679
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1680
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Default TCP buffer sizes="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultTcpConfigString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getImsDeregistrationDelay="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldPersistIwlanDataNetworksWhenDataServiceRestarted="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldPersistIwlanDataNetworksWhenDataServiceRestarted()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bandwidth estimation source="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10402fa

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isImsDelayTearDownUntilVoiceCallEndEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isImsDelayTearDownUntilVoiceCallEndEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1686
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isEnhancedIwlanHandoverCheckEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isEnhancedIwlanHandoverCheckEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isTetheringProfileDisabledForRoaming="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTetheringProfileDisabledForRoaming()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1689
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "allowClearInitialAttachDataProfile="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "forcedCellularTransportCapabilities="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getForcedCellularTransportCapabilities()Ljava/util/Set;

    move-result-object p0

    .line 1693
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1694
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1692
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getAllowedInitialAttachApnTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1528
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "allowed_initial_attach_apn_types_string_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1531
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda16;-><init>()V

    .line 1532
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1533
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1536
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAnomalyNetworkConnectingTimeoutMs()I
    .locals 0

    .line 1056
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    return p0
.end method

.method public blacklist getAnomalyNetworkDisconnectingTimeoutMs()I
    .locals 0

    .line 1064
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    return p0
.end method

.method public blacklist getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAutoDataSwitchAvailabilityStabilityTimeThreshold()J
    .locals 2

    .line 1178
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0004

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getAutoDataSwitchAvailabilitySwitchbackStabilityTimeThreshold()J
    .locals 2

    .line 1201
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getAutoDataSwitchPerformanceStabilityTimeThreshold()J
    .locals 2

    .line 1188
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getAutoDataSwitchScore(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/SignalStrength;)I
    .locals 0

    .line 1148
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    .line 1149
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 1148
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 1150
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAutoDataSwitchScoreTolerance()I
    .locals 1

    .line 1160
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public blacklist getAutoDataSwitchValidationMaxRetry()I
    .locals 1

    .line 1168
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public blacklist getBandwidthEstimateSource()I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1285
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x10402fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1287
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "bandwidth_estimator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "modem"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v5, "carrier_config"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bandwidth estimation source config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return v2

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x488da597 -> :sswitch_2
        0x633fb2a -> :sswitch_1
        0xc19d372 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;
    .locals 0

    .line 915
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    .line 916
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 915
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    if-eqz p0, :cond_0

    return-object p0

    .line 920
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    const/16 p1, 0xe

    invoke-direct {p0, p1, p1}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    return-object p0
.end method

.method public blacklist getCapabilitiesExemptFromSingleDataNetwork()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 781
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataHandoverRetryRules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataServicePackageName()Ljava/lang/String;
    .locals 1

    .line 954
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_data_service_wwan_package_override_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataSetupRetryRules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation

    .line 600
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataStallRecoveryDelayMillis()[J
    .locals 1

    .line 1486
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "data_stall_recovery_timers_long_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataStallRecoveryShouldSkipArray()[Z
    .locals 1

    .line 1497
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "data_stall_recovery_should_skip_bool_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultMtu()I
    .locals 1

    .line 962
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "default_mtu_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultPreferredApn()Ljava/lang/String;
    .locals 1

    .line 1507
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "default_preferred_apn_name_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultTcpConfigString()Ljava/lang/String;
    .locals 1

    .line 1241
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10403e2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEsimBootStrapMaxDataLimitBytes()J
    .locals 2

    .line 969
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e00bf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getForcedCellularTransportCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1576
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x107010c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1579
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;-><init>()V

    .line 1580
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1581
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getHandoverRules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;",
            ">;"
        }
    .end annotation

    .line 1433
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getImsDeregistrationDelay()J
    .locals 2

    .line 1249
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0095

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getMeteredNetworkCapabilities(Z)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 674
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 675
    :goto_0
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;-><init>()V

    .line 676
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;-><init>()V

    .line 677
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 678
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/16 p1, 0x23

    .line 683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x22

    .line 684
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNetworkCapabilityPriority(I)I
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getNetworkHandoverTimeoutMs()I
    .locals 0

    .line 1072
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    return p0
.end method

.method public blacklist getNetworkTypesOnlySupportSingleDataNetwork()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 771
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNrAdvancedCapablePcoId()I
    .locals 1

    .line 1516
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "nr_advanced_capable_pco_id_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getReevaluateBootstrapSimDataUsageMillis()J
    .locals 4

    .line 978
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e013f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    .line 982
    sget-wide v0, Lcom/android/internal/telephony/data/DataConfigManager;->REEVALUATE_BOOTSTRAP_SIM_DATA_USAGE_MILLIS:J

    :cond_0
    return-wide v0
.end method

.method public blacklist getRetrySetupAfterDisconnectMillis()J
    .locals 2

    .line 1440
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_data_call_apn_retry_after_disconnect_long"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSatelliteDataSupportMode()I
    .locals 1

    .line 928
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "satellite_data_support_mode_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .locals 2

    .line 1218
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1220
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "KDI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1221
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1222
    const-string v0, "NR_n275i"

    goto :goto_0

    .line 1224
    :cond_0
    const-string v0, "NR_n78a"

    .line 1228
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultTcpConfigString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public blacklist getUnsupportedNetworkCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1336
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x1070186

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;-><init>()V

    .line 1338
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1339
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 435
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-void

    .line 443
    :cond_0
    const-string p1, "EVENT_DEVICE_CONFIG_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDeviceConfig()V

    .line 445
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 437
    :cond_1
    const-string p1, "EVENT_CARRIER_CONFIG_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateCarrierConfig()V

    .line 439
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist isAnyMeteredCapability([IZ)Z
    .locals 1

    .line 718
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;Z)V

    .line 719
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isApnConfigAnomalyReportEnabled()Z
    .locals 0

    .line 1080
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsApnConfigAnomalyReportEnabled:Z

    return p0
.end method

.method public blacklist isConfigCarrierSpecific()Z
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_config_applied_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataRoamingEnabledByDefault()Z
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_data_roaming_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 625
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 626
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 627
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_international_data_roaming_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataRoamingEnabled : USC/DSG/DSA Default international data roaming enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public blacklist isEnhancedIwlanHandoverCheckEnabled()Z
    .locals 1

    .line 1547
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x11101aa

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isIgnoringDataRoamingSettingForSatellite()Z
    .locals 1

    .line 938
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "satellite_ignore_data_roaming_setting_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isImsDelayTearDownUntilVoiceCallEndEnabled()Z
    .locals 1

    .line 1276
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "delay_ims_tear_down_until_call_end_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isInvalidQnsParamAnomalyReportEnabled()Z
    .locals 0

    .line 1048
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsInvalidQnsParamAnomalyReportEnabled:Z

    return p0
.end method

.method public blacklist isIwlanHandoverPolicyEnabled()Z
    .locals 1

    .line 1267
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x11101a6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isMeteredCapability(IZ)Z
    .locals 0

    .line 705
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->getMeteredNetworkCapabilities(Z)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNetworkTypeUnmetered(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z
    .locals 0

    .line 852
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 853
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 854
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 855
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isPingTestBeforeAutoDataSwitchRequired()Z
    .locals 1

    .line 810
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x1110011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isTempNotMeteredSupportedByCarrier()Z
    .locals 1

    .line 819
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "network_temp_not_metered_supported_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isTetheringProfileDisabledForRoaming()Z
    .locals 1

    .line 693
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "disable_dun_apn_while_roaming_with_preset_apn_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .locals 3

    .line 1399
    const-string v0, ": "

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;-><init>(JI)V

    .line 1400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v1

    .line 1402
    :cond_0
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1403
    array-length p3, p2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    .line 1404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Format should be in \"time window in ms,occurrences\". Using default instead."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 1412
    :try_start_0
    aget-object p3, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    .line 1418
    :try_start_1
    aget-object v2, p2, p1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1423
    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-direct {p1, p3, p4, p0}, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;-><init>(JI)V

    return-object p1

    :catch_0
    move-exception p3

    .line 1420
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing SlidingWindow occurrence as integer "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception p3

    .line 1414
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing SlidingWindow window span "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist shouldHonorRetryTimerForEmergencyNetworkRequest()Z
    .locals 1

    .line 1567
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x11101cc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldKeepNetworkUpInNonVops(I)Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->allowBringUpNetworkInNonVops(I)Z

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

.method public blacklist shouldPersistIwlanDataNetworksWhenDataServiceRestarted()Z
    .locals 1

    .line 1258
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x11102c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldResetDataThrottlingWhenTacChanges()Z
    .locals 1

    .line 946
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "unthrottle_data_retry_when_tac_changes_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldUseDataActivityForRrcDetection()Z
    .locals 1

    .line 726
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "lte_endc_using_user_data_for_rrc_detection_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
