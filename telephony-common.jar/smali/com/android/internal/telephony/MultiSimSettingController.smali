.class public Lcom/android/internal/telephony/MultiSimSettingController;
.super Landroid/os/Handler;
.source "MultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;,
        Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0x8

.field public static final blacklist EVENT_RADIO_STATE_CHANGED:I = 0x9

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field protected static blacklist sInstance:Lcom/android/internal/telephony/MultiSimSettingController;


# instance fields
.field private blacklist mActiveModemCount:I

.field private blacklist mCallbacksCount:I

.field private blacklist mCarrierConfigLoadedSubIds:[I

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mConvertedPsimSubId:I

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mGetActiveSubIds:[I

.field private blacklist mInitialHandling:Z

.field private final blacklist mIsAskEverytimeSupportedForSms:Z

.field private blacklist mPrimarySubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubInfoInitialized:Z

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$4UrN2ZMe4T1KPCzRacrWAwrB38Q(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 783
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$DWXUSY8r1Bqs6I96sCQH_cbkjvc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;
    .locals 0

    .line 785
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$gUeMTUTT2xFmVg77KR2BF49poco(Lcom/android/internal/telephony/MultiSimSettingController;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MultiSimSettingController;->lambda$new$0(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p0_pBQTGu-AkxSR0bHlJP69Q5l4(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 784
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 144
    const-string v0, "phone1_on"

    const-string v1, "phone2_on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimSettingController;->PHONE_ON_KEY:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 149
    sput-object v0, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 243
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 244
    iput-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 247
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 249
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    .line 250
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    const/4 v1, -0x1

    .line 251
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 253
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    const/16 p2, 0x8

    const/4 v0, 0x0

    .line 255
    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x111025b

    .line 259
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mIsAskEverytimeSupportedForSms:Z

    .line 261
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_0

    .line 264
    new-instance p2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    new-instance v0, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    invoke-virtual {p1, p2, v0}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 269
    :cond_0
    const-string p1, "MultiSimSettingController"

    const/16 p2, 0x40

    invoke-static {p1, p2}, Lcom/android/internal/telephony/PhoneFactory;->addLocalLog(Ljava/lang/String;I)V

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->getConvertedPsimSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    return-void
.end method

.method private blacklist areSubscriptionsInSameGroup(II)Z
    .locals 3

    .line 1130
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1131
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    return v0

    .line 1134
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1135
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    .line 1136
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1137
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 1139
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1140
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist deactivateGroupedOpportunisticSubscriptionIfNeeded()V
    .locals 4

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1253
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1252
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1253
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda0;-><init>()V

    .line 1254
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1255
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1257
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1259
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1261
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v2

    .line 1262
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isGroupDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivateGroupedOpportunisticSubscriptionIfNeeded: Deactivating grouped opportunistic subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1265
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    .line 1275
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[deactivateSubscription] eSIM profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v1, "euicc"

    .line 1278
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 1280
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v1, -0x1

    .line 1279
    invoke-virtual {v0, v1, p1, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private blacklist getConvertedPsimSubscriptionId()I
    .locals 5

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1018
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1019
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1020
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getTransferStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1021
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    .line 1025
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConvertedPsimSubscriptionId: convertedSubId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/MultiSimSettingController;
    .locals 3

    .line 216
    const-class v0, Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-enter v0

    .line 217
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_0

    .line 218
    const-string v1, "MultiSimSettingController"

    const-string v2, "getInstance null"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 221
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object v1

    .line 222
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getSubState(I)I
    .locals 4

    .line 1458
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1459
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private blacklist hasCalling()Z
    .locals 2

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->enforceCallingFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 280
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.calling"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist hasData()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.data"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist hasMessaging()Z
    .locals 2

    .line 292
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->enforceSMSFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 295
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.messaging"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/MultiSimSettingController;
    .locals 2

    .line 230
    const-class v0, Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-enter v0

    .line 231
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 234
    :cond_0
    const-string p0, "MultiSimSettingController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times!  sInstance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/MultiSimSettingController;->sInstance:Lcom/android/internal/telephony/MultiSimSettingController;

    monitor-exit v0

    return-object p0

    .line 237
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist isReadyToReevaluate()Z
    .locals 4

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isCarrierConfigLoadedForAllSub()Z

    move-result v0

    .line 545
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 553
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyToReevaluate: subInfoInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", carrierConfigsLoaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", satelliteEnabledOrBeingEnabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 560
    iget-boolean p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->onCarrierConfigChanged(II)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 1448
    const-string p0, "MultiSimSettingController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1453
    const-string p0, "MultiSimSettingController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onAllSubscriptionsLoaded()V
    .locals 6

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllSubscriptionsLoaded: mSubInfoInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 443
    iget-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    .line 445
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->getConvertedPsimSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mConvertedPsimSubId:I

    .line 446
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 447
    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->registerDataSettingsControllerCallbackAsNeeded()V

    .line 453
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void
.end method

.method private blacklist onCarrierConfigChanged(II)V
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierConfigChanged phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 485
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Carrier config change with invalid phoneId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    return-void

    .line 491
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 492
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 493
    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 495
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    aput p2, p0, p1

    return-void
.end method

.method private blacklist onDefaultDataSettingChanged()V
    .locals 1

    .line 575
    const-string v0, "onDefaultDataSettingChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V

    return-void
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .locals 5

    .line 526
    iput p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiSimConfigChanged: current ActiveModemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 v1, -0x1

    .line 531
    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 534
    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->registerDataSettingsControllerCallbackAsNeeded()V

    return-void
.end method

.method private blacklist onRoamingDataEnabled(IZ)V
    .locals 1

    .line 430
    const-string v0, "onRoamingDataEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setRoamingDataEnabledForGroup(IZ)V

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDataRoaming(II)I

    return-void
.end method

.method private blacklist onSubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    .locals 9

    .line 586
    const-string v0, "data_roaming"

    const-string v1, "mobile_data"

    const-string v2, "onSubscriptionGroupChanged"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 589
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 590
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 594
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 595
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 596
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 597
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v6

    .line 603
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refSubId is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 607
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v4}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v1

    .line 615
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v6, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 616
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 617
    invoke-virtual {v7}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 616
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 618
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 619
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v8, v3

    .line 626
    :cond_4
    invoke-direct {p0, v4, v1, v8}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZZ)V

    .line 630
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v4}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 632
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 635
    :catch_1
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result p1

    .line 637
    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V

    .line 640
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->syncGroupedSetting(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist onSubscriptionsChanged()V
    .locals 1

    .line 463
    const-string v0, "onSubscriptionsChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void
.end method

.method private blacklist onUserDataEnabled(IZZ)V
    .locals 3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onUserDataEnabled] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " setDefaultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->setUserDataEnabledForGroup(IZ)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    .line 414
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v2

    if-eq v1, p1, :cond_0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz v2, :cond_0

    .line 420
    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "user_preferred_data_sub"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    :cond_0
    return-void
.end method

.method private blacklist reEvaluateAll()V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaults()V

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->disableDataForNonDefaultNonOpportunisticSubscriptions()V

    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->deactivateGroupedOpportunisticSubscriptionIfNeeded()V

    return-void
.end method

.method private blacklist registerDataSettingsControllerCallbackAsNeeded()V
    .locals 6

    .line 1438
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1439
    iget v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCallbacksCount:I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1440
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;

    aget-object v4, v0, v1

    new-instance v5, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/MultiSimSettingController$DataSettingsControllerCallback;-><init>(Lcom/android/internal/telephony/Phone;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1443
    :cond_0
    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCallbacksCount:I

    return-void
.end method

.method private blacklist setRoamingDataEnabledForGroup(IZ)V
    .locals 3

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1188
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1189
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1190
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 1191
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1192
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1191
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1195
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1197
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "data_roaming"

    .line 1198
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 1197
    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1209
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;",
            "Z)Z"
        }
    .end annotation

    .line 1216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_2

    .line 1217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDefaultValue] Record.id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p4, :cond_0

    if-ne p2, v1, :cond_0

    .line 1227
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[updateDefaultValue] updates to subId="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    move v1, v0

    :cond_2
    if-eq p2, v1, :cond_3

    .line 1234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[updateDefaultValue: subId] from "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1235
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;->update(I)V

    .line 1238
    :cond_3
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1239
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1245
    :cond_4
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    return p0
.end method

.method private blacklist updatePrimarySubListAndGetChangeType(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)I"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 782
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda6;-><init>()V

    .line 783
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda7;-><init>()V

    .line 784
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda8;-><init>()V

    .line 785
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 786
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    .line 791
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    .line 793
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 795
    const-string v5, "ro.build.version.oneui"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const v6, 0xeac4

    if-ge v5, v6, :cond_1

    .line 796
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/MultiSimSettingController;->PHONE_ON_KEY:[Ljava/lang/String;

    .line 797
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    aget-object v6, v6, v7

    .line 796
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 799
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v5

    if-ne v5, v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-ne v5, v4, :cond_0

    .line 804
    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    aput v3, v4, v2

    move v2, v5

    goto :goto_0

    .line 809
    :cond_3
    iget-boolean p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    if-eqz p1, :cond_4

    .line 810
    iput-boolean v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mInitialHandling:Z

    const/4 p0, 0x6

    return p0

    .line 813
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    .line 814
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_6

    return v4

    .line 816
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_b

    .line 819
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 821
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 822
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v5

    if-eqz v5, :cond_8

    move v2, v4

    goto :goto_2

    :cond_9
    move v2, v1

    :goto_2
    if-nez v2, :cond_7

    const/4 p0, 0x3

    return p0

    :cond_a
    const/4 p0, 0x4

    return p0

    .line 834
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 835
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    .line 836
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 838
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    .line 846
    :cond_e
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_c

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePrimarySubListAndGetChangeType]: missing active primary subId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 839
    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 840
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->areSubscriptionsInSameGroup(II)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x7

    return p0

    :cond_11
    const/4 p0, 0x2

    return p0

    :cond_12
    const/4 p0, 0x5

    return p0
.end method

.method private blacklist updateUserPreferences(Ljava/util/List;ZZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 1297
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1298
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubInfoCountMax()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "multi_sim_existing_data_call"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1313
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "multi_sim_existing_voice_call"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1315
    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_existing_sms"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUserPreferences:  dds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " voice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sms = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v3

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1325
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v9

    if-ne v9, v1, :cond_1

    if-ne v5, v3, :cond_1

    move v5, v8

    goto :goto_0

    :cond_2
    if-ne v5, v3, :cond_3

    .line 1331
    const-string p1, "updateUserPreferences: autoDefaultSubId is -1"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return-void

    .line 1335
    :cond_3
    const-string p1, "CN"

    const-string v8, "ro.csc.countryiso_code"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v10, 0x0

    if-nez p1, :cond_5

    const-string p1, "HK"

    .line 1336
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "TW"

    .line 1337
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v10

    goto :goto_2

    :cond_5
    :goto_1
    move p1, v1

    .line 1339
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "prefered_voice_call"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_6

    move v10, v1

    .line 1340
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasCalling()Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez p3, :cond_a

    if-eqz v10, :cond_7

    .line 1341
    iget-object v8, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    array-length v8, v8

    if-eq v8, v1, :cond_7

    .line 1342
    const-string v1, "updateUserPreferences: update invalid subid for always ask"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1345
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v1

    if-nez v1, :cond_8

    .line 1346
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSlotId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v3

    .line 1347
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v1

    if-nez v1, :cond_9

    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v2

    .line 1352
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    :cond_a
    if-nez p4, :cond_c

    .line 1356
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v1

    if-nez v1, :cond_b

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSlotId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v4

    .line 1358
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v1

    if-nez v1, :cond_b

    move v4, v5

    .line 1362
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    :cond_c
    if-eqz p1, :cond_d

    .line 1366
    invoke-static {}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getPreferredDataSubId()I

    move-result v1

    .line 1367
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUserPreferences: ForChina, prefDataSubId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1373
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v1

    if-nez v1, :cond_e

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSlotId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    .line 1375
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->getSubState(I)I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    move v5, v0

    :goto_4
    if-nez p1, :cond_f

    if-nez p2, :cond_10

    .line 1381
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    .line 1411
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateUserPreferences: after dds = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1412
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1413
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1414
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    :cond_11
    :goto_5
    return-void
.end method


# virtual methods
.method protected blacklist disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .locals 0

    .line 1105
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 350
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move p1, v2

    .line 382
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mActiveModemCount:I

    if-ge p1, v0, :cond_1

    .line 383
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radio unavailable on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", clearing sub info initialized flag"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 390
    iput-boolean v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 378
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 379
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onMultiSimConfigChanged(I)V

    return-void

    .line 375
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onDefaultDataSettingChanged()V

    return-void

    .line 371
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelUuid;

    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionGroupChanged(Landroid/os/ParcelUuid;)V

    return-void

    .line 368
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionsChanged()V

    return-void

    .line 364
    :pswitch_6
    const-string p1, "EVENT_ALL_SUBSCRIPTIONS_LOADED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->onAllSubscriptionsLoaded()V

    return-void

    .line 358
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 359
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 360
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onRoamingDataEnabled(IZ)V

    return-void

    .line 352
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 353
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_3

    move v2, v1

    .line 354
    :cond_3
    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->onUserDataEnabled(IZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist isCarrierConfigLoadedForAllSub()Z
    .locals 9

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 508
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 510
    iget-object v5, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    if-ne v8, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 517
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carrier config subId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not loaded."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist notifyAllSubscriptionLoaded()V
    .locals 1

    .line 322
    const-string v0, "notifyAllSubscriptionLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 323
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyDefaultDataSubChanged()V
    .locals 1

    const/4 v0, 0x6

    .line 345
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyRoamingDataEnabled(IZ)V
    .locals 1

    .line 312
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 313
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public blacklist notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    .locals 1

    const/4 v0, 0x5

    .line 338
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifySubscriptionInfoChanged()V
    .locals 1

    .line 330
    const-string v0, "notifySubscriptionInfoChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 331
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist notifyUserDataEnabled(IZ)V
    .locals 1

    .line 303
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public blacklist onPhoneRemoved()V
    .locals 2

    .line 475
    const-string v0, "onPhoneRemoved"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 476
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->reEvaluateAll()V

    return-void

    .line 477
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This method must be called from the same looper as MultiSimSettingController."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist setUserDataEnabledForGroup(IZ)V
    .locals 3

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserDataEnabledForGroup subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1151
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1152
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1154
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1155
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1153
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    .line 1160
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1161
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1163
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1166
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 1165
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1170
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 1172
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1170
    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    goto :goto_1

    .line 1176
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v2, "mobile_data"

    invoke-static {v0, v2, v1, p2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method protected blacklist updateDefaults()V
    .locals 6

    .line 658
    const-string v0, "updateDefaults"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "type_to_set_preferred_slot"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDefaults]: type_to_set_preferred_slot :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 670
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mContext:Landroid/content/Context;

    .line 671
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 673
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 675
    const-string v0, "updateDefaults: No active sub. Setting default to INVALID sub."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mGetActiveSubIds:[I

    .line 678
    iput-boolean v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubInfoInitialized:Z

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    .line 684
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    return-void

    .line 689
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->updatePrimarySubListAndGetChangeType(Ljava/util/List;)I

    move-result v0

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultValues: change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    if-nez v0, :cond_4

    goto :goto_0

    .line 698
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultValues: to only primary sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 702
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasData()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSubId(I)V

    .line 703
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasCalling()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSubId(I)V

    .line 704
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasMessaging()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSubId(I)V

    :cond_7
    :goto_0
    return-void

    .line 725
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDefaultValues: records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 733
    const-string v0, "updateDefaultValues: Update default data subscription"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 735
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 736
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 734
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v0

    goto :goto_1

    :cond_9
    move v0, v4

    .line 739
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasCalling()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 741
    const-string v1, "updateDefaultValues: Update default voice subscription"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 743
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 744
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 742
    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v1

    goto :goto_2

    :cond_a
    move v1, v4

    .line 747
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/MultiSimSettingController;->hasMessaging()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 749
    const-string v2, "updateDefaultValues: Update default sms subscription"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->log(Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 752
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 753
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/MultiSimSettingController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 751
    invoke-direct {p0, v2, v3, v5}, Lcom/android/internal/telephony/MultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v4

    .line 773
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->updateUserPreferences(Ljava/util/List;ZZZ)V

    return-void
.end method
