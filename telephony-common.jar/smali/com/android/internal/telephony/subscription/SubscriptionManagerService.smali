.class public Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;,
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;,
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;,
        Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;
    }
.end annotation


# static fields
.field private static final blacklist BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

.field private static final blacklist DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FILTER_ACCESSIBLE_SUBS_BY_USER:J = 0x11a5c582L

.field private static final blacklist IS_INDIA:Z

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field public static final blacklist REQUIRE_DEVICE_IDENTIFIERS_FOR_GROUP_UUID:J = 0xcbfe60dL

.field public static final blacklist SIM_MEP_TRAY_ADDED:I = 0x5

.field public static final blacklist SIM_MEP_TRAY_REMOVED:I = 0x4

.field public static final blacklist SIM_SWAP_ADDED:I = 0x1

.field public static final blacklist SIM_SWAP_REMOVED:I = 0x0

.field public static final blacklist SIM_TRAY_ADDED:I = 0x3

.field public static final blacklist SIM_TRAY_REMOVED:I = 0x2

.field private static final blacklist SUPPORTED_MODEM_COUNT:I

.field private static final blacklist TRANSFERRED_PSIM_SUBID:[Ljava/lang/String;

.field private static blacklist bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

.field private static final blacklist isCNHKTW:Z

.field private static blacklist mPhoneOn:[I

.field private static blacklist sInstance:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# instance fields
.field private blacklist mAllSimOffCheck:Z

.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mBackgroundHandler:Landroid/os/Handler;

.field private blacklist mCardSwapCount:I

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private final blacklist mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private final blacklist mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private final blacklist mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

.field private blacklist mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

.field private final blacklist mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIccid:[Ljava/lang/String;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field public final blacklist mMessageHandler:Landroid/os/Handler;

.field private blacklist mNetId:I

.field private blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mPhoneIdForNetworkCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPrefNwUpdater:Lcom/android/internal/telephony/PreferredNetworkUpdater;

.field private final blacklist mSimState:[I

.field private final blacklist mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSoftSimActive:[Z

.field private final blacklist mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

.field private final blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final blacklist mSubscriptionManagerServiceCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private blacklist mUserIdToAvailableSubs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mVendorApiLevel:I

.field private final blacklist phoneOn1Observer:Landroid/database/ContentObserver;

.field private final blacklist phoneOn2Observer:Landroid/database/ContentObserver;

.field private blacklist sSemCi:[Lcom/android/internal/telephony/SemCommandsInterface;


# direct methods
.method public static synthetic blacklist $r8$lambda$2O8bYkcAliGnTyv09NvIOGeoCzA(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$markSubscriptionsInactive$6(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3KobC1mbFgab_5mDli6t_lkppdc(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateEmbeddedSubscriptions$8(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5OTjLXO6XJXVeS_GqwwZ5pYTpjc(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getSubscriptionsInGroup$25(Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8ALRo4RNNK-ow7g8APJFiQlFdAo(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ZLandroid/os/UserHandle;Ljava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getActiveSubIdListAsUser$28(ZLandroid/os/UserHandle;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BA0WLmVkQm29e5MT6xE-WDz0ilk(Landroid/os/ParcelUuid;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 921
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BdNvpEQan2qa5Ol8ZazEoZcV3J8(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getOpportunisticSubscriptions$22(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CvxsdHiJrtfyAhaRY6RJUuh03qw(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$new$0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EA_ZiX7g2HaYe3zCpR0T7i_S8LU(Ljava/lang/String;)Z
    .locals 0

    .line 5290
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$EOOe211rAJ606jAjnng7sgzsEPI(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/UserHandle;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getSubscriptionInfoStreamAsUser$33(Landroid/os/UserHandle;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Ec2LvuOHKJZzZRBbBNkc1IJl0Vk(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAllSubInfoList$16(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$GQzSZ6dqnRlUbmJjvnZQ3gOydIk(ILcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 1

    .line 3776
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HQ6sD-Ypo_ZQxJMbV4JvI1--m1c(Ljava/util/Set;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 1576
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$HfmFG67cF-ifheiL2Hbxhd5KTX0(ILjava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 1

    .line 1994
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1995
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object p0

    .line 1994
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$IbbtxufaQUpvKtXXBShxG6JX_iA(ILcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 1288
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$JtFxg-slsovEKst3jOnaSeCFw48(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 5291
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$MdVJ7g7TzWs-ca3APy990nxl4Yg(Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 1

    .line 1940
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1941
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isEmbedded()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$NLF3-rt4fRge9glzTIcBnExKjKY(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    .line 6033
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Nnklcn2PAenyU2qWJdkBZ7P4LAo(ILcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 1

    .line 4318
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda53;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda53;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NnwAWvjHI7UhUsbXYUFcndm0M9Y(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAllSubInfoList$17(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$PjSwhd2lE7RKr0MUWLzKZ2laX7s(Ljava/lang/String;)Z
    .locals 0

    .line 5363
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$RUQLFTNgnKvLltKcQ3oazPfnq4s(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V
    .locals 0

    .line 4319
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->onUiccApplicationsEnabledChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RvfjPiLOZPRRJFTZv69-uqNdoYQ(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$new$1(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VlWJg_Zjv-JEUMYSz-gXrOVqhSU(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$new$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wc_ngiaXOf-eHLZUflMUflePTi0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAvailableSubscriptionsInternalStream$19(Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_fmINilRR3Eja9WNqFRoL9Yrpac(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 5542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$cY9elXGbcxj1can9sGPTKqxWyEs(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSimStateForInactivePort$34(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eeyiZ8oOrx60VPCmDvbTM-7nD9s(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z
    .locals 0

    .line 3422
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$fdM6ImgZeOKLZ436NRkk-rlbiC4(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateEmbeddedSubscriptions$9(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$fj0GfwO0yUO3hOf_SsXtZLaD5PM(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSimState$35(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hBSXz0SYpktsv6WZC-c3BWBbdMU(ILcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 1

    .line 4167
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$h_CDPjM1Is0zqNkeO9s6gqWNFvw(Ljava/lang/Integer;)I
    .locals 0

    .line 3979
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$iDD3gWq8W6TKyRsslw-iAH5aSiw(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getActiveSubscriptionInfoList$18(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$jJNoRSjWMmhktwweflY4fJHTN9g(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .locals 0

    .line 6022
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$k3ogaB69bS-bn97tveyP2nfoHck(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 5201
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5202
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$kQUFslkw77CFUtVKYtw8W6X8LoE(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getAccessibleSubscriptionInfoList$20(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$m1UVNlUsHcKEZC6AGW-_FfpWSXg(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 5473
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$nYOrFlhqWLeHkFVdhdr8bSCU2dM(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSubscription$13(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oG2sDqHgpFvbce7ifKmGDb4vq1Y(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateSubscriptionByCarrierConfig$15(ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p1e1UQ1MXk4sLVBWIaT02bsrb60(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 5977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logical SIM slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": subId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qEsWMbTKajj7hXe5A4kqn9atLT0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getOpportunisticSubscriptions$21(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qIm2YNZOszqUzfCfwu41OzfIqQA(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/Runnable;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$updateEmbeddedSubscriptions$11(Ljava/lang/Runnable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ti25Ze69KcghbuNUU4VOlWlbQtc(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 5364
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vgvDQQXcEASWhiLbaG_PJHLUZVI(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V
    .locals 0

    .line 3777
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->onDefaultDataSubscriptionChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vzTV8OO6nk4l4se-GaB0Y1pxR0g(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$getSubscriptionsInGroup$24(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wB1It6QIFNZinJ4Fou9Uv5nKpnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;
    .locals 0

    .line 6016
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xSfcifxoNvMusuk7d_KFoZXorXM(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->lambda$syncGroupedSetting$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xs7qVIM8c7i54r-FsEpahLJiXUE(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    .line 6028
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zh5QeNF7Ngx-Q27iGsPl2hgvyto(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1603
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mCardSwapCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccid(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mIccid:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetId(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionDatabaseManager(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionManagerServiceCallbacks(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllSimOffCheck(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAllSimOffCheck:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mCardSwapCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetId(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEsimBootstrapTimer(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->cancelEsimBootstrapTimer()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misActiveSlot(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isActiveSlot(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEmbeddedSubscriptions(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSubStatus(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubStatus(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSubscription(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUserIdToAvailableSubs(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateUserIdToAvailableSubs()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSUPPORTED_MODEM_COUNT()I
    .locals 1

    .line 0
    sget v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 40

    .line 209
    const-string v38, "satellite_entitlement_data_service_policy"

    const-string v39, "satellite_entitlement_voice_service_policy"

    const-string v1, "enable_cmas_extreme_threat_alerts"

    const-string v2, "enable_cmas_severe_threat_alerts"

    const-string v3, "enable_cmas_amber_alerts"

    const-string v4, "enable_emergency_alerts"

    const-string v5, "alert_sound_duration"

    const-string v6, "alert_reminder_interval"

    const-string v7, "enable_alert_vibrate"

    const-string v8, "enable_alert_speech"

    const-string v9, "enable_etws_test_alerts"

    const-string v10, "enable_channel_50_alerts"

    const-string v11, "enable_cmas_test_alerts"

    const-string v12, "show_cmas_opt_out_dialog"

    const-string v13, "volte_vt_enabled"

    const-string v14, "vt_ims_enabled"

    const-string v15, "wfc_ims_enabled"

    const-string v16, "wfc_ims_mode"

    const-string v17, "wfc_ims_roaming_mode"

    const-string v18, "wfc_ims_roaming_enabled"

    const-string v19, "enabled_mobile_data_policies"

    const-string v20, "ims_rcs_uce_enabled"

    const-string v21, "cross_sim_calling_enabled"

    const-string v22, "rcs_config"

    const-string v23, "allowed_network_types_for_reasons"

    const-string v24, "d2d_sharing_status"

    const-string v25, "voims_opt_in_status"

    const-string v26, "d2d_sharing_contacts"

    const-string v27, "nr_advanced_calling_enabled"

    const-string v28, "satellite_enabled"

    const-string v29, "satellite_attach_enabled_for_carrier"

    const-string v30, "is_only_ntn"

    const-string v31, "satellite_entitlement_status"

    const-string v32, "satellite_entitlement_plmns"

    const-string v33, "satellite_esos_supported"

    const-string v34, "is_satellite_provisioned_for_non_ip_datagram"

    const-string v35, "satellite_entitlement_barred_plmns"

    const-string v36, "satellite_entitlement_data_plan_plmns"

    const-string v37, "satellite_entitlement_service_type_map"

    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;

    .line 270
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    .line 531
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    .line 534
    const-string v1, "ro.csc.countryiso_code"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const-string v3, "HK"

    .line 535
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TW"

    .line 536
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isCNHKTW:Z

    .line 538
    const-string v1, "INU"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "INS"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :cond_3
    :goto_2
    sput-boolean v4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->IS_INDIA:Z

    .line 558
    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    .line 565
    const-string v0, "phone4_on"

    const-string v1, "phone5_on"

    const-string v2, "phone1_on"

    const-string v3, "phone2_on"

    const-string v4, "phone3_on"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    .line 570
    const-string v0, "subid_for_transferred_psim_slot_1"

    const-string v1, "subid_for_transferred_psim_slot_2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->TRANSFERRED_PSIM_SUBID:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 10

    .line 687
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 332
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 340
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    .line 344
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    .line 378
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAllSimOffCheck:Z

    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 388
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneIdForNetworkCallback:Ljava/util/Set;

    const/4 v2, -0x1

    .line 389
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetId:I

    const/4 v3, 0x0

    .line 556
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mCardSwapCount:I

    .line 560
    sget v4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSoftSimActive:[Z

    .line 562
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPrefNwUpdater:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    .line 563
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mIccid:[Ljava/lang/String;

    .line 575
    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$1;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->phoneOn1Observer:Landroid/database/ContentObserver;

    .line 582
    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->phoneOn2Observer:Landroid/database/ContentObserver;

    .line 597
    new-instance v7, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    iput-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mMessageHandler:Landroid/os/Handler;

    .line 688
    const-string v7, "Created SubscriptionManagerService"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 689
    sput-object p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->sInstance:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 690
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 691
    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 692
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 693
    const-class v7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionManager;

    iput-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 694
    const-class v7, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/euicc/EuiccManager;

    iput-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 695
    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    iput-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 697
    const-string v7, "ro.vendor.api_level"

    sget v8, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mVendorApiLevel:I

    .line 700
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 701
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    .line 706
    new-instance p2, Landroid/os/HandlerThread;

    const-string v7, "SMSVC"

    invoke-direct {p2, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 709
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v8, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 712
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_voice_call"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p2, p0, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 728
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$5;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_data_call"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p2, p0, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$5;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 744
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "multi_sim_sms"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p2, p0, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$6;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 760
    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    .line 762
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    .line 763
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 765
    invoke-static {p1}, Lcom/android/internal/telephony/SemPhoneFactory;->getSemCommandsInterfaces(Landroid/content/Context;)[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->sSemCi:[Lcom/android/internal/telephony/SemCommandsInterface;

    .line 767
    sget-boolean p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isCNHKTW:Z

    if-eq p2, v0, :cond_0

    sget-boolean p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->IS_INDIA:Z

    if-ne p2, v0, :cond_1

    .line 768
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->make(Landroid/content/Context;)Lcom/android/internal/telephony/PreferredNetworkUpdater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPrefNwUpdater:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    .line 769
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mIccid:[Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 772
    :cond_1
    const-string p2, "ro.build.version.oneui"

    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const p3, 0xeac4

    if-ge p2, p3, :cond_2

    if-le v4, v0, :cond_2

    .line 774
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "phone1_on"

    .line 775
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 774
    invoke-virtual {p2, p3, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 777
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "phone2_on"

    .line 778
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 777
    invoke-virtual {p2, p3, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 781
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->sSemCi:[Lcom/android/internal/telephony/SemCommandsInterface;

    array-length p3, p2

    if-ge v3, p3, :cond_3

    .line 783
    aget-object p2, p2, v3

    iget-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mMessageHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p3, v0, v1}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 792
    :cond_3
    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 794
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 796
    new-instance p3, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$7;

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    .line 800
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$7;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/util/concurrent/Executor;)V

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;)V

    iput-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 844
    const-string p1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 845
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p2

    .line 844
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 847
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 853
    const-string p1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 854
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result p2

    .line 853
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 855
    const-string p1, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    .line 856
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result p2

    .line 855
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 857
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V

    .line 861
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p1

    .line 862
    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p1

    .line 863
    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    .line 864
    invoke-virtual {p1, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    .line 867
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 876
    invoke-static {}, Landroid/telephony/SubscriptionManager;->invalidateSubscriptionManagerServiceCaches()V

    .line 878
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$8;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$8;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 884
    const-string p1, "Registered iSub service"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 886
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private blacklist areAllSubscriptionsLoaded()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1695
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1696
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllSubscriptionsLoaded: slot is null. phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1701
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllSubscriptionsLoaded: slot is inactive. phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1705
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait for port corresponding to phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to be active, portIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1706
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1711
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v2, v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1713
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 1715
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areUiccAppsDisabledOnCard(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1717
    const-string v1, "areAllSubscriptionsLoaded: NOT_READY is not a final state."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 1722
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v2, v2, v1

    if-nez v2, :cond_4

    .line 1723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areAllSubscriptionsLoaded: SIM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state is still unknown."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist areUiccAppsDisabledOnCard(I)Z
    .locals 2

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1663
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return v1

    .line 1668
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1669
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1670
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private blacklist broadcastSubId(Ljava/lang/String;I)V
    .locals 3

    .line 3931
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 3932
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3933
    invoke-static {v0, p2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 3934
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastSubId action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " subId= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .locals 1

    .line 5828
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5829
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 5830
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 5829
    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscriptionAsUser(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 5832
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 913
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda21;-><init>(Landroid/os/ParcelUuid;)V

    .line 921
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 922
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 923
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 927
    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 933
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 936
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;-><init>()V

    .line 937
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 936
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 914
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty callingPackage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 910
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid groupUuid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist cancelEsimBootstrapTimer()V
    .locals 1

    .line 2197
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2198
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 2199
    sput-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    .line 2200
    const-string v0, "bootstrapProvisioningTimer timer cancelled."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist checkAndGetSubId(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 4479
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p0

    return p0

    .line 4480
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return p1

    .line 4481
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid SubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z
    .locals 6

    .line 954
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    .line 955
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 956
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v4

    if-nez v4, :cond_0

    .line 958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCarrierPrivilegeOnSubList: subId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exist."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return v1

    .line 962
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 963
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCarrierPrivilegeOnSubList: Does not have carrier privilege on sub "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return v1

    .line 969
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCarrierPrivilegeOnSubList: cannot manage sub "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist checkPhoneNumberSource(I)V
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 4494
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkSimOffStatus()V
    .locals 1

    .line 1825
    const-string v0, "[checkSimOffStatus] start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1827
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isOffSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    const-string v0, "[makeSimOffToast] display toast by isOffSimInserted()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1829
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->makeSimOffToast()V

    .line 1832
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isNeededSimOffNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1833
    const-string v0, "[makeSimOffNotification] notification on"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1834
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->makeSimOffNotification()V

    :cond_1
    const/4 v0, 0x0

    .line 1836
    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAllSimOffCheck:Z

    return-void
.end method

.method private blacklist conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 6

    .line 1067
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1068
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->hasSubscriberIdentifierAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 1070
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->hasPhoneNumberAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    return-object p1

    .line 1077
    :cond_0
    new-instance p3, Landroid/telephony/SubscriptionInfo$Builder;

    invoke-direct {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;-><init>(Landroid/telephony/SubscriptionInfo;)V

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 1079
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    .line 1080
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    .line 1081
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    :cond_1
    if-nez p2, :cond_2

    .line 1085
    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    .line 1087
    :cond_2
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo$Builder;->build()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist enforcePermissionAccessAllUserProfiles()V
    .locals 0

    .line 0
    return-void
.end method

.method private varargs blacklist enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 4978
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->hasPermissions([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 4979
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Does not have any of the following permissions. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4981
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 5517
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x11c2f5c6

    .line 5522
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 5521
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mVendorApiLevel:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_1

    goto :goto_0

    .line 5530
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.hardware.telephony.subscription"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 5531
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported without "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist getActiveSubIdListAsUser(ZLandroid/os/UserHandle;)[I
    .locals 2

    .line 3971
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda32;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ZLandroid/os/UserHandle;)V

    .line 3972
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda33;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda33;-><init>()V

    .line 3979
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 3980
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private blacklist getAvailableSubscriptionsInternalStream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation

    .line 2759
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccIdsOfInsertedPhysicalSims()Ljava/util/List;

    move-result-object v0

    .line 2761
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda54;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/util/List;)V

    .line 2762
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCallingPackage()Ljava/lang/String;
    .locals 2

    .line 5146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5148
    const-string p0, "com.android.phone"

    return-object p0

    .line 5151
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 5152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 5151
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCardNumber(I)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 5818
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5819
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private blacklist getColor()I
    .locals 2

    .line 1327
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107020a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 1328
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1329
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1330
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p0, p0, v0

    return p0
.end method

.method private blacklist getCurrentPackageName()Ljava/lang/String;
    .locals 3

    .line 5499
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 5500
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 5502
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 5503
    :cond_1
    aget-object p0, p0, v1

    return-object p0
.end method

.method private blacklist getDefaultAsUser(II)I
    .locals 0

    .line 0
    return p2
.end method

.method private blacklist getIccId(I)Ljava/lang/String;
    .locals 0

    .line 1683
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1684
    const-string p0, ""

    return-object p0

    .line 1686
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1684
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getIccIdsOfInsertedPhysicalSims()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1099
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    .line 1103
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1106
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v4

    .line 1107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1109
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
    .locals 1

    .line 895
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->sInstance:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    return-object v0
.end method

.method private static blacklist getNameSourcePriority(I)I
    .locals 7

    const/4 v0, -0x1

    .line 1311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    .line 1312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 1313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 1314
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    .line 1315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    .line 1316
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1310
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1317
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 1318
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private blacklist getPhoneNumberFromSourceInternal(II)Ljava/lang/String;
    .locals 4

    .line 4501
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4502
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    .line 4504
    const-string v1, ""

    const-string v2, "No SubscriptionInfo found for subId="

    if-nez v0, :cond_0

    .line 4505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    .line 4522
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-object v1

    .line 4520
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumberFromIms()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4518
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumberFromCarrier()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4511
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4513
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4515
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPortIndex(Ljava/lang/String;)I
    .locals 4

    .line 1340
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    .line 1341
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    if-eqz v3, :cond_0

    .line 1343
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromIccId(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private blacklist getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;",
            ">;"
        }
    .end annotation

    .line 4901
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/UserHandle;)V

    .line 4902
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleNetworkCallback(I)V
    .locals 2

    .line 6102
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v0, v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 6104
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "22801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6105
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneIdForNetworkCallback:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6108
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneIdForNetworkCallback:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6110
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneIdForNetworkCallback:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6111
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->registerNetworkCallback()V

    return-void

    .line 6113
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->unRegisterNetworkCallback()V

    return-void
.end method

.method private varargs blacklist hasPermissions([Ljava/lang/String;)Z
    .locals 5

    .line 4991
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4992
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private blacklist hasPhoneNumberAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1012
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist hasSubscriberIdentifierAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 1034
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 8

    .line 1365
    const-string v0, "persist.radio.support.dualrat"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1366
    const-string v1, "USA"

    const-string v2, "CAN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v1

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotSupportDualRat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isUSAorCAN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1371
    sget v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-le v2, v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1372
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v0, v0

    move-wide v6, v4

    goto :goto_0

    .line 1374
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1376
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v1

    .line 1377
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getEnable2gNetworkTypeReasonInPreference()J

    move-result-wide v6

    move-wide v0, v1

    goto :goto_0

    :cond_1
    move-wide v0, v4

    move-wide v6, v0

    .line 1381
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insertSubscriptionInfo] netType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enable2g : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-static {v6, v7}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/Phone;->convertAllowedNetworkTypeMapIndexToDbName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/telephony/Phone;->convertAllowedNetworkTypeMapIndexToDbName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>()V

    .line 1392
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1393
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1394
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSimSlotIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1395
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setType(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1396
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setIconTint(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v1

    .line 1397
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setAllowedNetworkTypesForReasons(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 1399
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1402
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->insertSubscriptionInfo(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSubscriptionInfo: Inserted a new subscription. subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", iccId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", displayName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    invoke-static {p4}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1403
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist isActiveSlot(Ljava/lang/String;I)Z
    .locals 3

    .line 6053
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 6055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": SIM"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is activated"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isAllESimAciveAndPSimInactive()Z
    .locals 11

    .line 1733
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    .line 1736
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    aget-object v5, p0, v2

    if-eqz v5, :cond_0

    .line 1737
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1743
    :cond_1
    array-length v0, p0

    move v2, v1

    move v5, v2

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v6, p0, v2

    if-eqz v6, :cond_4

    .line 1744
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1746
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v5

    array-length v7, v5

    move v9, v1

    move v8, v4

    :goto_2
    if-ge v9, v7, :cond_3

    aget v10, v5, v9

    .line 1747
    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v10

    if-nez v10, :cond_2

    move v8, v1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move v5, v8

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    return v4

    :cond_6
    return v1
.end method

.method private blacklist isEmbedded(I)Z
    .locals 3

    .line 6062
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 6066
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6067
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isEmbedded Subscription"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private blacklist isMockModemAllowed()Z
    .locals 1

    .line 5598
    const-string p0, "persist.radio.allow_mock_modem"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5599
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ro.boot.radio.allow_mock_modem"

    .line 5600
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNeededSimOffNotification()Z
    .locals 7

    const/4 v0, 0x1

    .line 1784
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v1

    .line 1785
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 1786
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 1787
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1788
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1789
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v3
.end method

.method private blacklist isOffSimInserted()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1770
    :goto_0
    sget v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    if-ge v1, v2, :cond_1

    .line 1771
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1772
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1773
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1774
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isOffSimInserted"

    .line 1775
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isActiveSlot(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isOffSimInserted] true, phoneId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private blacklist isSatellitePlmn(Ljava/lang/String;)Z
    .locals 3

    .line 5555
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatellitePlmn: id= 17040325, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5559
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isMockModemAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5560
    const-string v0, "isSatellitePlmn: Read config_satellite_sim_plmn_identifier from device config"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5561
    const-string v0, "config_satellite_sim_plmn_identifier"

    const-string v1, ""

    const-string v2, "telephony"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5564
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatellitePlmn: overlayMccMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mccMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5565
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSatelliteSpn(Ljava/lang/String;)Z
    .locals 3

    .line 5579
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatelliteSpn: id= 17040326, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5583
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isMockModemAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5584
    const-string v0, "isSatelliteSpn: Read config_satellite_sim_spn_identifier from device config"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5585
    const-string v0, "config_satellite_sim_spn_identifier"

    const-string v1, ""

    const-string v2, "telephony"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5588
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSatelliteSpn: overlaySpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 5594
    :cond_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSubscriptionAssociatedWithUserInternal(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isSubscriptionAssociatedWithUserNoCheck(ILandroid/os/UserHandle;)Z
    .locals 2

    .line 4775
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4776
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4793
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 4795
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .line 4796
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p1, :cond_0

    .line 4802
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4803
    throw p0

    .line 4779
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isSubscriptionAssociatedWithUser]: Subscription doesn\'t exist: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic blacklist lambda$getAccessibleSubscriptionInfoList$20(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 2815
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2816
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getActiveSubIdListAsUser$28(ZLandroid/os/UserHandle;Ljava/lang/Integer;)Z
    .locals 1

    .line 3973
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3974
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 3975
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3977
    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 3976
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserInternal(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getActiveSubscriptionInfoList$18(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 2656
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    const-string v0, "getActiveSubscriptionInfoList"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getAllSubInfoList$16(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 1

    .line 2468
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2469
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p3

    const-string v0, "getAllSubInfoList"

    .line 2468
    invoke-static {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getAllSubInfoList$17(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 2474
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    const-string v0, "getAllSubInfoList"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getAvailableSubscriptionsInternalStream$19(Ljava/util/List;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 1

    .line 2762
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz p0, :cond_0

    .line 2763
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2764
    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isEmbedded()Z

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

.method private synthetic blacklist lambda$getOpportunisticSubscriptions$21(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 1

    .line 3352
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 3354
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p3

    const-string v0, "getOpportunisticSubscriptions"

    .line 3353
    invoke-static {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getOpportunisticSubscriptions$22(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 3359
    invoke-virtual {p3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    const-string v0, "getOpportunisticSubscriptions"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getSubscriptionInfoStreamAsUser$33(Landroid/os/UserHandle;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 0

    .line 4903
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 4902
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserInternal(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;I)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getSubscriptionsInGroup$24(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 3560
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3561
    invoke-direct {p0, p4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 3563
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string p4, "getSubscriptionsInGroup"

    .line 3562
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getSubscriptionsInGroup$25(Ljava/lang/String;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 3565
    const-string v0, "getSubscriptionsInGroup"

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$markSubscriptionsInactive$6(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 3

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSimSlotIndex(II)V

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v1

    .line 1295
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIccId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result p0

    .line 1294
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 0

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p0

    .line 849
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->onDefaultDataSubscriptionChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 1

    .line 848
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda56;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$new$2()V
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.euicc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$syncGroupedSetting$4(I)V
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 988
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncSettings: Can\'t find subscription info for sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void

    .line 994
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->syncToGroup(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateEmbeddedSubscriptions$11(Ljava/lang/Runnable;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1423
    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 1431
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1432
    const-string v3, "updateEmbeddedSubscriptions: start to get euicc profiles."

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1434
    iget-object v3, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    if-eqz v7, :cond_1

    .line 1436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1443
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1444
    iget-object v7, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 1445
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;

    move-result-object v7

    .line 1446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateEmbeddedSubscriptions: cardId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    if-nez v7, :cond_3

    .line 1449
    const-string v6, "Failed to get euicc profiles."

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1453
    :cond_3
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v8

    if-eqz v8, :cond_4

    .line 1454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get euicc profile info. result="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v7

    invoke-static {v7}, Landroid/service/euicc/EuiccService;->resultToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1454
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1461
    :cond_4
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x1

    if-eqz v4, :cond_f

    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_5

    .line 1466
    :cond_5
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getIsRemovable()Z

    move-result v4

    .line 1468
    invoke-virtual {v7}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/euicc/EuiccProfileInfo;

    .line 1469
    iget-object v10, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1470
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v10

    const/4 v11, -0x1

    if-nez v10, :cond_6

    .line 1474
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-direct {v0, v10, v11, v12, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v10

    .line 1477
    iget-object v12, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v13, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1478
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCardNumber(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const v15, 0x1040466

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1477
    invoke-virtual {v12, v10, v13}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    .line 1479
    iget-object v12, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v10

    .line 1482
    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result v12

    .line 1483
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getCarrierId()I

    move-result v13

    .line 1485
    new-instance v14, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    invoke-direct {v14, v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    .line 1488
    invoke-virtual {v14, v8}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1490
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getUiccAccessRules()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 1491
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1492
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getUiccAccessRules()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setNativeAccessRules(Ljava/util/List;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1494
    :cond_7
    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setRemovableEmbedded(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1497
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getNickname()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 1499
    invoke-static {v12}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v12

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v11

    if-gt v12, v11, :cond_8

    .line 1501
    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1502
    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setDisplayNameSource(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1506
    :cond_8
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatelliteSpn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1508
    invoke-virtual {v14, v8}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move v5, v8

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    .line 1511
    :goto_3
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "telephony.test.bootstrap_cid"

    const/4 v12, -0x2

    .line 1512
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v13, :cond_a

    .line 1515
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hardcording as bootstrap subscription for cid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v14, v8}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    goto :goto_4

    .line 1518
    :cond_a
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getProfileClass()I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1520
    :goto_4
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setPortIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1522
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getCarrierIdentifier()Landroid/service/carrier/CarrierIdentifier;

    move-result-object v11

    if-eqz v11, :cond_d

    const/4 v12, -0x1

    if-ne v13, v12, :cond_b

    .line 1528
    iget-object v12, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 1529
    invoke-static {v12, v11}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierIdFromIdentifier(Landroid/content/Context;Landroid/service/carrier/CarrierIdentifier;)I

    move-result v12

    .line 1528
    invoke-virtual {v14, v12}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCarrierId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1532
    :cond_b
    invoke-virtual {v11}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v12

    .line 1533
    invoke-virtual {v11}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v11

    .line 1534
    invoke-virtual {v9}, Landroid/service/euicc/EuiccProfileInfo;->getState()I

    move-result v9

    if-nez v9, :cond_c

    .line 1535
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getMcc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getMnc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1536
    invoke-virtual {v14, v12}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMcc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1537
    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setMnc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1538
    const-string v9, "updateEmbeddedSubscriptions: update mccmnc by EuiccProfileInfo"

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_c
    if-nez v5, :cond_d

    .line 1543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatellitePlmn(Ljava/lang/String;)Z

    move-result v5

    .line 1542
    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    :cond_d
    if-ltz v6, :cond_e

    .line 1549
    iget-object v5, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getCardIdForDefaultEuicc()I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_e

    .line 1551
    invoke-virtual {v14, v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1552
    iget-object v5, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->convertToCardString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1556
    :cond_e
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getTransferStatus()I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setTransferStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    .line 1558
    invoke-virtual {v10}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1560
    invoke-virtual {v14}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v5

    .line 1561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateEmbeddedSubscriptions: update subscription "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1562
    iget-object v9, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->updateSubscription(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1462
    :cond_f
    :goto_5
    const-string v4, "No profiles returned."

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_10
    move v4, v8

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_11
    if-eqz v4, :cond_12

    .line 1574
    iget-object v3, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;-><init>()V

    .line 1575
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda46;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda46;-><init>(Ljava/util/Set;)V

    .line 1576
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda47;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda47;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1577
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1583
    iget-object v2, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda48;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda48;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1584
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1591
    const-string v2, "38fdf63c-3bd9-4fc2-ad33-a20246a32fa7"

    .line 1592
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    const-string v3, "SubscriptionManagerService: Found Invalid portIndex in active subscriptions"

    .line 1591
    invoke-static {v2, v3}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_6

    .line 1597
    :cond_12
    const-string v2, "The eSIM profiles update was not successful."

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 1599
    :cond_13
    :goto_6
    const-string v2, "updateEmbeddedSubscriptions: Finished embedded subscription update."

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1601
    iget-object v0, v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda49;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda49;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1424
    :cond_14
    :goto_7
    const-string v2, "updateEmbeddedSubscriptions: eUICC not enabled"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    if-eqz v1, :cond_15

    .line 1426
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_15
    return-void
.end method

.method private synthetic blacklist lambda$updateEmbeddedSubscriptions$8(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 2

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmbeddedSubscriptions: Mark the deleted sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as non-embedded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1578
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1580
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1581
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    const/4 v0, 0x0

    .line 1580
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEmbedded(IZ)V

    return-void
.end method

.method private synthetic blacklist lambda$updateEmbeddedSubscriptions$9(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z
    .locals 2

    .line 1584
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getPortIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    .line 1588
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p1

    aget p0, p0, p1

    const/16 p1, 0xa

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$updateSimState$35(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2

    .line 5100
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aput p2, v0, p1

    .line 5101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimState: slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5102
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5101
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5124
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions()V

    .line 5125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    goto :goto_0

    .line 5120
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    :goto_0
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 5134
    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic blacklist lambda$updateSimStateForInactivePort$34(ILjava/lang/String;)V
    .locals 4

    .line 5033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimStateForInactivePort: slotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5034
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5033
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 5035
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5044
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscription(I)V

    .line 5046
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5049
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 5051
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5055
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v1

    .line 5056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimStateForInactivePort: Found existing subscription. subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5059
    iget-boolean v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAllSimOffCheck:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5060
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isAllESimAciveAndPSimInactive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5061
    const-string p1, "[makeSimOffToast] display toast by updateSimStateForInactivePort()"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5062
    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAllSimOffCheck:Z

    .line 5063
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->makeSimOffToast()V

    goto :goto_0

    .line 5070
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    .line 5074
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 5075
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x1040466

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5074
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    .line 5076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSimStateForInactivePort: Insert a new subscription for inactive SIM. subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5079
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5080
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    :cond_3
    return-void
.end method

.method private synthetic blacklist lambda$updateSubscription$13(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 2

    .line 1943
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscription: Re-enable Uicc application on sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1950
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSubscriptionByCarrierConfig$15(ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V
    .locals 0

    .line 2286
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSubscriptionByCarrierConfigInternal(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 2287
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 5936
    const-string p0, "SMSVC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 5945
    const-string p0, "SMSVC"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 5954
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5955
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist makeSimOffNotification()V
    .locals 8

    .line 1800
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040f00

    .line 1801
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1040eff

    .line 1802
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1803
    new-instance v2, Landroid/content/Intent;

    const-string v3, "settings.SIM_CARD_NETWORK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1804
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const/high16 v4, 0x14000000

    const/16 v5, 0x112

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1806
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1807
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1808
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v4, 0x1080625

    .line 1809
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1810
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-wide/16 v6, 0x0

    .line 1811
    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1812
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    .line 1813
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1814
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1815
    const-string v1, "sim"

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1816
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1817
    const-string v2, "android.substName"

    const-string v4, "SIM manager"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "android.showSmallIcon"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1819
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1821
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist makeSimOffToast()V
    .locals 2

    .line 1762
    const-string v0, "[makeSimOffToast] display toast"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1763
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040f01

    .line 1764
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1765
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private blacklist registerNetworkCallback()V
    .locals 1

    .line 6117
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_1

    .line 6118
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$10;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 6138
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 6139
    :cond_0
    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetId:I

    .line 6140
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method

.method private blacklist remapRafIfApplicable()V
    .locals 7

    .line 3791
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3793
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    .line 3794
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    new-array v2, v1, [Landroid/telephony/RadioAccessFamily;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3797
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    .line 3796
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    .line 3797
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3796
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3797
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 3798
    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v4

    .line 3799
    :goto_1
    new-instance v5, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v5, v3, v4}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3801
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    return-void
.end method

.method private blacklist restoreThreadPriority(I)V
    .locals 4

    .line 6083
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 6085
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6086
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6087
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget p1, v3, p1

    if-eq p1, v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6088
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreThreadPriority: Process.getThreadPriority(Process.myTid()) is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 6094
    :cond_3
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 6095
    const-string p1, "restoreThreadPriority: Restore Priority"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 6096
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_4
    return-void
.end method

.method private blacklist setDefaultDataSlotId(I)V
    .locals 1

    .line 5650
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5651
    const-string p1, "[setDefaultDataSlotId] Invalid slotid - not updating."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void

    .line 5654
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_data_call_slot"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private blacklist setDefaultSmsSlotId(I)V
    .locals 1

    .line 5632
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5633
    const-string p1, "[setDefaultSmsSlotId] Invalid slotid - not updating."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void

    .line 5636
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_sms_slot"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private blacklist setDefaultVoiceSlotId(I)V
    .locals 1

    .line 5614
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5615
    const-string p1, "[setDefaultVoiceSlotId] Invalid slotid - not updating."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void

    .line 5618
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_voice_call_slot"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private blacklist setExistingDefaultDataSubId(I)V
    .locals 1

    .line 5676
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5677
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_existing_data_call"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private blacklist setExistingDefaultSmsSubId(I)V
    .locals 1

    .line 5668
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5669
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_existing_sms"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private blacklist setExistingDefaultVoiceSubId(I)V
    .locals 1

    .line 5660
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5661
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_existing_voice_call"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private blacklist setProfileClassProp()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1842
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const-string v4, "ril.profileClass"

    if-ge v1, v2, :cond_0

    .line 1843
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    .line 1846
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v1

    .line 1847
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget v5, v1, v0

    .line 1848
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1852
    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getProfileClass()I

    move-result v6

    goto :goto_2

    :cond_1
    move v6, v3

    .line 1855
    :goto_2
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v4, v8}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", profileClass:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1859
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileClassProp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private blacklist shouldDisableSubGroup(Landroid/os/ParcelUuid;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5161
    const-string p1, "shouldDisableSubGroup return null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v0

    .line 5164
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 5165
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 5164
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 5166
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 5167
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 5168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldDisableSubGroup subID:: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return v3

    :cond_2
    return v0
.end method

.method private blacklist slotMappingToString()Ljava/lang/String;
    .locals 2

    .line 5541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda5;-><init>()V

    .line 5542
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, ", "

    .line 5543
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist startEsimBootstrapTimer()V
    .locals 7

    .line 2205
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 2206
    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$9;

    const-wide/32 v3, 0x124f80

    const-wide/32 v5, 0x124f80

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$9;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;JJ)V

    .line 2221
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->bootstrapProvisioningTimer:Landroid/os/CountDownTimer;

    .line 2222
    const-string p0, "bootstrapProvisioningTimer timer started."

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist unRegisterNetworkCallback()V
    .locals 2

    .line 6144
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 6145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterNetworkCallback : mNetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 6146
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 6147
    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v0, -0x1

    .line 6148
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mNetId:I

    :cond_0
    return-void
.end method

.method private blacklist updateDefaultSubId()V
    .locals 4

    .line 3621
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3624
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result v0

    goto :goto_0

    .line 3626
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v0

    .line 3630
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 3631
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 3632
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 3633
    aget v0, v0, v1

    .line 3634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultSubId: First available active sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 3640
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 3641
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v1

    .line 3642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultSubId: Default sub id updated from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 3644
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    .line 3646
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20000000

    .line 3647
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3648
    invoke-static {v2, v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 3649
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    return-void
.end method

.method private blacklist updateEmbeddedSubscriptions()V
    .locals 6

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 1617
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1618
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 1619
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v4

    .line 1618
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v4

    .line 1620
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1623
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1624
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private blacklist updatePhoneOnState()V
    .locals 14

    .line 5684
    const-string v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0xeac4

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5685
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.hardware.telephony.euicc"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v0, :cond_5

    move v6, v1

    .line 5688
    :goto_1
    sget v7, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    if-ge v6, v7, :cond_5

    .line 5689
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->TRANSFERRED_PSIM_SUBID:[Ljava/lang/String;

    aget-object v9, v8, v6

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 5690
    iget-object v9, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v11, v10, v6

    invoke-static {v9, v11, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 5691
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v11

    .line 5693
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updatePhoneOnState] phone "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", disableSubid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", currentSubId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    if-eq v11, v5, :cond_3

    if-eq v7, v5, :cond_3

    if-ne v9, v3, :cond_1

    goto :goto_2

    :cond_1
    if-eq v11, v7, :cond_4

    .line 5700
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v9, v10, v6

    invoke-static {v7, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5701
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v9, v10, v6

    invoke-static {v7, v9, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5702
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v8, v8, v6

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v2, :cond_2

    if-ne v6, v3, :cond_2

    .line 5704
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psim_phone_on_2"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5706
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7, v1, v4}, Lcom/android/internal/telephony/SemPhoneInternal;->setSimOnOff(ILandroid/os/Message;)V

    goto :goto_3

    .line 5696
    :cond_3
    :goto_2
    const-string v7, "[updatePhoneOnState] none "

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 5712
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v6

    if-eqz v2, :cond_6

    if-le v6, v3, :cond_6

    .line 5714
    const-string v0, "[updatePhoneOnState] enable esim"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void

    .line 5719
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    if-le v6, v3, :cond_7

    if-ne v2, v3, :cond_7

    .line 5737
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v7, v7, v3

    if-eq v7, v3, :cond_7

    .line 5738
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 5740
    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 5742
    const-string v8, "com.samsung.android.app.telephonyui"

    invoke-virtual {v7, v8, v1}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 5743
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "telephonyui_simcard_manager_general_settings_sim2"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5744
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5745
    const-string v7, "updatePhoneOnState: ENTERPRISE POLICY"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    move v7, v1

    goto :goto_4

    :cond_7
    move v7, v3

    :goto_4
    if-eqz v0, :cond_c

    if-gt v6, v3, :cond_8

    .line 5755
    const-string v0, "[updatePhoneOnState] SS device, not updated"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void

    .line 5759
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 5760
    array-length v2, v0

    if-lez v2, :cond_10

    if-eqz v7, :cond_10

    .line 5762
    array-length v2, v0

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_a

    aget v5, v0, v4

    .line 5763
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 5764
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 5765
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    return-void

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 5771
    :cond_a
    aget v1, v0, v1

    .line 5772
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSlotId()I

    move-result v2

    .line 5774
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5775
    aget v1, v0, v2

    .line 5777
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePhoneOnState] allSubDisabled, enable subid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 5778
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setUiccApplicationsEnabled(ZI)V

    return-void

    :cond_c
    move v0, v1

    :goto_6
    if-ge v0, v6, :cond_10

    .line 5783
    iget-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v10, v9, v0

    invoke-static {v8, v10, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-gez v8, :cond_d

    .line 5786
    sget-object v10, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aput v3, v10, v0

    goto :goto_7

    .line 5788
    :cond_d
    sget-object v10, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aput v8, v10, v0

    :goto_7
    if-ne v2, v3, :cond_e

    if-eqz v7, :cond_e

    .line 5791
    iget-object v10, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v10, v10, v0

    if-eq v10, v3, :cond_e

    .line 5792
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 5793
    sget-object v10, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aput v3, v10, v0

    .line 5796
    :cond_e
    sget-object v10, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aget v10, v10, v0

    if-eq v8, v10, :cond_f

    .line 5797
    iget-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aget-object v10, v9, v0

    sget-object v11, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aget v11, v11, v0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5798
    iget-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aget-object v9, v9, v0

    sget-object v10, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aget v10, v10, v0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-le v6, v3, :cond_f

    .line 5801
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v4}, Lcom/android/internal/telephony/SemPhoneInternal;->setSimOnOff(ILandroid/os/Message;)V

    .line 5804
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePhoneOnState: phone"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_on= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aget v0, v10, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_6

    :cond_10
    return-void
.end method

.method private blacklist updateSubStatus(I)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 592
    sget-object v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPhoneOn:[I

    aput v0, v1, p1

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_ON="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Observer onChange hit !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.radio.sim.onoff"

    invoke-static {p1, v0, p0}, Lcom/android/internal/telephony/uicc/IccUtils;->setUiccProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateSubscription(I)V
    .locals 14

    .line 1871
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v0, v0, p1

    .line 1872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscription: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1872
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1874
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 1876
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1880
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->handleNetworkCallback(I)V

    .line 1883
    const-string v1, "ro.build.version.oneui"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xeac4

    const-string v4, "updateSubscription: "

    const-string v5, ""

    const/4 v6, 0x1

    if-lt v1, v2, :cond_6

    .line 1884
    const-string v1, "persist.radio.sim.onoff"

    invoke-static {p1, v1, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1885
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v7

    .line 1886
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1887
    iget-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1888
    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v7

    .line 1889
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubscription: onoff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    if-eqz v7, :cond_2

    .line 1890
    invoke-virtual {v7}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "0"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1891
    invoke-virtual {v7}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v8

    invoke-virtual {p0, v3, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setUiccApplicationsEnabled(ZI)V

    :cond_2
    if-eqz v7, :cond_4

    .line 1893
    invoke-virtual {v7}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 1898
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v9, v8, p1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " set 0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1899
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v9, v8, p1

    invoke-static {v7, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1900
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v8, v8, p1

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1894
    :cond_4
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v9, v8, p1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " set 1"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1895
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v9, v8, p1

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1896
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v8, v8, p1

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1903
    :cond_5
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1904
    invoke-static {p1, v1, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->setUiccProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v0, :cond_8

    .line 1909
    const-string v1, "updateSubscription"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isActiveSlot(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1910
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isEmbedded(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1911
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    return-void

    .line 1915
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    const/16 v2, 0x10

    aput v2, v1, p1

    .line 1919
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->needUpPhonePriority()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 1920
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1921
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v2

    :goto_3
    if-eq v0, v6, :cond_a

    if-eqz v1, :cond_b

    .line 1922
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1923
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->restoreThreadPriority(I)V

    :cond_b
    if-ne v0, v6, :cond_f

    .line 1928
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1932
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteEnabledOrBeingEnabled()Z

    move-result v0

    goto :goto_4

    :cond_c
    move v0, v3

    :goto_4
    if-nez v0, :cond_d

    .line 1938
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccIdsOfInsertedPhysicalSims()Ljava/util/List;

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda50;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda50;-><init>(Ljava/util/List;)V

    .line 1940
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1942
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1955
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1956
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    .line 1961
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNumberFromIms(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_f
    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 1966
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1967
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "updateSubscription: iccCard has empty profile."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1969
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areUiccAppsDisabledOnCard(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1971
    const-string p1, "updateSubscription: SIM_STATE_NOT_READY is not a final state. Will update subscription later."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void

    .line 1975
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscription: UICC app disabled on slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    .line 1980
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNumberFromIms(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 1984
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 1985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubscription: Found iccId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " on phone "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 1992
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v5

    .line 1993
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda52;

    invoke-direct {v7, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda52;-><init>(ILjava/lang/String;)V

    .line 1994
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 1996
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    .line 1997
    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    if-eqz v5, :cond_13

    .line 1999
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSubscription: Found previous active sub "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that doesn\'t match current iccid on slot "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    .line 2004
    :cond_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "updateSubscription: current mapping "

    if-nez v5, :cond_29

    .line 2006
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v5

    if-nez v5, :cond_14

    .line 2010
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v5

    .line 2012
    iget-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    iget-object v9, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2013
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2014
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCardNumber(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x1040466

    .line 2013
    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2012
    invoke-virtual {v8, v5, v9}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    goto :goto_5

    .line 2016
    :cond_14
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v5

    .line 2017
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubscription: Found existing subscription. subId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2021
    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 2026
    iget-object v9, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    iget-object v9, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v9, v5, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSimSlotIndex(II)V

    .line 2029
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2033
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 2035
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 2037
    iget-object v9, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v9, v5, v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCardString(ILjava/lang/String;)V

    .line 2042
    :cond_16
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPortIndex(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v5, v9}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setPortIndex(II)V

    .line 2044
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v7

    .line 2045
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/UiccCardInfo;

    .line 2046
    invoke-virtual {v9}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/UiccPortInfo;

    .line 2047
    invoke-virtual {v11}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v11

    if-ne v11, p1, :cond_18

    .line 2048
    invoke-virtual {v9}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v11

    const-string v12, ", phoneId= "

    if-eqz v11, :cond_19

    .line 2049
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSubscription: eUICC. subId= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2051
    iget-object v11, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v11, v5, v6}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEmbedded(II)V

    goto :goto_6

    .line 2053
    :cond_19
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSubscription: UICC. subId= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 2060
    :cond_1a
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertNetworkModeInSubinfo(II)V

    const/16 v7, 0xa

    if-ne v0, v7, :cond_28

    .line 2063
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 2064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 2065
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result v7

    if-ne v5, v7, :cond_1b

    .line 2066
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 2068
    :cond_1b
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setMccMnc(ILjava/lang/String;)V

    if-eqz v8, :cond_1c

    .line 2069
    invoke-virtual {v8}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatelliteSpn(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1d

    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSatellitePlmn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2070
    :cond_1d
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNtn(IZ)V

    goto :goto_7

    .line 2073
    :cond_1e
    const-string v0, "updateSubscription: mcc/mnc is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2076
    :cond_1f
    :goto_7
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 2078
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 2079
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setCountryIso(ILjava/lang/String;)V

    goto :goto_8

    .line 2081
    :cond_20
    const-string v0, "updateSubscription: sim country iso is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2084
    :goto_8
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2089
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDisplayNumber(Ljava/lang/String;I)I

    .line 2092
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2093
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2095
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v5, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setImsi(ILjava/lang/String;)V

    .line 2098
    :cond_22
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2100
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2102
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 2104
    iget-object v8, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v8, v5, v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEhplmns(I[Ljava/lang/String;)V

    .line 2106
    :cond_23
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPlmnsFromHplmnActRecord()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2108
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v5, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setHplmns(I[Ljava/lang/String;)V

    goto :goto_9

    .line 2111
    :cond_24
    const-string v0, "updateSubscription: ICC records are not available."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 2114
    :cond_25
    const-string v0, "updateSubscription: ICC card is not available."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2119
    :cond_26
    :goto_9
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "restoreSimSpecificSettings"

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2123
    const-string v1, "restoreSimSpecificSettingsDatabaseUpdated"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2125
    const-string v0, "Sim specific settings changed the database."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2126
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->reloadDatabaseSync()V

    .line 2127
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2128
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->loadAllowedNetworksFromSubscriptionDatabase()V

    .line 2130
    :cond_27
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x112

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2134
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2135
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2134
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 2137
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscription: No ICCID available for phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2143
    :goto_a
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areAllSubscriptionsLoaded()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2144
    const-string v0, "Notify all subscriptions loaded."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2145
    iget-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAllSimOffCheck:Z

    if-eqz v0, :cond_2a

    sget v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    if-le v0, v6, :cond_2a

    .line 2146
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkSimOffStatus()V

    .line 2149
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updatePhoneOnState()V

    .line 2150
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPrefNwUpdater:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    if-eqz v0, :cond_2f

    .line 2152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 2153
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mIccid:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_b

    :cond_2b
    move v0, v3

    goto :goto_c

    .line 2154
    :cond_2c
    :goto_b
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mIccid:[Ljava/lang/String;

    aput-object v0, v1, p1

    move v0, v6

    .line 2157
    :goto_c
    sget v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    if-le v1, v6, :cond_2e

    add-int/lit8 v2, p1, 0x1

    .line 2158
    rem-int/2addr v2, v1

    .line 2159
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 2160
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mIccid:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2d

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2161
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mIccid:[Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_d

    :cond_2e
    move v6, v0

    :goto_d
    if-eqz v6, :cond_2f

    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mPrefNwUpdater:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateNetworkMode()V

    .line 2169
    :cond_2f
    :goto_e
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge v3, v0, :cond_31

    .line 2170
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2173
    :try_start_0
    check-cast v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->queryImei()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    .line 2175
    :catch_0
    const-string v0, "SemGsmCdmaPhone ClassCastException"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_30
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2180
    :cond_31
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setProfileClassProp()V

    .line 2182
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyAllSubscriptionLoaded()V

    .line 2185
    :cond_32
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 2186
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V

    .line 2188
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    .line 2189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isEsimBootStrapProvisioningActiveForSubId(I)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 2190
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->startEsimBootstrapTimer()V

    goto :goto_10

    .line 2192
    :cond_33
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->cancelEsimBootstrapTimer()V

    :cond_34
    :goto_10
    return-void
.end method

.method private blacklist updateSubscriptionByCarrierConfigInternal(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 6

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscriptionByCarrierConfig: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", configPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2295
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2304
    const-string p1, "updateSubscriptionByCarrierConfig: No subscription is active for phone being updated."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void

    .line 2309
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2311
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2312
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSubscriptionByCarrierConfig: Couldn\'t retrieve subscription info for current subscription. subId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void

    .line 2323
    :cond_2
    const-string v1, "carrier_certificate_string_array"

    invoke-virtual {p3, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2325
    invoke-static {v1}, Landroid/telephony/UiccAccessRule;->decodeRulesFromCarrierConfig([Ljava/lang/String;)[Landroid/telephony/UiccAccessRule;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2328
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCarrierConfigAccessRules(I[Landroid/telephony/UiccAccessRule;)V

    .line 2332
    :cond_3
    const-string v1, "is_opportunistic_subscription_bool"

    .line 2334
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result v2

    .line 2332
    invoke-virtual {p3, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2335
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setOpportunistic(IZ)V

    .line 2337
    const-string v1, "subscription_group_uuid_string"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2339
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v3

    .line 2340
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2343
    :try_start_0
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 2344
    const-string v5, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2346
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2, p1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    goto :goto_0

    .line 2347
    :cond_4
    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2348
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 2349
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    .line 2350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionByCarrierConfig: Group added for sub "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2352
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSubscriptionByCarrierConfig: configPackageName "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t own groupUuid "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2356
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 2357
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p2

    .line 2358
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2361
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionByCarrierConfig: Invalid Group UUID="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2366
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 2368
    const-string p2, "cellular_usage_setting_int"

    const/4 v1, -0x1

    invoke-virtual {p3, p2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 2373
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUsageSetting()I

    move-result v1

    .line 2372
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->calculateUsageSetting(II)I

    move-result v1

    .line 2375
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUsageSetting()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 2376
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUsageSetting(II)V

    .line 2377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSubscriptionByCarrierConfig: UsageSetting changed, oldSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUsageSetting()I

    move-result v3

    .line 2378
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " preferredSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " newSetting="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2382
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2377
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2385
    :cond_7
    const-string p2, "cellular_service_capabilities_int_array"

    .line 2386
    invoke-virtual {p3, p2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_8

    move v3, p3

    goto :goto_3

    .line 2394
    :cond_8
    array-length v1, p2

    move v2, p3

    move v3, v2

    :goto_2
    const/4 v4, 0x1

    if-ge v2, v1, :cond_a

    aget v5, p2, v2

    if-lt v5, v4, :cond_b

    const/4 v4, 0x3

    if-le v5, v4, :cond_9

    goto :goto_3

    .line 2400
    :cond_9
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    move p3, v4

    :cond_b
    :goto_3
    if-nez p3, :cond_c

    .line 2407
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllServiceCapabilityBitmasks()I

    move-result v3

    .line 2410
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getServiceCapabilities()I

    move-result p2

    if-eq v3, p2, :cond_d

    .line 2411
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSubscriptionByCarrierConfig: serviceCapabilities updated from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getServiceCapabilities()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2411
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 2413
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setServiceCapabilities(II)V

    :cond_d
    return-void

    .line 2297
    :cond_e
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubscriptionByCarrierConfig: Failed to update the subscription. phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configPackageName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " config="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_f

    .line 2299
    const-string p1, "null"

    goto :goto_5

    :cond_f
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateUserIdToAvailableSubs()V
    .locals 4

    .line 2773
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionsInternalStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda161;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda161;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;

    invoke-direct {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;-><init>()V

    .line 2777
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 2776
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 2774
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUserIdToAvailableSubs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5

    .line 2849
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "addSubInfo"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubInfo: iccId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", slotIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    invoke-static {p4}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2850
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2855
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 2873
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid slotIndex "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2877
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2879
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2880
    const-string p1, "addSubInfo: null or empty iccId"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2911
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2884
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2886
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2887
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2892
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Already a subscription on slot "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2911
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 2897
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->insertSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    if-eq p3, v1, :cond_4

    .line 2900
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 2901
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2902
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addSubInfo: current mapping "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2911
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 2907
    :cond_5
    :try_start_3
    const-string p1, "Subscription record already existed."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2911
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2912
    throw p0
.end method

.method public blacklist addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 7

    .line 3461
    const-string v0, "subIdList"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3462
    array-length v0, p1

    if-eqz v0, :cond_4

    .line 3466
    const-string v0, "groupUuid"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3467
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3468
    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3473
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3477
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3479
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3480
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3481
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MODIFY_PHONE_STATE or carrier privilege permissions on subscriptions and the group."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3485
    :cond_1
    :goto_0
    const-string v1, "addSubscriptionsIntoGroup"

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3490
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, p1, v4

    .line 3491
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v6, v5, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 3492
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v6, v5, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3495
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 3496
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V

    .line 3497
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addSubscriptionsIntoGroup: add subs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to the group."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3500
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3501
    throw p0

    .line 3469
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid groupUuid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3463
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid subId list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist areUiccAppsEnabledOnCard(I)Z
    .locals 2

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1643
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return v1

    .line 1648
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 1650
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1652
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public blacklist calculateUsageSetting(II)I
    .locals 3

    .line 2241
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2244
    array-length v1, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p1, :cond_1

    if-le p1, v2, :cond_2

    .line 2255
    :cond_1
    const-string p1, "calculateUsageSetting: Updating usage setting for current subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    move p1, v1

    :cond_2
    if-ltz p2, :cond_7

    if-le p2, v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    goto :goto_1

    .line 2272
    :cond_4
    array-length p0, v0

    :goto_0
    if-ge v1, p0, :cond_6

    aget v2, v0, v1

    if-ne p2, v2, :cond_5

    :goto_1
    return p2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return p1

    .line 2262
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateUsageSetting: Invalid usage setting!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return p1

    .line 2247
    :catch_0
    const-string p2, "calculateUsageSetting: Failed to load usage setting resources!"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return p1
.end method

.method public blacklist canDisablePhysicalSubscription()Z
    .locals 2

    .line 4257
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "canDisablePhysicalSubscription"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4260
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4265
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4266
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->canDisablePhysicalSubscription()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 4268
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4269
    throw p0
.end method

.method public blacklist createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;
    .locals 8

    .line 3200
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3202
    const-string v0, "createSubscriptionGroup"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3203
    array-length v1, p1

    if-eqz v1, :cond_3

    .line 3209
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3210
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3212
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "CreateSubscriptionGroup needs MODIFY_PHONE_STATE or carrier privilege permission on all specified subscriptions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3216
    :cond_1
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3222
    :try_start_0
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 3223
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3225
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p1, v5

    .line 3226
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v6, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 3227
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v7, v6, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3229
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 3231
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionGroupChanged(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3235
    throw p0

    .line 3204
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subIdList "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5885
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5887
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5890
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5891
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 5892
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5893
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5894
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deSerializeCVToMap JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public blacklist deSerializeCVToMapList(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 5909
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5911
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 5914
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5915
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 5916
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5917
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5918
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 5919
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 5920
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 5921
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 5923
    :cond_1
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5926
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deSerializeCVToMapList JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-object v0
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 5967
    const-string v0, "]"

    const-string v1, ", "

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "Requires android.Manifest.permission.DUMP"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5969
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5971
    :try_start_0
    new-instance v4, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v4, p2, v5}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5972
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5973
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Active modem count="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5974
    const-string p2, "Logical SIM slot sub id mapping:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5975
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5976
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5978
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5979
    const-string p2, "ICCID:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5980
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const/4 p2, 0x0

    move v5, p2

    .line 5981
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 5982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getIccId(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 5984
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 5985
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5987
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultVoiceSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultDataSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activeDataSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveDataSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSmsSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5991
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "areAllSubscriptionsLoaded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areAllSubscriptionsLoaded()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5992
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUserIdToAvailableSubs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUserIdToAvailableSubs:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5993
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 5994
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    array-length v5, v5

    if-ge p2, v5, :cond_1

    .line 5995
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSimState:[I

    aget v6, v6, p2

    .line 5996
    invoke-static {v6}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5995
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 5999
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 6000
    const-string p2, "Active subscriptions:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6001
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 6002
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 6003
    invoke-interface {p2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 6004
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 6006
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 6007
    const-string p2, "All subscriptions:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6008
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 6009
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p2

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 6010
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 6011
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 6013
    const-string p2, "Embedded subscriptions: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6014
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda10;-><init>()V

    .line 6015
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda11;-><init>()V

    .line 6016
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 6017
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6014
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6019
    const-string p2, "Opportunistic subscriptions: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda12;-><init>()V

    .line 6021
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda13;-><init>()V

    .line 6022
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 6023
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6020
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6025
    const-string p2, "getAvailableSubscriptionInfoList: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6026
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 6027
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v6

    .line 6026
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 6027
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda14;-><init>()V

    .line 6028
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 6029
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6026
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6031
    const-string p2, "getSelectableSubscriptionInfoList: ["

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6032
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda15;-><init>()V

    .line 6033
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 6034
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6032
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6036
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz p2, :cond_2

    .line 6037
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Euicc enabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6039
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 6040
    const-string p2, "Local log:"

    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6041
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 6042
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v4, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6043
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 6044
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 6045
    invoke-virtual {v4}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 6046
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, v4, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6048
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6049
    throw p0
.end method

.method public blacklist getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2807
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2812
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2813
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 2814
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    .line 2815
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 2817
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 2818
    invoke-interface {p1, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2817
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2819
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getActiveDataSubscriptionId()I
    .locals 4

    .line 4225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4227
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4229
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getActiveDataSubId()I

    move-result v2

    .line 4230
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4236
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4239
    throw p0
.end method

.method public blacklist getActiveSubIdList(Z)[I
    .locals 3

    .line 3950
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getActiveSubIdList"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3952
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11101bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3954
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    :cond_0
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdListAsUser(ZLandroid/os/UserHandle;)[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    .line 2683
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2684
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getAllSubInfoList"

    move-object v3, p1

    move-object v4, p2

    .line 2683
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    .line 2690
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissionAccessAllUserProfiles()V

    .line 2693
    :cond_0
    const-string p1, "getActiveSubInfoCount"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 2696
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 2695
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdListAsUser(ZLandroid/os/UserHandle;)[I

    move-result-object p0

    array-length p0, p0

    return p0

    .line 2686
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getActiveSubInfoCountMax()I
    .locals 0

    .line 2713
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method public blacklist getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 2501
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "getActiveSubscriptionInfo"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2507
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11101bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2509
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2513
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2514
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2515
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 2503
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 2537
    const-string p3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "getActiveSubscriptionInfoForIccId"

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2540
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 2545
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFsForIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2548
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2549
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2551
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 2554
    :goto_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2555
    throw p0
.end method

.method public blacklist getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 2578
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    .line 2579
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2578
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2581
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "getActiveSubscriptionInfoForSimSlotIndex"

    invoke-static {v1, v0, p2, p3, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2589
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2596
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2597
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2598
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2599
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->conditionallyRemoveIdentifiers(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2593
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slot index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2584
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2631
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2632
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getActiveSubscriptionInfoList"

    move-object v3, p1

    move-object v4, p2

    .line 2631
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getActiveSubscriptionInfoList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not have enough permission. Returning empty list here."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 2639
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 2642
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2644
    const-string p1, "getActiveSubscriptionInfoList"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 2648
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissionAccessAllUserProfiles()V

    :cond_2
    if-eqz p3, :cond_3

    .line 2651
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    .line 2650
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 2652
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 2658
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 2659
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2658
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2660
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2453
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 2454
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getAllSubInfoList"

    move-object v3, p1

    move-object v4, p2

    .line 2453
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2460
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2462
    const-string p1, "getAllSubInfoList"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoStreamAsUser(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 2476
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 2477
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2476
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2478
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 2456
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2734
    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "getAvailableSubscriptionInfoList"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2737
    iget-object p2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x11101bd

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2739
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAvailableSubscriptionsInternalStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda129;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda129;-><init>()V

    .line 2744
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda60;-><init>()V

    .line 2745
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 2744
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 2746
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2747
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getCardSwapCount()I
    .locals 0

    .line 6075
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mCardSwapCount:I

    return p0
.end method

.method public blacklist getDefaultDataSlotId()I
    .locals 2

    .line 5642
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_data_call_slot"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultDataSubId()I
    .locals 0

    .line 3728
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSmsSlotId()I
    .locals 2

    .line 5624
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_sms_slot"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSmsSubId()I
    .locals 1

    .line 3873
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubIdAsUser(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSmsSubIdAsUser(I)I
    .locals 1

    .line 3886
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultAsUser(II)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSubId()I
    .locals 1

    .line 3659
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubIdAsUser(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultSubIdAsUser(I)I
    .locals 2

    .line 3668
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDefaultVoiceSubIdAsUser"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultAsUser(II)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultVoiceSlotId()I
    .locals 2

    .line 5606
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_voice_call_slot"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultVoiceSubId()I
    .locals 1

    .line 3810
    sget-object v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->BINDER_WRAPPER:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$BinderWrapper;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultVoiceSubIdAsUser(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultVoiceSubIdAsUser(I)I
    .locals 1

    .line 3819
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultAsUser(II)I

    move-result p0

    return p0
.end method

.method public blacklist getEnabledSubscriptionId(I)I
    .locals 3

    .line 4155
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEnabledSubscriptionId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4158
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4162
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4166
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 4167
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 4168
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 4169
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p1, -0x1

    .line 4170
    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4173
    throw p0

    .line 4159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid slot index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3333
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 3334
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v5, "getOpportunisticSubscriptions"

    move-object v3, p1

    move-object v4, p2

    .line 3333
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOpportunisticSubscriptions: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not have enough permission. Returning empty list here."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 3341
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 3344
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3346
    const-string p1, "getOpportunisticSubscriptions"

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda25;-><init>()V

    .line 3361
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;

    invoke-direct {p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 3362
    invoke-interface {p1, p2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    .line 3361
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3363
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getPhoneId(I)I
    .locals 2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 3705
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p1

    .line 3708
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 3713
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p0

    .line 3714
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method public blacklist getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4447
    iget-object p4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 4447
    const-string v2, "getPhoneNumber"

    invoke-static {p4, p1, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)V

    .line 4451
    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4453
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkPhoneNumberSource(I)V

    .line 4454
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkAndGetSubId(I)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    .line 4455
    const-string p0, ""

    return-object p0

    .line 4457
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 4459
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4461
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4462
    throw p0
.end method

.method public blacklist getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4551
    iget-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 4551
    const-string v2, "getPhoneNumberFromFirstAvailableSource"

    invoke-static {p3, p1, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)V

    .line 4556
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkAndGetSubId(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 4560
    const-string p0, ""

    return-object p0

    .line 4562
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    const/4 v0, 0x2

    .line 4565
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object v0

    .line 4568
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 4580
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 4570
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object v0

    .line 4573
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 4580
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_2
    const/4 v0, 0x3

    .line 4575
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneNumberFromSourceInternal(II)Ljava/lang/String;

    move-result-object p0

    .line 4578
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4580
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4581
    throw p0
.end method

.method public blacklist getPreferredDataSubscriptionId()I
    .locals 4

    .line 3290
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPreferredDataSubscriptionId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3295
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredDataSubscriptionId: PhoneSwitcher not available. Return the default data sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3298
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3297
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3302
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getAutoSelectedDataSubId()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3304
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3305
    throw p0
.end method

.method public blacklist getSatelliteESOSSupported(I)Z
    .locals 1

    .line 5341
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 5347
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatelliteESOSSupported()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public blacklist getSatelliteEntitlementBarredPlmnList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5358
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    .line 5361
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda172;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda172;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda17;-><init>()V

    .line 5362
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda18;-><init>()V

    .line 5363
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5364
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementDataPlanForPlmns(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5376
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5379
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 5381
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatelliteEntitlementDataPlanForPlmns()Ljava/lang/String;

    move-result-object p1

    .line 5382
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnDataServicePolicy(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5411
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5414
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 5416
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatellitePlmnsDataServicePolicy()Ljava/lang/String;

    move-result-object p1

    .line 5417
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5285
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    .line 5288
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda169;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda169;-><init>()V

    .line 5289
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda37;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda37;-><init>()V

    .line 5290
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda38;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda38;-><init>()V

    .line 5291
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5292
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnServiceTypeMap(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 5393
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5396
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 5398
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatelliteEntitlementPlmnsServiceTypes()Ljava/lang/String;

    move-result-object p1

    .line 5399
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSatelliteEntitlementPlmnVoiceServicePolicy(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5429
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5432
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 5434
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSatellitePlmnsVoiceServicePolicy()Ljava/lang/String;

    move-result-object p1

    .line 5435
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->deSerializeCVToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSlotIndex(I)I
    .locals 2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 3582
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p1

    .line 3585
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3586
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSubId(I)I
    .locals 2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 3602
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p1

    .line 3607
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    return v1

    .line 3612
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3613
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3612
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 5021
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5022
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .locals 0

    .line 5009
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 4841
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSubscriptionInfoListAssociatedWithUser"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4850
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4852
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4853
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v2

    .line 4854
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4855
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4888
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4858
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4859
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4860
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    .line 4861
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUserId()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 4863
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4864
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUserId()I

    move-result v6

    const/16 v7, -0x2710

    if-ne v6, v7, :cond_1

    .line 4866
    invoke-virtual {v5}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4870
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_4

    .line 4872
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 4875
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_4

    .line 4888
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    .line 4885
    :cond_4
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_5

    move-object v3, v4

    .line 4888
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4889
    throw p0
.end method

.method public blacklist getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4049
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4050
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "getSubscriptionProperty"

    invoke-static {v0, p1, p3, p4, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 4057
    invoke-static {}, Landroid/provider/Telephony$SimInfo;->getAllColumns()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 4063
    sget-object p4, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 4068
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4070
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 4072
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4074
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4075
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4091
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4076
    :cond_0
    :try_start_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4077
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4091
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 4078
    :cond_1
    :try_start_2
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 4079
    check-cast v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4091
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 4083
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was returned from SubscriptionDatabaseManager for column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4088
    :catch_0
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscriptionProperty: Invalid subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", columnName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4091
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4092
    throw p0

    .line 4064
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Column "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed be directly accessed through getSubscriptionProperty."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4058
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid column name "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4053
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getSubscriptionUserHandle(I)Landroid/os/UserHandle;
    .locals 4

    .line 4707
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSubscriptionUserHandle"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4709
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4711
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4712
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 4723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 4717
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 4718
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_1

    .line 4723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4724
    throw p0
.end method

.method public blacklist getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3541
    const-string v0, "213902861"

    const-wide/32 v1, 0xcbfe60d

    .line 3542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3541
    invoke-static {v1, v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    const-string v2, "getSubscriptionsInGroup"

    if-eqz v1, :cond_1

    const v1, 0x534e4554

    .line 3544
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3546
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3547
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need to have carrier privileges or access to device identifiers to call getSubscriptionsInGroup"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 3551
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3552
    throw p0

    .line 3556
    :cond_1
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 3559
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda42;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda43;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3567
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist insertNetworkModeInSubinfo(II)V
    .locals 9

    .line 5837
    const-string v0, "persist.radio.support.dualrat"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5838
    const-string v1, "USA"

    const-string v2, "CAN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v1

    .line 5839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotSupportDualRat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "isUSAorCAN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 5840
    sget v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->SUPPORTED_MODEM_COUNT:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isCNHKTW:Z

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 5841
    const-string p1, "insertNetworkModeInSubinfo : supportDualRAT !isCNHKTW !isUSAorCAN"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void

    .line 5845
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5847
    const-string p1, "insertNetworkModeInSubinfo : phone is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    return-void

    .line 5849
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 5850
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5849
    const-string v2, "allowed_network_types_for_reasons"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5851
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5852
    const-string v2, "user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 5854
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getEnable2gNetworkTypeReasonInPreference()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    .line 5856
    const-string v5, ",enable_2g="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 5859
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 5860
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    .line 5861
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz p1, :cond_4

    const-string v8, "enable_2g="

    .line 5862
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5863
    :cond_3
    const-string v7, ""

    .line 5865
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 5866
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5870
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldNetType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", newNetType : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 5873
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setAllowedNetworkTypesForReasons(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 4195
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "isActiveSubId"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4201
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 4205
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4206
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4207
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 4209
    :goto_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4210
    throw p0

    .line 4197
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isEsimBootStrapProvisioningActivated()Z
    .locals 3

    .line 5468
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 5469
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 5470
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 5469
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 5472
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isEsimBootStrapProvisioningActiveForSubId(I)Z
    .locals 0

    .line 5487
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5489
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getProfileClass()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSatelliteProvisionedForNonIpDatagram(I)Z
    .locals 1

    .line 5446
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 5452
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getIsSatelliteProvisionedForNonIpDatagram()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public blacklist isSubscriptionAssociatedWithCallingUser(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 4743
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "isSubscriptionAssociatedWithCallingUser"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4749
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 4750
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserNoCheck(ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 4745
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need READ_PHONE_STATE, READ_PRIVILEGED_PHONE_STATE, or carrier privilege"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z
    .locals 2

    .line 4767
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSubscriptionAssociatedWithUser"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4770
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isSubscriptionAssociatedWithUserNoCheck(ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSubscriptionEnabled(I)Z
    .locals 6

    .line 4108
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSubscriptionEnabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4110
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4114
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4118
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4119
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 4122
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4124
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result v3

    .line 4125
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4128
    check-cast v3, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isUiccApplicationsEnabled()Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    .line 4130
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSubscriptionEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " subInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 4131
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 4139
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4140
    throw p0

    .line 4111
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid subscription id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist markSubscriptionsInactive(I)V
    .locals 2

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markSubscriptionsInactive: slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda34;-><init>(I)V

    .line 1288
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 1289
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1297
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V

    .line 1298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "markSubscriptionsInactive: current mapping "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->slotMappingToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist printCallStack()V
    .locals 4

    .line 3733
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 3734
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3735
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscriptionManager"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultVoice/DataSubId] called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calling package="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 0

    .line 4957
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist removeSubInfo(Ljava/lang/String;I)Z
    .locals 4

    .line 2931
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeSubInfo"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSubInfo: uniqueId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2933
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 2937
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2941
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 2942
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternalByIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2944
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find subscription with uniqueId "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2947
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionType()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 2948
    const-string p1, "The subscription type does not match."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2951
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSlotIndexToSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSimSlotIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->removeSubscriptionInfo(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2956
    throw p0
.end method

.method public blacklist removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 8

    .line 3386
    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3388
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3389
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->canPackageManageGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3390
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "removeSubscriptionsFromGroup needs MODIFY_PHONE_STATE or carrier privilege permission on all specified subscriptions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3394
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3397
    array-length v1, p1

    if-eqz v1, :cond_8

    .line 3401
    const-string v1, "removeSubscriptionsFromGroup"

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3406
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget v5, p1, v4

    .line 3407
    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3408
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3413
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3414
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Subscription "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " doesn\'t belong to group "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 3410
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The provided sub id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not valid."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3420
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    .line 3421
    invoke-static {p1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda41;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda41;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3423
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupUuid(ILjava/lang/String;)V

    .line 3424
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v5, v4, v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    goto :goto_2

    .line 3425
    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getGroupUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3428
    iget-object v5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3429
    invoke-virtual {v4}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v4

    .line 3428
    invoke-virtual {v5, v4, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V

    goto :goto_2

    .line 3433
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateGroupDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3435
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3436
    throw p0

    .line 3398
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subIdList is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist requestEmbeddedSubscriptionInfoListRefresh(I)V
    .locals 2

    .line 2827
    const-string v0, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestEmbeddedSubscriptionInfoListRefresh"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2829
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist restoreAllSimSpecificSettingsFromBackup([B)V
    .locals 6

    .line 4923
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreAllSimSpecificSettingsFromBackup"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4926
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4931
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4932
    const-string v4, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4933
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4934
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "restoreSimSpecificSettings"

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4939
    const-string v0, "restoreSimSpecificSettingsDatabaseUpdated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4941
    const-string p1, "Sim specific settings changed the database."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4942
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->reloadDatabaseSync()V

    .line 4943
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda6;-><init>()V

    .line 4944
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4947
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4948
    throw p0
.end method

.method public blacklist setCardSwapCount(I)V
    .locals 0

    .line 6079
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mCardSwapCount:I

    return-void
.end method

.method public blacklist setCarrierId(II)V
    .locals 1

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCarrierId(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1134
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCarrierId: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCarrierName(ILjava/lang/String;)V
    .locals 2

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierName: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carrierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCarrierName(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1201
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCarrierName: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCountryIso(ILjava/lang/String;)V
    .locals 2

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCountryIso: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setCountryIso(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1183
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCountryIso: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDataRoaming(II)I
    .locals 3

    .line 3124
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDataRoaming"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-ltz p1, :cond_0

    .line 3133
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDataRoaming(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3130
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid roaming value "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3136
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3137
    throw p0
.end method

.method public blacklist setDefaultDataSubId(I)V
    .locals 4

    .line 3753
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDefaultDataSubId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 3759
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->printCallStack()V

    .line 3762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3764
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultDataSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3765
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->remapRafIfApplicable()V

    .line 3767
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyDefaultDataSubChanged()V

    .line 3769
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultDataSlotId(I)V

    .line 3770
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setExistingDefaultDataSubId(I)V

    .line 3772
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    .line 3775
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    new-instance v3, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda31;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda31;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3780
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3783
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3784
    throw p0

    .line 3757
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultDataSubId called with DEFAULT_SUBSCRIPTION_ID, subId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDefaultSmsSubId(I)V
    .locals 3

    .line 3899
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDefaultSmsSubId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 3907
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3911
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultSmsSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3913
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultSmsSlotId(I)V

    .line 3914
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setExistingDefaultSmsSubId(I)V

    .line 3916
    const-string v2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3921
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3922
    throw p0

    .line 3903
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultSmsSubId called with DEFAULT_SUB_ID, subId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDefaultVoiceSubId(I)V
    .locals 4

    .line 3832
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDefaultVoiceSubId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    .line 3838
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->printCallStack()V

    .line 3841
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3843
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mDefaultVoiceSubId:Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3845
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setDefaultVoiceSlotId(I)V

    .line 3846
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setExistingDefaultVoiceSubId(I)V

    .line 3848
    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->broadcastSubId(Ljava/lang/String;I)V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3852
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 3854
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    if-eqz v2, :cond_1

    .line 3856
    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3859
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateDefaultSubId()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3863
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3864
    throw p0

    .line 3836
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultVoiceSubId called with DEFAULT_SUB_ID, subId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDeviceToDeviceStatusSharing(II)I
    .locals 3

    .line 4344
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDeviceToDeviceStatusSharing"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4347
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    .line 4357
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDeviceToDeviceStatusSharingPreference(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4354
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sharing "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4360
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4361
    throw p0
.end method

.method public blacklist setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I
    .locals 3

    .line 4379
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDeviceToDeviceStatusSharingContacts"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4382
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4387
    :try_start_0
    const-string v2, "contacts"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4388
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDeviceToDeviceStatusSharingContacts(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4392
    throw p0
.end method

.method public blacklist setDisplayNameUsingSrc(Ljava/lang/String;II)I
    .locals 7

    .line 3007
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisplayNameUsingSrc"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3009
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 3010
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3012
    :try_start_0
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_7

    const/4 v1, 0x4

    if-gt p3, v1, :cond_7

    .line 3019
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 3020
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3027
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v4

    .line 3028
    invoke-static {p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v5

    const/4 v6, 0x0

    if-gt v4, v5, :cond_5

    .line 3029
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v4

    .line 3030
    invoke-static {p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getNameSourcePriority(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3031
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 3041
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 3042
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object p1

    .line 3043
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 3045
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3046
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    .line 3048
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSlotIndex(I)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v5, 0x1040466

    .line 3047
    invoke-virtual {p1, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3050
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104000e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3057
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisplayNameUsingSrc: subId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", nameSource="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3058
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", calling package="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3057
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 3060
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayName(ILjava/lang/String;)V

    .line 3061
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setDisplayNameSource(II)V

    .line 3064
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 3065
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3066
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result p3

    .line 3067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating embedded sub nickname on cardId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 3068
    iget-object p3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    .line 3072
    invoke-static {p0, v6, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 3068
    invoke-virtual {p3, p2, p1, p0}, Landroid/telephony/euicc/EuiccManager;->updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3078
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 3032
    :cond_5
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No need to update the display name. nameSource="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", existing name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", source="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getDisplayNameSource()I

    move-result p2

    .line 3035
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3032
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3078
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 3023
    :cond_6
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find subscription info with sub id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3016
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal name source "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3078
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3079
    throw p0
.end method

.method public blacklist setDisplayNumber(Ljava/lang/String;I)I
    .locals 2

    .line 3096
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisplayNumber"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayNumber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 3098
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calling package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3097
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 3101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3103
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNumber(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3107
    throw p0
.end method

.method public blacklist setEnabledMobileDataPolicies(ILjava/lang/String;)V
    .locals 1

    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setEnabledMobileDataPolicies(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1257
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnabledMobileDataPolicies: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setGroupOwner(ILjava/lang/String;)V
    .locals 2

    .line 1219
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setGroupOwner"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1221
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupOwner(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1225
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setManaged: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setIconTint(II)I
    .locals 3

    .line 2974
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setIconTint"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2978
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2982
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setIconTint(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2985
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2979
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid sub id passed as parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2985
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2986
    throw p0
.end method

.method public blacklist setIsSatelliteProvisionedForNonIpDatagram(IZ)V
    .locals 1

    .line 5324
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setIsSatelliteProvisionedForNonIpDatagram(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5327
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIsSatelliteProvisionedForNonIpDatagram: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLastUsedTPMessageReference(II)V
    .locals 1

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setLastUsedTPMessageReference(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1241
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLastUsedTPMessageReference: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setMccMnc(ILjava/lang/String;)V
    .locals 3

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setMcc(ILjava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setMnc(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1150
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMccMnc: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setNtn(IZ)V
    .locals 1

    .line 1164
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNtn(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1166
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnlyNonTerrestrialNetwork: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setNumberFromIms(ILjava/lang/String;)V
    .locals 2

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNumberFromIms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1269
    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1268
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 1273
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNumberFromIms(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1275
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNumberFromIms: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setOpportunistic(ZILjava/lang/String;)I
    .locals 6

    .line 3158
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 3159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    .line 3158
    const-string v4, "setOpportunistic"

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V

    .line 3162
    const-string p2, "setOpportunistic"

    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 3166
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setOpportunistic(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3169
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3170
    throw p0
.end method

.method public blacklist setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4601
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPhoneNumber: subId="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", number="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 4602
    invoke-static {v0, p3}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calling package="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 4601
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4604
    iget-object p5, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p5, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 p5, 0x2

    if-ne p2, p5, :cond_0

    .line 4613
    const-string p2, "setPhoneNumber"

    invoke-direct {p0, p4, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4615
    const-string p2, "number"

    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 4619
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setNumberFromCarrier(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4621
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4622
    throw p0

    .line 4609
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPhoneNumber doesn\'t accept source "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4610
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->phoneNumberSourceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4605
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "setPhoneNumber for CARRIER needs carrier privilege."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 3

    .line 3252
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setPreferredDataSubscriptionId"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3255
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3261
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3263
    const-string p1, "Set preferred data sub: phoneSwitcher is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    const/4 p1, 0x4

    .line 3266
    :try_start_1
    invoke-interface {p3, p1}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;->onComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3269
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3277
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3275
    :cond_1
    :try_start_3
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->trySetOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3277
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3278
    throw p0
.end method

.method public blacklist setSatelliteESOSSupported(IZ)V
    .locals 1

    .line 5306
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteESOSSupported(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5309
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSatelliteESOSSupported: invalid subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSatelliteEntitlementInfo(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5269
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementInfo(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move v1, p1

    .line 5273
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSatelliteEntitlementPlmnList: invalid subId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4001
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSubscriptionProperty"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4005
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSubscriptionProperty: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", columnName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", calling package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4006
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4005
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4008
    invoke-static {}, Landroid/provider/Telephony$SimInfo;->getAllColumns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4014
    sget-object v2, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->DIRECT_ACCESS_SUBSCRIPTION_COLUMNS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4019
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4015
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Column "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed be directly accessed through setSubscriptionProperty."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4009
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid column name "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4021
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4022
    throw p0
.end method

.method public blacklist setSubscriptionUserHandle(Landroid/os/UserHandle;I)I
    .locals 2

    .line 4676
    const-string v0, "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSubscriptionUserHandle"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/16 p1, -0x2710

    .line 4680
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 4683
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4686
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUserId(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4690
    throw p0
.end method

.method public blacklist setTransferStatus(II)V
    .locals 2

    .line 5225
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->setTransferStatus_enforcePermission()V

    .line 5226
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5234
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setTransferStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5237
    throw p0

    .line 5229
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS tosetTransferStatus"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setUiccApplicationsEnabled(ZI)V
    .locals 6

    .line 4291
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUiccApplicationsEnabled"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforcePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiccApplicationsEnabled: subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enabled="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", calling package="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4294
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4293
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->logl(Ljava/lang/String;)V

    .line 4296
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4301
    invoke-direct {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4300
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->addEnhancedLocalLog(Ljava/lang/String;)V

    .line 4302
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->uiccLog(Ljava/lang/String;)V

    .line 4305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4308
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 4309
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4315
    invoke-virtual {v2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->areUiccApplicationsEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 4316
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUiccApplicationsEnabled(IZ)V

    .line 4317
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda36;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda36;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4322
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4311
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiccApplicationsEnabled: Subscription doesn\'t exist. subId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4322
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4323
    throw p0
.end method

.method public blacklist setUsageSetting(IILjava/lang/String;)I
    .locals 6

    .line 4643
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 4644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string p3, "android.permission.MODIFY_PHONE_STATE"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    .line 4643
    const-string v4, "setUsageSetting"

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 p2, 0x2

    if-gt p1, p2, :cond_0

    .line 4653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 4655
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setUsageSetting(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4658
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4659
    throw p0

    .line 4649
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setUsageSetting: Invalid usage setting: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist syncGroupedSetting(I)V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .locals 0

    .line 4966
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionManagerServiceCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist updateEmbeddedSubscriptions(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda28;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateGroupDisabled()V
    .locals 6

    .line 5186
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 5187
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getAllSubscriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 5188
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 5189
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 5190
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5191
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    .line 5192
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    .line 5191
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 5195
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->shouldDisableSubGroup(Landroid/os/ParcelUuid;)Z

    move-result v3

    const-string v4, "updateGroupDisabled opp subID:: "

    if-eqz v3, :cond_0

    .line 5196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5197
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupDisabled(IZ)V

    goto :goto_0

    .line 5200
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 5201
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    .line 5203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " groupDisabled:: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->log(Ljava/lang/String;)V

    .line 5204
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mSubscriptionDatabaseManager:Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    .line 5205
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 5204
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setGroupDisabled(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist updateSimState(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 7

    .line 5099
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda39;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSimStateForInactivePort(ILjava/lang/String;)V
    .locals 2

    .line 5032
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSubscriptionByCarrierConfig(ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V
    .locals 7

    .line 2285
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;ILjava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
