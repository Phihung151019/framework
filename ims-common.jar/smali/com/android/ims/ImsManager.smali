.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/FeatureUpdates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$InstanceManager;,
        Lcom/android/ims/ImsManager$ImsStatsCallback;,
        Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;,
        Lcom/android/ims/ImsManager$SubscriptionManagerProxy;,
        Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;,
        Lcom/android/ims/ImsManager$DefaultSettingsProxy;,
        Lcom/android/ims/ImsManager$SettingsProxy;,
        Lcom/android/ims/ImsManager$LazyExecutor;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final blacklist ACTION_IMS_REGISTRATION_ERROR:Ljava/lang/String; = "android.telephony.ims.action.WFC_IMS_REGISTRATION_ERROR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final blacklist ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field private static final blacklist DBG:Z = true

.field public static final blacklist EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_CDPN_CALLED_PARTY_NUMBER:Ljava/lang/String; = "secIms:cpdnCalledPartyNumber"

.field public static final blacklist EXTRA_CDPN_TIMEOUT:Ljava/lang/String; = "secIms:cpdnTimeout"

.field public static final blacklist EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android:isUnknown"

.field public static final blacklist EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final blacklist EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field public static final blacklist FALSE:Ljava/lang/String; = "false"

.field private static final blacklist IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/ims/ImsManager$InstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IMS_STATS_CALLBACKS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/ims/ImsManager$ImsStatsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INCOMING_CALL_RESULT_CODE:I = 0x65

.field private static final blacklist LOCAL_IMS_CONFIG_KEYS:[I

.field public static final blacklist PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE:Ljava/lang/String; = "persist.dbg.allow_ims_off"

.field public static final blacklist PROPERTY_DBG_ALLOW_IMS_OFF_OVERRIDE_DEFAULT:I = 0x0

.field public static final blacklist PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final blacklist PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final blacklist PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final blacklist PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final blacklist PROPERTY_DBG_WFC_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.wfc_avail_ovr"

.field public static final blacklist PROPERTY_DBG_WFC_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final blacklist RESPONSE_WAIT_TIME_MS:I = 0xbb8

.field private static final blacklist SUBINFO_PROPERTY_FALSE:I = 0x0

.field protected static final blacklist SUB_PROPERTY_NOT_INITIALIZED:I = -0x1

.field protected static final blacklist SYSTEM_PROPERTY_NOT_SET:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImsManager"

.field public static final blacklist TRUE:Ljava/lang/String; = "true"


# instance fields
.field private blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mConfigUpdated:Z

.field protected blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImsConfigListener:Lcom/android/ims/ImsConfigListener;

.field private blacklist mLogTagPostfix:Ljava/lang/String;

.field protected blacklist mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/ims/MmTelFeatureConnection;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

.field protected blacklist mPhoneId:I

.field private final blacklist mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

.field private final blacklist mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$573FYspCxHwkdwJI7GJeCryZsR0(Lcom/android/ims/ImsManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->lambda$setRttConfig$6(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$78RgO2witzbvwAieaFkKWqvlQ4w()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    invoke-static {}, Lcom/android/ims/ImsManager;->getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$7Ha_oiEH6bNb9qXwJso80y9WJBQ(Lcom/android/ims/ImsManager;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$isImsNeeded$4(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BrkUe0sFUInWqOl9Et1HgjjpPwI(Lcom/android/ims/ImsManager;IILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/ImsManager;->lambda$isSupported$0(IILjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IYjjJ4Kz2uZgZ6EnuuVVFGuL8wQ(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$getRegistrationTech$5(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LZtl88_qRPTyxiv1Jng3PgzjSSM(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$getImsServiceState$7(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yl6-_mqV0cPO1QmyfhBhebejOzA(Lcom/android/ims/ImsManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$setWfcRoamingSettingInternal$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mlH5IIQgbvcwDC4PnlHsI-OYVLY(Lcom/android/ims/ImsManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->lambda$setWfcModeInternal$2(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogTagPostfix(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImsThreadExecutor(Lcom/android/ims/ImsManager;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 234
    const/16 v0, 0x44

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsManager;->LOCAL_IMS_CONFIG_KEYS:[I

    .line 467
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    .line 469
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 2142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    .line 457
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    .line 2144
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2145
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 2146
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2147
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p1}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 2148
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSettingsProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/ims/ImsManager$DefaultSettingsProxy;-><init>(Lcom/android/ims/ImsManager-IA;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    .line 2149
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 2151
    new-instance v0, Lcom/android/ims/ImsManager$LazyExecutor;

    invoke-direct {v0, v1}, Lcom/android/ims/ImsManager$LazyExecutor;-><init>(Lcom/android/ims/ImsManager-IA;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2152
    new-instance v0, Landroid/telephony/BinderCacheManager;

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v2}, Landroid/telephony/BinderCacheManager;-><init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 2155
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/ims/ImsManager;->associate(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 2156
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;Lcom/android/ims/ImsManager$SubscriptionManagerProxy;Lcom/android/ims/ImsManager$SettingsProxy;Landroid/telephony/BinderCacheManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "factory"    # Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;
    .param p4, "subManagerProxy"    # Lcom/android/ims/ImsManager$SubscriptionManagerProxy;
    .param p5, "settingsProxy"    # Lcom/android/ims/ImsManager$SettingsProxy;
    .param p6, "binderCacheManager"    # Landroid/telephony/BinderCacheManager;

    .line 2164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    .line 457
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    .line 2165
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2166
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 2167
    iput-object p3, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    .line 2168
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2169
    iput-object p4, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 2170
    iput-object p5, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    .line 2171
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 2174
    new-instance v0, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2175
    iput-object p6, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 2177
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/ims/ImsManager;->associate(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 2178
    return-void
.end method

.method protected static blacklist booleanToPropertyString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Z

    .line 3572
    if-eqz p0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method private blacklist changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 7
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2704
    const-string v0, "changeMmTelCapability: changing capabilities enter"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2705
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2707
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMmTelCapability: changing capabilities for sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2709
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 2710
    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v1}, Lcom/android/ims/ImsManager;->getStatsCallback(I)Lcom/android/ims/ImsManager$ImsStatsCallback;

    move-result-object v1

    .line 2711
    .local v1, "cb":Lcom/android/ims/ImsManager$ImsStatsCallback;
    if-nez v1, :cond_0

    .line 2712
    return-void

    .line 2714
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2715
    .local v3, "enabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    .line 2716
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    .line 2715
    const/4 v6, 0x1

    invoke-interface {v1, v4, v5, v6}, Lcom/android/ims/ImsManager$ImsStatsCallback;->onEnabledMmTelCapabilitiesChanged(IIZ)V

    .line 2717
    .end local v3    # "enabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 2719
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2720
    .local v3, "disabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    .line 2721
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    .line 2720
    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/android/ims/ImsManager$ImsStatsCallback;->onEnabledMmTelCapabilitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2722
    .end local v3    # "disabledCaps":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_1

    .line 2726
    .end local v1    # "cb":Lcom/android/ims/ImsManager$ImsStatsCallback;
    :cond_2
    nop

    .line 2727
    const-string v1, "changeMmTelCapability: changing capabilities exit"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2728
    return-void

    .line 2723
    :catch_0
    move-exception v1

    .line 2724
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "changeMmTelCapability(CCR)"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method private static blacklist convertRttPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 2782
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3235
    const-string v0, "createCallSession()"

    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/MmTelFeatureConnection;

    .line 3237
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 3243
    .end local v1    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :catch_0
    move-exception v1

    .line 3244
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateCallSession: Error, UnsupportedOperation exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x92

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 3238
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v1

    .line 3239
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateCallSession: Error, remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3240
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public static blacklist factoryReset(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 3424
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 3425
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 3426
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 3427
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->factoryReset()V

    .line 3429
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "factoryReset: ImsManager null."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    return-void
.end method

.method private blacklist getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 3072
    const/4 v0, 0x0

    .line 3073
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    .line 3075
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3077
    :cond_0
    if-eqz v0, :cond_1

    .line 3078
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 3081
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist getConnector(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "logPrefix"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/ims/FeatureConnector$Listener<",
            "Lcom/android/ims/ImsManager;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation

    .line 530
    .local p3, "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/ImsManager;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 531
    .local v6, "readyFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v1, Lcom/android/ims/FeatureConnector;

    new-instance v4, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda2;-><init>()V

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "phoneId":I
    .end local p2    # "logPrefix":Ljava/lang/String;
    .end local p3    # "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/ImsManager;>;"
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .local v2, "context":Landroid/content/Context;
    .local v3, "phoneId":I
    .local v5, "logPrefix":Ljava/lang/String;
    .local v7, "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/ImsManager;>;"
    .local v8, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v1 .. v8}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$ManagerFactory;Ljava/lang/String;Ljava/util/List;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method private blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .line 3215
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method private static blacklist getITelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .line 3221
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3222
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3223
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3219
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getImsProvisionedBoolNoException(II)Z
    .locals 6
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1685
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1686
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1687
    const-string v1, "getImsProvisionedBoolNoException subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1688
    return v2

    .line 1691
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1692
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 1693
    const-string v3, "getImsProvisionedBoolNoException ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1694
    return v2

    .line 1698
    :cond_1
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningStatusForCapability(III)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1699
    :catch_0
    move-exception v3

    .line 1700
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImsProvisionedBoolNoException: operation failed for capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1701
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Returning false."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1700
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1702
    return v2
.end method

.method private blacklist getImsThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 3062
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static greylist getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 497
    sget-object v0, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    monitor-enter v0

    .line 498
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager$InstanceManager;

    .line 499
    .local v1, "instanceManager":Lcom/android/ims/ImsManager$InstanceManager;
    if-nez v1, :cond_0

    .line 502
    new-instance v2, Lcom/android/ims/SecImsManager;

    invoke-direct {v2, p0, p1}, Lcom/android/ims/SecImsManager;-><init>(Landroid/content/Context;I)V

    .line 503
    .local v2, "mgr":Lcom/android/ims/ImsManager;
    new-instance v3, Lcom/android/ims/ImsManager$InstanceManager;

    invoke-direct {v3, v2}, Lcom/android/ims/ImsManager$InstanceManager;-><init>(Lcom/android/ims/ImsManager;)V

    move-object v1, v3

    .line 505
    sget-object v3, Lcom/android/ims/ImsManager;->IMS_MANAGER_INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    .end local v2    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v1}, Lcom/android/ims/ImsManager$InstanceManager;->reconnect()V

    .line 510
    invoke-virtual {v1}, Lcom/android/ims/ImsManager$InstanceManager;->getInstance()Lcom/android/ims/ImsManager;

    move-result-object v0

    return-object v0

    .line 507
    .end local v1    # "instanceManager":Lcom/android/ims/ImsManager$InstanceManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getIntArrayCarrierConfig(Ljava/lang/String;)[I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 3112
    const/4 v0, 0x0

    .line 3113
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    .line 3115
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3117
    :cond_0
    if-eqz v0, :cond_1

    .line 3118
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1

    .line 3121
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method private blacklist getIntCarrierConfig(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 3092
    const/4 v0, 0x0

    .line 3093
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    .line 3095
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3097
    :cond_0
    if-eqz v0, :cond_1

    .line 3098
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3101
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private blacklist getLocalImsConfigKeyInt(I)I
    .locals 3
    .param p1, "key"    # I

    .line 3614
    const/4 v0, -0x1

    .line 3616
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3618
    :pswitch_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v1

    move v0, v1

    .line 3621
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalImsConfigKeInt() for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3622
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getLocalImsConfigKeyString(I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # I

    .line 3632
    const-string v0, ""

    .line 3634
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3636
    :pswitch_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v0

    .line 3640
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalImsConfigKeyString() for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3641
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3131
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3135
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    .line 3136
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    const/16 v1, 0x6a

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3140
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSubId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3146
    return-object v0

    .line 3141
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to get MmTelFeature when it is still setting up, curr subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3142
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3141
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 3143
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Service is still initializing"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3137
    :cond_1
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Service is unavailable"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3132
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :cond_2
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "IMS not supported on device."

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private blacklist getRcsProvisionedBoolNoException(II)Z
    .locals 6
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1711
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1712
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1713
    const-string v1, "getRcsProvisionedBoolNoException subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1714
    return v2

    .line 1717
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1718
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 1719
    const-string v3, "getRcsProvisionedBoolNoException ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1720
    return v2

    .line 1724
    :cond_1
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getRcsProvisioningStatusForCapability(III)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1725
    :catch_0
    move-exception v3

    .line 1726
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRcsProvisionedBoolNoException: operation failed for capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1727
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Returning false."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1726
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 1728
    return v2
.end method

.method private blacklist getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "subSetting"    # Ljava/lang/String;
    .param p2, "defaultConfigKey"    # Ljava/lang/String;

    .line 1441
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1445
    .local v0, "result":I
    if-ne v0, v2, :cond_0

    .line 1446
    invoke-direct {p0, p2}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .line 1448
    :cond_0
    return v0
.end method

.method private static blacklist getStatsCallback(I)Lcom/android/ims/ImsManager$ImsStatsCallback;
    .locals 2
    .param p0, "phoneId"    # I

    .line 578
    sget-object v0, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    monitor-enter v0

    .line 579
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager$ImsStatsCallback;

    monitor-exit v0

    return-object v1

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getWfcMode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1337
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1338
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1339
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1340
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v2

    return v2

    .line 1342
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist getWfcMode(Landroid/content/Context;Z)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # Z

    .line 1384
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1385
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1386
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1387
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    return v2

    .line 1389
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "getWfcMode: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isActiveSubscriptionPresent()Z
    .locals 1

    .line 3777
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-interface {v0}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getActiveSubscriptionIdList()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isDataEnabled()Z
    .locals 2

    .line 3488
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 3489
    const-string v0, "isDataEnabled: TelephonyManager not available, returning false..."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3490
    const/4 v0, 0x0

    return v0

    .line 3492
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3493
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataConnectionAllowed()Z

    move-result v1

    return v1
.end method

.method private blacklist isEabProvisioned()Z
    .locals 2

    .line 3503
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getRcsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 591
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 592
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 593
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    return v2

    .line 596
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isEnhanced4gLteModeSettingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isGbaValid()Z
    .locals 5

    .line 1660
    const-string v0, "carrier_ims_gba_required_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1662
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1663
    const-string v0, "isGbaValid: TelephonyManager is null, returning false."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1664
    return v2

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1667
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v3

    .line 1668
    .local v3, "efIst":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1669
    const-string v2, "isGbaValid - ISF is NULL"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1670
    return v1

    .line 1672
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 1673
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1674
    .local v1, "result":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGbaValid - GBA capable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ISF="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1675
    return v1

    .line 1677
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v1    # "result":Z
    .end local v3    # "efIst":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private blacklist isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z
    .locals 2
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1805
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/ims/ImsManager;)V

    .line 1806
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1805
    return v0
.end method

.method private blacklist isImsNeededForCapability(I)Z
    .locals 5
    .param p1, "capability"    # I

    .line 1813
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 1815
    if-eq p1, v4, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 1824
    :cond_1
    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public static blacklist isImsSupportedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.ims"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isImsTurnOffAllowed()Z
    .locals 1

    .line 3279
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3280
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3281
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3279
    :goto_0
    return v0
.end method

.method private blacklist isLocalImsConfigKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 3710
    sget-object v0, Lcom/android/ims/ImsManager;->LOCAL_IMS_CONFIG_KEYS:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method private blacklist isMmTelProvisioningRequired(II)Z
    .locals 6
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 3518
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 3519
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3520
    const-string v1, "isMmTelProvisioningRequired subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3521
    return v2

    .line 3524
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3525
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 3526
    const-string v3, "isMmTelProvisioningRequired ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3527
    return v2

    .line 3530
    :cond_1
    const/4 v2, 0x0

    .line 3532
    .local v2, "required":Z
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isProvisioningRequiredForCapability(III)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 3537
    goto :goto_0

    .line 3534
    :catch_0
    move-exception v3

    .line 3535
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMmTelProvisioningRequired : operation failed capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3536
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3535
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3539
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmTel Provisioning required "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for capability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3540
    return v2
.end method

.method public static greylist-max-r isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 715
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 717
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    return v2

    .line 720
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isNonTtyOrTtyOnVolteEnabled: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isRcsProvisioningRequired(II)Z
    .locals 6
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 3544
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 3545
    .local v0, "subId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3546
    const-string v1, "isRcsProvisioningRequired subId is invalid"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3547
    return v2

    .line 3550
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3551
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 3552
    const-string v3, "isRcsProvisioningRequired ITelephony interface is invalid"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3553
    return v2

    .line 3556
    :cond_1
    const/4 v2, 0x0

    .line 3558
    .local v2, "required":Z
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isRcsProvisioningRequiredForCapability(III)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 3563
    goto :goto_0

    .line 3560
    :catch_0
    move-exception v3

    .line 3561
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsProvisioningRequired : operation failed capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3562
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3561
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 3565
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rcs Provisioning required "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for capability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3566
    return v2
.end method

.method private blacklist isSubIdValid(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 3772
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-interface {v0, p1}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isTelephonyCallingSupportedOnDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 554
    invoke-static {}, Lcom/android/ims/ImsManager;->minimalTelephonyCdmCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.calling"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isTurnOffImsAllowedByPlatform()Z
    .locals 4

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.allow_ims_off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1143
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 1144
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1149
    :cond_0
    const-string v0, "carrier_allow_turnoff_ims_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1146
    :cond_1
    :goto_0
    return v3
.end method

.method private blacklist isVoImsOptInEnabled()Z
    .locals 4

    .line 3714
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3715
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 3714
    const-string v2, "voims_opt_in_status"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 3717
    .local v0, "setting":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static greylist-max-r isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 774
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 775
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 776
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v2

    return v2

    .line 779
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isVolteEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 883
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 884
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 885
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v2

    return v2

    .line 888
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isVolteProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isVtEnabledByPlatform(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 991
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 992
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 993
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v2

    return v2

    .line 996
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isVtEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isVtEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1028
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1029
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1030
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1031
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v2

    return v2

    .line 1033
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isVtEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isVtProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 961
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 962
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 963
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 964
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v2

    return v2

    .line 966
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isVtProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isWfcEnabledByPlatform(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1599
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1600
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1601
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1602
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    return v2

    .line 1604
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isWfcEnabledByPlatform: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isWfcEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1160
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1161
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1162
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1163
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    return v2

    .line 1165
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isWfcEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist isWfcProvisioned()Z
    .locals 1

    .line 3508
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/ims/ImsManager;->getImsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isWfcProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 924
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 925
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 926
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 927
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v2

    return v2

    .line 929
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isWfcProvisionedOnDevice: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isWfcRoamingEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1528
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1529
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1530
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1531
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v2

    return v2

    .line 1533
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "isWfcRoamingEnabledByUser: ImsManager null, returning default value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/4 v2, 0x0

    return v2
.end method

.method private synthetic blacklist lambda$getImsServiceState$7(Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "result"    # Ljava/util/function/Consumer;

    .line 3050
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getImsServiceState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3054
    goto :goto_0

    .line 3051
    :catch_0
    move-exception v0

    .line 3053
    .local v0, "e":Lcom/android/ims/ImsException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3055
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$getRegistrationTech$5(Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 2502
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistrationTech()I

    move-result v0

    .line 2503
    .local v0, "tech":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2507
    .end local v0    # "tech":I
    goto :goto_0

    .line 2504
    :catch_0
    move-exception v0

    .line 2505
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getRegistrationTech(C): no connection to ImsService."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 2506
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2508
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$isImsNeeded$4(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 1806
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isImsNeededForCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isImsOverNrEnabledByPlatform$1(I)Z
    .locals 1
    .param p0, "cap"    # I

    .line 871
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$isLocalImsConfigKey$9(II)Z
    .locals 1
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 3710
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$isSupported$0(IILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "transportType"    # I
    .param p2, "capability"    # I
    .param p3, "result"    # Ljava/util/function/Consumer;

    .line 789
    const/4 v0, 0x1

    .line 804
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 789
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 810
    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 824
    :sswitch_0
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 825
    return-void

    .line 820
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isSuppServicesOverUtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 821
    return-void

    .line 816
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 817
    return-void

    .line 812
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 813
    return-void

    .line 792
    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    .line 808
    goto :goto_0

    .line 804
    :sswitch_4
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 805
    return-void

    .line 800
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isSuppServicesOverUtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 801
    return-void

    .line 797
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 798
    return-void

    .line 794
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 795
    return-void

    .line 832
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 833
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$registerFeatureCallback$8(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 1
    .param p0, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 3154
    const/4 v0, 0x3

    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3156
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 3157
    :goto_1
    return-void
.end method

.method private synthetic blacklist lambda$setRttConfig$6(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "value"    # I

    .line 2772
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting RTT enabled to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2777
    goto :goto_0

    .line 2775
    :catch_0
    move-exception v0

    .line 2776
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set RTT value enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2778
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$setWfcModeInternal$2(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1513
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    goto :goto_0

    .line 1515
    :catch_0
    move-exception v0

    .line 1518
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$setWfcRoamingSettingInternal$3(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1582
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    goto :goto_0

    .line 1584
    :catch_0
    move-exception v0

    .line 1587
    :goto_0
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 3268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3269
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 3260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    return-void
.end method

.method private static blacklist minimalTelephonyCdmCheck()Z
    .locals 2

    .line 545
    const-string v0, "ro.vendor.api_level"

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 547
    .local v0, "vendorApiLevel":I
    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist reevaluateCapabilities()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1762
    const-string v0, "reevaluateCapabilities"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 1763
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1764
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    .line 1765
    .local v1, "isNonTty":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVoWifiEnabled()Z

    move-result v2

    .line 1766
    .local v2, "isNonTtyWifi":Z
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1767
    invoke-direct {p0, v0, v2}, Lcom/android/ims/ImsManager;->updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1768
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateCrossSimFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1769
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1770
    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1771
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateCallComposerFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    goto :goto_0

    .line 1773
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateCallComposerFeatureValueLegacy(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1778
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->updateRttConfigValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isActiveSubscriptionPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1781
    .local v3, "isImsNeededForRtt":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->updateUtFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1784
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1786
    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1795
    :cond_2
    const-string v4, "reevaluateCapabilities: turnOffIms"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1796
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    goto :goto_3

    .line 1791
    :cond_3
    :goto_2
    const-string v4, "reevaluateCapabilities: turnOnIms"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1792
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1798
    :goto_3
    return-void
.end method

.method public static blacklist setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 639
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 640
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 641
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 644
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "setEnhanced4gLteModeSetting: ImsManager null, value not set."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method public static blacklist setImsStatsCallback(ILcom/android/ims/ImsManager$ImsStatsCallback;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "cb"    # Lcom/android/ims/ImsManager$ImsStatsCallback;

    .line 564
    sget-object v0, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    monitor-enter v0

    .line 565
    if-nez p1, :cond_0

    .line 566
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 568
    :cond_0
    sget-object v1, Lcom/android/ims/ImsManager;->IMS_STATS_CALLBACKS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    :goto_0
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setLocalImsConfigKeyInt(II)I
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3652
    const/4 v0, -0x1

    .line 3654
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3656
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/ims/ImsManager;->setVoImsOptInSetting(I)I

    move-result v0

    .line 3657
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V

    .line 3660
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalImsConfigKeyInt() for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3666
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 3667
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    .line 3668
    .local v2, "config":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyIntImsConfigChanged(II)V

    .line 3670
    return v0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setLocalImsConfigKeyString(ILjava/lang/String;)I
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3682
    const/4 v0, -0x1

    .line 3684
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3686
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setVoImsOptInSetting(I)I

    move-result v0

    .line 3687
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V

    .line 3690
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalImsConfigKeyString() for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3696
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 3697
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    .line 3698
    .local v2, "config":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyStringImsConfigChanged(ILjava/lang/String;)V

    .line 3700
    return v0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setRttConfig(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2768
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2769
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 2770
    .local v0, "value":I
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/ims/ImsManager;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2779
    return-void
.end method

.method private blacklist setVoImsOptInSetting(I)I
    .locals 4
    .param p1, "value"    # I

    .line 3721
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3722
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 3724
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3721
    const-string v3, "voims_opt_in_status"

    invoke-interface {v0, v1, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3725
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setVtSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1091
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1092
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1093
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Z)V

    .line 1096
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "setVtSetting: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void
.end method

.method public static blacklist setWfcMode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .line 1360
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1362
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1363
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 1365
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void
.end method

.method public static blacklist setWfcMode(Landroid/content/Context;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1460
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1461
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1462
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1463
    invoke-virtual {v1, p1, p2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1465
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "setWfcMode: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    return-void
.end method

.method private blacklist setWfcModeInternal(I)V
    .locals 3
    .param p1, "wfcMode"    # I

    .line 1510
    move v0, p1

    .line 1511
    .local v0, "value":I
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1519
    return-void
.end method

.method public static blacklist setWfcRoamingSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1557
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1558
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1559
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1560
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSetting(Z)V

    .line 1562
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "setWfcRoamingSetting: ImsManager null, value not set."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return-void
.end method

.method private blacklist setWfcRoamingSettingInternal(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1577
    if-eqz p1, :cond_0

    .line 1578
    const/4 v0, 0x1

    goto :goto_0

    .line 1579
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1580
    .local v0, "value":I
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/ims/ImsManager;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1588
    return-void
.end method

.method public static blacklist setWfcSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 1193
    new-instance v0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;-><init>(Landroid/content/Context;)V

    .line 1194
    .local v0, "p":Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getDefaultVoicePhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1195
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 1196
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 1198
    :cond_0
    const-string v2, "ImsManager"

    const-string v3, "setWfcSetting: ImsManager null, can not set value."

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void
.end method

.method private blacklist turnOffIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3289
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->disableIms(I)V

    .line 3290
    return-void
.end method

.method private blacklist turnOnIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3275
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->enableIms(I)V

    .line 3276
    return-void
.end method

.method private blacklist updateCallComposerFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 10
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 2065
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCallComposerEnabledByUser()Z

    move-result v0

    .line 2066
    .local v0, "isCallComposerEnabledByUser":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isBusinessOnlyCallComposerEnabledByUser()Z

    move-result v1

    .line 2068
    .local v1, "isBusinessComposerEnabledByUser":Z
    const-string v2, "supports_call_composer_bool"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    .line 2070
    .local v2, "isCallComposerEnabledByConfig":Z
    const-string v3, "supports_business_call_composer_bool"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    .line 2073
    .local v3, "isBusinessComposerEnabledByConfig":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 2075
    .local v6, "isCallComposerFeatureOn":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    .line 2078
    .local v4, "isBusinessOnlyComposerFeatureOn":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v7

    .line 2080
    .local v7, "nrAvailable":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCallComposerFeatureValue:  isCallComposerEnabledByUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCallComposerEnabledByConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCallComposerFeatureOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isBusinessOnlyComposerFeatureOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isBusinessComposerEnabledByUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isBusinessComposerEnabledByConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nrAvailable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2090
    const/16 v8, 0x20

    const/16 v9, 0x10

    if-eqz v6, :cond_2

    .line 2091
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2094
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 2097
    :cond_2
    if-eqz v4, :cond_3

    .line 2098
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2101
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    goto :goto_2

    .line 2105
    :cond_3
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2108
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2114
    :goto_2
    const/4 v5, 0x3

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 2115
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2118
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_3

    .line 2121
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    .line 2122
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2125
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    goto :goto_3

    .line 2129
    :cond_5
    invoke-virtual {p1, v9, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2132
    invoke-virtual {p1, v8, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2136
    :goto_3
    return-void
.end method

.method private blacklist updateCallComposerFeatureValueLegacy(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 7
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 2028
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCallComposerEnabledByUser()Z

    move-result v0

    .line 2029
    .local v0, "isUserSetEnabled":Z
    const-string v1, "supports_call_composer_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 2032
    .local v1, "isCarrierConfigEnabled":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2033
    .local v3, "isFeatureOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v4

    .line 2035
    .local v4, "nrAvailable":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallComposerFeatureValue: isUserSetEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCarrierConfigEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isFeatureOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nrAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2040
    const/16 v5, 0x10

    if-eqz v3, :cond_1

    .line 2041
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_1

    .line 2045
    :cond_1
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2049
    :goto_1
    const/4 v2, 0x3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 2050
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 2054
    :cond_2
    invoke-virtual {p1, v5, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2058
    :goto_2
    return-void
.end method

.method private blacklist updateCrossSimFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1970
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimCallingEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {p1, v2, v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_0

    .line 1975
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1979
    :goto_0
    return-void
.end method

.method private blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 6
    .param p1, "configs"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3781
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3783
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    .line 3784
    .local v1, "config":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v1, :cond_0

    .line 3789
    :try_start_0
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsConfig;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3793
    nop

    .line 3794
    return-void

    .line 3790
    :catch_0
    move-exception v2

    .line 3791
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "updateImsCarrierConfigs()"

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v2, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 3785
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method private blacklist updateRttConfigValue()Z
    .locals 11

    .line 2734
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isActiveSubscriptionPresent()Z

    move-result v0

    .line 2735
    .local v0, "isActiveSubscriptionPresent":Z
    nop

    .line 2736
    const-string v1, "rtt_supported_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 2739
    .local v1, "isCarrierSupported":Z
    :goto_1
    nop

    .line 2740
    const-string v4, "default_rtt_mode_int"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v4

    .line 2741
    .local v4, "defaultRttMode":I
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    iget-object v6, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "rtt_calling_mode"

    invoke-interface {v5, v6, v7, v4}, Lcom/android/ims/ImsManager$SettingsProxy;->getSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2743
    .local v5, "rttMode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultRttMode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " rttMode = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2744
    const-string v6, "ignore_rtt_mode_setting_bool"

    invoke-direct {p0, v6}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v6

    .line 2746
    .local v6, "isRttAlwaysOnCarrierConfig":Z
    if-eqz v6, :cond_2

    if-ne v5, v4, :cond_2

    .line 2747
    iget-object v8, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    iget-object v9, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-interface {v8, v9, v7, v4}, Lcom/android/ims/ImsManager$SettingsProxy;->putSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2751
    :cond_2
    iget-object v8, p0, Lcom/android/ims/ImsManager;->mSettingsProxy:Lcom/android/ims/ImsManager$SettingsProxy;

    iget-object v9, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 2752
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2751
    invoke-interface {v8, v9, v7, v3}, Lcom/android/ims/ImsManager$SettingsProxy;->getSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v3

    .line 2754
    .local v7, "isRttUiSettingEnabled":Z
    :goto_2
    if-nez v7, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v8, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v8, v2

    .line 2755
    .local v8, "shouldImsRttBeOn":Z
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update RTT: settings value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " always-on carrierconfig: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "isActiveSubscriptionPresent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/ims/ImsManager;->logi(Ljava/lang/String;)V

    .line 2759
    if-eqz v1, :cond_6

    .line 2760
    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V

    goto :goto_5

    .line 2762
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V

    .line 2764
    :goto_5
    if-eqz v1, :cond_7

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    move v2, v3

    :goto_6
    return v2
.end method

.method private blacklist updateUtFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 9
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 1983
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isSuppServicesOverUtEnabledByPlatform()Z

    move-result v0

    .line 1988
    .local v0, "isCarrierSupported":Z
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1989
    const-string v3, "carrier_ut_provisioning_required_bool"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    .line 1992
    .local v3, "requiresProvisioning":Z
    :goto_1
    const/4 v5, 0x1

    .line 1993
    .local v5, "isProvisioned":Z
    if-eqz v3, :cond_3

    .line 1994
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1998
    .local v6, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_2

    .line 1999
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v7

    invoke-interface {v6, v7, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningStatusForCapability(III)Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .end local v5    # "isProvisioned":Z
    .local v7, "isProvisioned":Z
    goto :goto_2

    .line 2003
    .end local v7    # "isProvisioned":Z
    .restart local v5    # "isProvisioned":Z
    :catch_0
    move-exception v7

    .line 2004
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "updateUtFeatureValue: couldn\'t reach telephony! returning provisioned"

    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 2005
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    nop

    .line 2007
    .end local v6    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v4, v2

    .line 2009
    .local v4, "isFeatureOn":Z
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUtFeatureValue: available = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isProvisioned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2013
    if-eqz v4, :cond_5

    .line 2014
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_5

    .line 2018
    :cond_5
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2022
    :goto_5
    return-void
.end method

.method private blacklist updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .locals 11
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isNonTty"    # Z

    .line 1873
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    .line 1874
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    .line 1875
    .local v1, "vtEnabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    .line 1876
    .local v2, "advancedEnabled":Z
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v3

    .line 1877
    .local v3, "isDataEnabled":Z
    const-string v4, "ignore_data_enabled_changed_for_video_calls"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v4

    .line 1879
    .local v4, "ignoreDataEnabledChanged":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v5

    .line 1882
    .local v5, "isProvisioned":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v6

    .line 1884
    .local v7, "isLteFeatureOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v8

    .line 1886
    .local v8, "nrAvailable":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateVideoCallFeatureValue: available = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", vtenabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", advancedCallEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nonTTY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", data enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", provisioned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isLteFeatureOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nrAvailable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1895
    const/4 v9, 0x2

    if-eqz v7, :cond_2

    .line 1896
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_1

    .line 1901
    :cond_2
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1907
    :goto_1
    const/4 v6, 0x3

    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    .line 1908
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 1912
    :cond_3
    invoke-virtual {p1, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1916
    :goto_2
    return-void
.end method

.method private blacklist updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .locals 9
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isNonTty"    # Z

    .line 1836
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    .line 1837
    .local v0, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    .line 1838
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v2

    .line 1839
    .local v2, "isProvisioned":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 1840
    .local v5, "voLteFeatureOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v6

    .line 1842
    .local v6, "voNrAvailable":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVoiceCellFeatureValue: available = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nonTTY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", provisioned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", voLteFeatureOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", voNrAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1849
    if-eqz v5, :cond_1

    .line 1850
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_1

    .line 1854
    :cond_1
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1858
    :goto_1
    const/4 v3, 0x3

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 1859
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 1863
    :cond_2
    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1867
    :goto_2
    return-void
.end method

.method private blacklist updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .locals 10
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isNonTty"    # Z

    .line 1923
    const/4 v0, 0x0

    .line 1924
    .local v0, "isNetworkRoaming":Z
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 1925
    const-string v1, "updateVoiceWifiFeatureAndProvisionedValues: TelephonyManager is null, assuming not roaming."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1928
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1929
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1932
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    .line 1933
    .local v1, "available":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    .line 1934
    .local v2, "enabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v3

    .line 1935
    .local v3, "isProvisioned":Z
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v4

    .line 1936
    .local v4, "mode":I
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v5

    .line 1937
    .local v5, "roaming":Z
    const/4 v6, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1939
    .local v7, "isFeatureOn":Z
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWfcFeatureAndProvisionedValues: available = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isNetworkRoaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", provisioned = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", roaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isFeatureOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isNonTtyWifi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1948
    if-eqz v7, :cond_2

    if-eqz p2, :cond_2

    .line 1949
    invoke-virtual {p1, v6, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 1953
    :cond_2
    invoke-virtual {p1, v6, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1958
    :goto_2
    if-nez v7, :cond_3

    .line 1959
    const/4 v4, 0x1

    .line 1960
    const/4 v5, 0x0

    .line 1962
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1963
    invoke-direct {p0, v5}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1964
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3331
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSms(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3335
    nop

    .line 3336
    return-void

    .line 3332
    :catch_0
    move-exception v0

    .line 3333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "acknowledgeSms()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist acknowledgeSms(III[B)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3340
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSms(III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3344
    nop

    .line 3345
    return-void

    .line 3341
    :catch_0
    move-exception v0

    .line 3342
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "acknowledgeSms()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3349
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3353
    nop

    .line 3354
    return-void

    .line 3350
    :catch_0
    move-exception v0

    .line 3351
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "acknowledgeSmsReport()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2378
    if-eqz p1, :cond_0

    .line 2382
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2384
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 2385
    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 2386
    const-string v1, "Capability Callback registered."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2391
    nop

    .line 2392
    return-void

    .line 2388
    :catch_0
    move-exception v1

    .line 2389
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "addCapabilitiesCallback(IF)"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 2379
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addCapabilitiesCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2420
    if-eqz p1, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V

    .line 2424
    const-string v0, "Capability Callback registered for subscription."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2425
    return-void

    .line 2421
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2347
    if-eqz p1, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2351
    const-string v0, "Emergency registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2353
    return-void

    .line 2348
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "emergency registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 2468
    if-eqz p1, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V

    .line 2473
    const-string v0, "Capability Callback registered for subscription."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2474
    return-void

    .line 2469
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provisioning callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2277
    if-eqz p1, :cond_0

    .line 2282
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 2283
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 2284
    const-string v0, "Registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2289
    nop

    .line 2290
    return-void

    .line 2286
    :catch_0
    move-exception v0

    .line 2287
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "addRegistrationCallback(IRIB)"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 2278
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2316
    if-eqz p1, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2320
    const-string v0, "Registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2322
    return-void

    .line 2317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRegistrationListener(ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2238
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsManager;->addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V

    .line 2239
    return-void
.end method

.method public blacklist addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2251
    if-eqz p1, :cond_0

    .line 2254
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V

    .line 2256
    new-instance v0, Lcom/android/ims/ImsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager$1;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConnectionStateListener;)V

    .line 2262
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2256
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2263
    const-string v0, "Registration Callback registered."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2264
    return-void

    .line 2252
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist associate(Lcom/android/ims/ImsFeatureContainer;I)V
    .locals 9
    .param p1, "c"    # Lcom/android/ims/ImsFeatureContainer;
    .param p2, "subId"    # I

    .line 3198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "associate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3199
    if-nez p1, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p2

    .end local p2    # "subId":I
    .local v4, "subId":I
    invoke-interface/range {v1 .. v8}, Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;->create(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)Lcom/android/ims/MmTelFeatureConnection;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 3203
    .end local v4    # "subId":I
    .restart local p2    # "subId":I
    :cond_0
    move v4, p2

    .end local p2    # "subId":I
    .restart local v4    # "subId":I
    iget-object p2, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelFeatureConnectionFactory:Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    iget-object v0, p1, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    .line 3204
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v5

    iget-object v6, p1, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    iget-object v7, p1, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    iget-object v8, p1, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    .line 3203
    invoke-interface/range {v1 .. v8}, Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;->create(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3207
    :goto_0
    return-void
.end method

.method public blacklist changeAudioPath(I)V
    .locals 0
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3864
    return-void
.end method

.method public varargs blacklist changeMmTelCapability(ZI[I)V
    .locals 4
    .param p1, "isEnabled"    # Z
    .param p2, "capability"    # I
    .param p3, "radioTechs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2689
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2690
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2691
    array-length v2, p3

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p3, v1

    .line 2692
    .local v3, "tech":I
    invoke-virtual {v0, p2, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 2691
    .end local v3    # "tech":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2695
    :cond_0
    array-length v2, p3

    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, p3, v1

    .line 2696
    .restart local v3    # "tech":I
    invoke-virtual {v0, p2, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2695
    .end local v3    # "tech":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2699
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 2700
    return-void
.end method

.method public blacklist close()V
    .locals 1

    .line 2515
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->closeConnection()V

    .line 2516
    return-void
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2564
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2567
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2568
    :catch_0
    move-exception v1

    .line 2569
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "createCallProfile()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist createOrGetSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2530
    const-string v0, "getSupplementaryServiceConfiguration()"

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 2532
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection;->createOrGetUtInterface()Lcom/android/ims/ImsUt;

    move-result-object v2

    .line 2533
    .local v2, "iUt":Lcom/android/ims/ImsUt;
    if-eqz v2, :cond_0

    .line 2540
    nop

    .line 2541
    return-object v2

    .line 2534
    :cond_0
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x321

    invoke-direct {v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "c":Lcom/android/ims/MmTelFeatureConnection;
    .end local p0    # "this":Lcom/android/ims/ImsManager;
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2537
    .end local v2    # "iUt":Lcom/android/ims/ImsUt;
    .restart local v1    # "c":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v2

    .line 2538
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x6a

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3729
    const-string v0, "ImsManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  device supports IMS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfigUpdated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImsServiceProxy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ignoreDataEnabledChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isGbaValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isImsTurnOffAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isImsTurnOffAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isNonTtyOrTtyOnVolteEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVoImsOptInEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVolteProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isEnhanced4gLteModeSettingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3746
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3745
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getWfcMode(non-roaming) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getWfcMode(roaming) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcRoamingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isVtProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isWfcProvisionedOnDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isCrossSimEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isCrossSimCallingEnabledByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimCallingEnabledByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isImsOverNrEnabledByPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3763
    return-void
.end method

.method public blacklist factoryReset()V
    .locals 5

    .line 3438
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 3439
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factoryReset: invalid sub id, can not reset siminfo db settings; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3442
    return-void

    .line 3445
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3447
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3445
    const-string v4, "volte_vt_enabled"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3450
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3452
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3450
    const-string v4, "wfc_ims_enabled"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3455
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3457
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3455
    const-string v4, "wfc_ims_mode"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3460
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3462
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3460
    const-string v4, "wfc_ims_roaming_enabled"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3465
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3467
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3465
    const-string v4, "wfc_ims_roaming_mode"

    invoke-interface {v1, v0, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3471
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3473
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3471
    const-string v3, "vt_ims_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3476
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 3477
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 3476
    const-string v3, "ims_rcs_uce_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3481
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3484
    goto :goto_0

    .line 3482
    :catch_0
    move-exception v1

    .line 3483
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "factoryReset, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3485
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method public blacklist getConfigInt(I)I
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3576
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3577
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->getLocalImsConfigKeyInt(I)I

    move-result v0

    return v0

    .line 3579
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConfig;->getConfigInt(I)I

    move-result v0

    return v0
.end method

.method public greylist getConfigInterface()Lcom/android/ims/ImsConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2674
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2676
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    .line 2677
    .local v1, "config":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v1, :cond_0

    .line 2681
    new-instance v2, Lcom/android/ims/ImsConfig;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsConfig;-><init>(Landroid/telephony/ims/aidl/IImsConfig;)V

    return-object v2

    .line 2678
    :cond_0
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public blacklist getConfigString(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3584
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3585
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->getLocalImsConfigKeyString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3587
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConfig;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3301
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3302
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object v1

    .line 3304
    .local v1, "iEcbm":Lcom/android/ims/ImsEcbm;
    if-eqz v1, :cond_0

    .line 3308
    return-object v1

    .line 3305
    :cond_0
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getEcbmInterface()"

    const/16 v4, 0x385

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public blacklist getImsServiceState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3012
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3013
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getFeatureState()I

    move-result v1

    return v1
.end method

.method public blacklist getImsServiceState(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3048
    .local p1, "result":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3056
    return-void
.end method

.method public blacklist getInitialCallNetworkType(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3986
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRegistrationTech()I
    .locals 2

    .line 2492
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistrationTech()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2493
    :catch_0
    move-exception v0

    .line 2494
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getRegistrationTech: no connection to ImsService."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 2495
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getRegistrationTech(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2500
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsManager;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2509
    return-void
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3358
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3359
    :catch_0
    move-exception v0

    .line 3360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getSmsFormat()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected blacklist getSubId()I
    .locals 2

    .line 1506
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getSubscriptionId(I)I

    move-result v0

    return v0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3916
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWfcMode()I
    .locals 1

    .line 1351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    return v0
.end method

.method public blacklist getWfcMode(Z)I
    .locals 3
    .param p1, "roaming"    # Z

    .line 1401
    if-nez p1, :cond_1

    .line 1404
    const-string v0, "editable_wfc_mode_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carrier_default_wfc_ims_mode_int"

    if-nez v0, :cond_0

    .line 1405
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .local v0, "setting":I
    goto :goto_0

    .line 1409
    .end local v0    # "setting":I
    :cond_0
    const-string v0, "wfc_ims_mode"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1412
    .restart local v0    # "setting":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1414
    .end local v0    # "setting":I
    :cond_1
    const-string v0, "use_wfc_home_network_mode_in_roaming_network_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    .restart local v0    # "setting":I
    goto :goto_1

    .line 1417
    .end local v0    # "setting":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->overrideWfcRoamingModeWhileUsingNTN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1418
    const-string v0, "getWfcMode (roaming) - override Wfc roaming mode to WIFI_PREFERRED"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1420
    const/4 v0, 0x2

    .restart local v0    # "setting":I
    goto :goto_1

    .line 1421
    .end local v0    # "setting":I
    :cond_3
    const-string v0, "editable_wfc_roaming_mode_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    if-nez v0, :cond_4

    .line 1423
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "setting":I
    goto :goto_1

    .line 1426
    .end local v0    # "setting":I
    :cond_4
    const-string v0, "wfc_ims_roaming_mode"

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getSettingFromSubscriptionManager(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1430
    .restart local v0    # "setting":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcMode (roaming) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1432
    :goto_2
    return v0
.end method

.method public blacklist initImsSmsImplAdapter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3384
    const-string v0, "initImsSmsImplAdapter"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 3386
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->initImsSmsImplAdapter()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3390
    nop

    .line 3391
    return-void

    .line 3387
    :catch_0
    move-exception v0

    .line 3388
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "initImsSmsImplAdapter()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist invalidate()V
    .locals 1

    .line 3211
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->onRemovedOrDied()V

    .line 3212
    return-void
.end method

.method public blacklist isBusinessOnlyCallComposerEnabledByUser()Z
    .locals 4

    .line 1072
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1073
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1074
    const-string v2, "isBusinessOnlyCallComposerEnabledByUser: TelephonyManager is null"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1075
    return v1

    .line 1077
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isTelephonyCallingSupportedOnDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    const-string v2, "isBusinessOnlyCallComposerEnabledByUser: FEATURE_TELEPHONY_CALLING not supported, returning false"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1080
    return v1

    .line 1082
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public blacklist isCallComposerEnabledByUser()Z
    .locals 3

    .line 1055
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1056
    const-string v0, "isCallComposerEnabledByUser: TelephonyManager is null, returning false"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1057
    return v1

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isTelephonyCallingSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    const-string v0, "isCallComposerEnabledByUser: FEATURE_TELEPHONY_CALLING not supported, returning false"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1062
    return v1

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public blacklist isCapable(J)Z
    .locals 5
    .param p1, "capabilities"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2933
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2935
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->isCapable(J)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2936
    :catch_0
    move-exception v1

    .line 2937
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "isCapable()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist isCmcEmergencyCallSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3937
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCrossSimCallingEnabled()Z
    .locals 5

    .line 1257
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimCallingEnabledByUser()Z

    move-result v0

    .line 1258
    .local v0, "userEnabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isCrossSimEnabledByPlatform()Z

    move-result v1

    .line 1259
    .local v1, "platformEnabled":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v2

    .line 1261
    .local v2, "isProvisioned":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCrossSimCallingEnabled: platformEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", provisioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1264
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public blacklist isCrossSimCallingEnabledByUser()Z
    .locals 4

    .line 1240
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1241
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1240
    const-string v2, "cross_sim_calling_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1245
    .local v0, "setting":I
    const/4 v1, 0x0

    if-ne v0, v3, :cond_0

    .line 1246
    return v1

    .line 1248
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public blacklist isCrossSimEnabledByPlatform()Z
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    const-string v0, "carrier_cross_sim_ims_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1640
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEabProvisionedOnDevice()Z
    .locals 2

    .line 907
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->isRcsProvisioningRequired(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isEabProvisioned()Z

    move-result v0

    return v0

    .line 911
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isEnhanced4gLteModeSettingEnabledByUser()Z
    .locals 7

    .line 612
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 613
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 612
    const-string v2, "volte_vt_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 615
    .local v0, "setting":I
    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 617
    .local v1, "onByDefault":Z
    nop

    .line 618
    const-string v2, "editable_enhanced_4g_lte_bool"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 619
    const-string v2, "hide_enhanced_4g_lte_bool"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 620
    .local v2, "isUiUnEditable":Z
    :goto_1
    if-ne v0, v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    .line 625
    .local v3, "isSettingNotInitialized":Z
    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 626
    return v1

    .line 628
    :cond_4
    if-ne v0, v5, :cond_5

    move v4, v5

    :cond_5
    return v4
.end method

.method public blacklist isImsOverNrEnabledByPlatform()Z
    .locals 4

    .line 867
    const-string v0, "carrier_nr_availabilities_int_array"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getIntArrayCarrierConfig(Ljava/lang/String;)[I

    move-result-object v0

    .line 869
    .local v0, "nrCarrierCaps":[I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 870
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda1;-><init>()V

    .line 871
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    .line 872
    .local v2, "voNrCarrierSupported":Z
    if-nez v2, :cond_1

    return v1

    .line 873
    :cond_1
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    return v1
.end method

.method public blacklist isMultiDeviceCallContinuityEnabledByUser()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3951
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNonTtyOrTtyOnVoWifiEnabled()Z
    .locals 3

    .line 751
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoWifiCapable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 752
    return v1

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 756
    .local v0, "tm":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_1

    .line 757
    const-string v2, "isNonTtyOrTtyOnVoWifiEnabled: telecom not available"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 758
    return v1

    .line 760
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isNonTtyOrTtyOnVolteEnabled()Z
    .locals 3

    .line 729
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoLteCapable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 730
    return v1

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 734
    .local v0, "tm":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_1

    .line 735
    const-string v2, "isNonTtyOrTtyOnVolteEnabled: telecom not available"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 736
    return v1

    .line 738
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isServiceAvailable()Z
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist isServiceReady()Z
    .locals 1

    .line 2191
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderReady()Z

    move-result v0

    return v0
.end method

.method public blacklist isSuppServicesOverUtEnabledByPlatform()Z
    .locals 3

    .line 1644
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 1645
    .local v0, "cardState":I
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1647
    return v2

    .line 1649
    :cond_0
    const-string v1, "carrier_supports_ss_over_ut_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1650
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1649
    :goto_0
    return v2
.end method

.method public blacklist isSupported(IILjava/util/function/Consumer;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "transportType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 788
    .local p3, "result":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/ImsManager;IILjava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 835
    return-void
.end method

.method public blacklist isTtyOnVoLteCapable()Z
    .locals 1

    .line 742
    const-string v0, "carrier_volte_tty_supported_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isTtyOnVoWifiCapable()Z
    .locals 1

    .line 764
    const-string v0, "carrier_vowifi_tty_supported_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isVolteEnabledByPlatform()Z
    .locals 4

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 845
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 847
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 852
    :cond_0
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getLocalImsConfigKeyInt(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 854
    return v3

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    const-string v0, "carrier_volte_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 860
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 857
    :goto_0
    return v3

    .line 849
    :cond_3
    :goto_1
    return v3
.end method

.method protected blacklist isVolteProvisioned()Z
    .locals 2

    .line 3499
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getImsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public blacklist isVolteProvisionedOnDevice()Z
    .locals 2

    .line 896
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisioned()Z

    move-result v0

    return v0

    .line 900
    :cond_0
    return v1
.end method

.method public blacklist isVtEnabledByPlatform()Z
    .locals 4

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.vt_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1010
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 1011
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    const-string v0, "carrier_vt_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1016
    :goto_0
    return v3

    .line 1013
    :cond_2
    :goto_1
    return v3
.end method

.method public blacklist isVtEnabledByUser()Z
    .locals 4

    .line 1042
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1043
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1042
    const-string v2, "vt_ims_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1047
    .local v0, "setting":I
    const/4 v1, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected blacklist isVtProvisioned()Z
    .locals 2

    .line 3514
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->getImsProvisionedBoolNoException(II)Z

    move-result v0

    return v0
.end method

.method public blacklist isVtProvisionedOnDevice()Z
    .locals 2

    .line 974
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisioned()Z

    move-result v0

    return v0

    .line 978
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isWfcEnabledByPlatform()Z
    .locals 4

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 1617
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 1618
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    const-string v0, "carrier_wfc_ims_available_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isGbaValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1623
    :goto_0
    return v3

    .line 1620
    :cond_2
    :goto_1
    return v3
.end method

.method public blacklist isWfcEnabledByUser()Z
    .locals 4

    .line 1174
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1175
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1174
    const-string v2, "wfc_ims_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1179
    .local v0, "setting":I
    if-ne v0, v3, :cond_0

    .line 1180
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1183
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isWfcProvisionedOnDevice()Z
    .locals 2

    .line 940
    const-string v0, "carrier_volte_override_wfc_provisioning_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    const/4 v0, 0x0

    return v0

    .line 947
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/ims/ImsManager;->isMmTelProvisioningRequired(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isWfcProvisioned()Z

    move-result v0

    return v0

    .line 951
    :cond_1
    return v0
.end method

.method public blacklist isWfcRoamingEnabledByUser()Z
    .locals 4

    .line 1542
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1543
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1542
    const-string v2, "wfc_ims_roaming_enabled"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v0

    .line 1545
    .local v0, "setting":I
    if-ne v0, v3, :cond_0

    .line 1546
    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1549
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callees"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2612
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2614
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2616
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 2617
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 2619
    .local v1, "session":Landroid/telephony/ims/ImsCallSession;
    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2620
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V

    goto :goto_0

    .line 2622
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V

    .line 2625
    :goto_0
    return-object v0
.end method

.method public blacklist notifyEpsFallbackResult(I)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3995
    return-void
.end method

.method public blacklist notifySrvccCanceled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2987
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2989
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccCanceled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2993
    nop

    .line 2994
    return-void

    .line 2990
    :catch_0
    move-exception v1

    .line 2991
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccCanceled"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist notifySrvccCompleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2961
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2963
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2967
    nop

    .line 2968
    return-void

    .line 2964
    :catch_0
    move-exception v1

    .line 2965
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccCompleted"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist notifySrvccFailed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2974
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2976
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2980
    nop

    .line 2981
    return-void

    .line 2977
    :catch_0
    move-exception v1

    .line 2978
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccFailed"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/telephony/ims/aidl/ISrvccStartedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2948
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2950
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2954
    nop

    .line 2955
    return-void

    .line 2951
    :catch_0
    move-exception v1

    .line 2952
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "notifySrvccStarted"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist onMemoryAvailable(I)V
    .locals 4
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3322
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->onMemoryAvailable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3326
    nop

    .line 3327
    return-void

    .line 3323
    :catch_0
    move-exception v0

    .line 3324
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "onMemoryAvailable()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist onSmsReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3376
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->onSmsReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3380
    nop

    .line 3381
    return-void

    .line 3377
    :catch_0
    move-exception v0

    .line 3378
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "onSmsReady()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist open(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .param p2, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .param p3, "multiEndpointListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2212
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2214
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    if-eqz p1, :cond_0

    .line 2219
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2222
    nop

    .line 2223
    return-void

    .line 2220
    :catch_0
    move-exception v1

    .line 2221
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "open()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 2215
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist overrideWfcRoamingModeWhileUsingNTN()Z
    .locals 4

    .line 3808
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3809
    return v1

    .line 3812
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 3813
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 3814
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    if-nez v2, :cond_1

    .line 3815
    return v1

    .line 3818
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3819
    return v1

    .line 3822
    :cond_2
    const-string v1, "override_wfc_roaming_mode_while_using_ntn_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .locals 3
    .param p1, "sessionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3028
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3030
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3031
    :catch_0
    move-exception v1

    .line 3032
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "queryMediaQualityStatus Failed."

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3033
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist queryMmTelCapability(II)Z
    .locals 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2788
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2790
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 2793
    .local v1, "result":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v2, Lcom/android/ims/ImsManager$2;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/android/ims/ImsManager$2;-><init>(Lcom/android/ims/ImsManager;IILjava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/ims/MmTelFeatureConnection;->queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2816
    nop

    .line 2819
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    .line 2820
    :catch_0
    move-exception v2

    .line 2821
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "queryMmTelCapability: interrupted while waiting for response"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->logw(Ljava/lang/String;)V

    .line 2823
    .end local v2    # "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    return v2

    .line 2813
    :catch_1
    move-exception v2

    .line 2814
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "queryMmTelCapability()"

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v2, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method

.method public blacklist queryMmTelCapabilityStatus(II)Z
    .locals 5
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2829
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2831
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 2832
    const/4 v1, 0x0

    return v1

    .line 2836
    :cond_0
    nop

    .line 2837
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v1

    .line 2839
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 2840
    .end local v1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catch_0
    move-exception v1

    .line 2841
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "queryMmTelCapabilityStatus()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist registerFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 3152
    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    new-instance v2, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p2}, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    invoke-virtual {v1, p2, v2}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    .line 3159
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3160
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    goto :goto_2

    .line 3162
    :cond_0
    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3176
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3178
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3179
    :goto_0
    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_0

    .line 3164
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 3166
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_2
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_0

    .line 3171
    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V

    goto :goto_1

    .line 3168
    :pswitch_0
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3169
    goto :goto_1

    .line 3175
    :catch_3
    move-exception v0

    :goto_1
    nop

    .line 3180
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :goto_2
    nop

    .line 3181
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 2398
    if-eqz p1, :cond_0

    .line 2403
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2404
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2407
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    goto :goto_0

    .line 2405
    :catch_0
    move-exception v0

    .line 2406
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception removing Capability , exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2408
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void

    .line 2399
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeCapabilitiesCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 2433
    if-eqz p1, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V

    .line 2437
    return-void

    .line 2434
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capabilities callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 2361
    if-eqz p1, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2366
    return-void

    .line 2362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "emergency registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 2483
    if-eqz p1, :cond_0

    .line 2487
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V

    .line 2488
    return-void

    .line 2484
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provisioning callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 2330
    if-eqz p1, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V

    .line 2334
    return-void

    .line 2331
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 2298
    if-eqz p1, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 2302
    const-string v0, "Registration callback removed."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2303
    return-void

    .line 2299
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registration callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2449
    if-eqz p1, :cond_0

    .line 2453
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2454
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {p1}, Lcom/android/ims/ImsConnectionStateListener;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 2455
    const-string v1, "Registration Callback/Listener registered."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 2457
    return-void

    .line 2450
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendDtmfEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "dtmfEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3904
    return-void
.end method

.method public blacklist sendMmsProcType(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 4004
    return-void
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/PublishDialog;)V
    .locals 0
    .param p1, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3927
    return-void
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3314
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/ims/MmTelFeatureConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .local v2, "token":I
    .local v3, "messageRef":I
    .local v4, "format":Ljava/lang/String;
    .local v5, "smsc":Ljava/lang/String;
    .local v6, "isRetry":Z
    .local v7, "pdu":[B
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/ims/MmTelFeatureConnection;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3317
    nop

    .line 3318
    return-void

    .line 3315
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "token":I
    .end local v3    # "messageRef":I
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "smsc":Ljava/lang/String;
    .end local v6    # "isRetry":Z
    .end local v7    # "pdu":[B
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "format":Ljava/lang/String;
    .restart local p4    # "smsc":Ljava/lang/String;
    .restart local p5    # "isRetry":Z
    .restart local p6    # "pdu":[B
    :catch_1
    move-exception v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object p1, v0

    .line 3316
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .restart local v2    # "token":I
    .restart local v3    # "messageRef":I
    .restart local v4    # "format":Ljava/lang/String;
    .restart local v5    # "smsc":Ljava/lang/String;
    .restart local v6    # "isRetry":Z
    .restart local v7    # "pdu":[B
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance p2, Lcom/android/ims/ImsException;

    const-string p3, "sendSms()"

    const/16 p4, 0x6a

    invoke-direct {p2, p3, p1, p4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public blacklist setConfig(II)I
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3592
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3593
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->setLocalImsConfigKeyInt(II)I

    move-result v0

    return v0

    .line 3595
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(II)I

    move-result v0

    return v0
.end method

.method public blacklist setConfig(ILjava/lang/String;)I
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3600
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->isLocalImsConfigKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3601
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->setLocalImsConfigKeyString(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 3603
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsConfig;->setConfig(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setCrossSimCallingEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1271
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    const-string v0, "setCrossSimCallingEnabled: Not possible to enable WFC due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1273
    return-void

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1276
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCrossSimCallingEnabled: invalid sub id, can not set Cross SIM setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1280
    return-void

    .line 1282
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1283
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1282
    const-string v3, "cross_sim_calling_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1285
    if-eqz p1, :cond_2

    .line 1286
    :try_start_0
    new-instance v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1287
    .local v1, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->updateCrossSimFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1288
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1289
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1290
    .end local v1    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_0

    .line 1292
    :cond_2
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    :goto_0
    goto :goto_1

    .line 1294
    :catch_0
    move-exception v1

    .line 1295
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "setCrossSimCallingEnabled(): "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1297
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public blacklist setEnhanced4gLteModeSetting(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .line 655
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    const-string v0, "setEnhanced4gLteModeSetting: Not possible to enable VoLTE due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 657
    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 660
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnhanced4gLteModeSetting: invalid sub id, can not set property in  siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 663
    return-void

    .line 666
    :cond_1
    nop

    .line 667
    const-string v1, "editable_enhanced_4g_lte_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 668
    const-string v1, "hide_enhanced_4g_lte_bool"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    .line 672
    .local v1, "isUiUnEditable":Z
    :goto_1
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->isVoImsOptInEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 673
    const-string v4, "enhanced_4g_lte_on_by_default_bool"

    invoke-direct {p0, v4}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result p1

    .line 677
    :cond_4
    iget-object v4, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    const/4 v5, -0x1

    const-string v6, "volte_vt_enabled"

    invoke-interface {v4, v0, v6, v5}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v4

    .line 680
    .local v4, "prevSetting":I
    if-eqz p1, :cond_5

    move v2, v3

    goto :goto_2

    .line 681
    :cond_5
    nop

    :goto_2
    if-ne v4, v2, :cond_6

    .line 683
    return-void

    .line 685
    :cond_6
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 687
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v3

    .line 685
    invoke-interface {v2, v0, v6, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 689
    if-eqz p1, :cond_7

    .line 690
    :try_start_0
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 691
    .local v2, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    .line 693
    .local v3, "isNonTty":Z
    invoke-direct {p0, v2, v3}, Lcom/android/ims/ImsManager;->updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 694
    invoke-direct {p0, v2, v3}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 695
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 697
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 698
    .end local v2    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v3    # "isNonTty":Z
    goto :goto_3

    .line 700
    :cond_7
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_3
    goto :goto_4

    .line 702
    :catch_0
    move-exception v2

    .line 703
    .local v2, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnhanced4gLteModeSetting couldn\'t set config: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 705
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_4
    return-void
.end method

.method public blacklist setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .locals 3
    .param p1, "sessionType"    # I
    .param p2, "threshold"    # Landroid/telephony/ims/MediaThreshold;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3018
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3020
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3023
    goto :goto_0

    .line 3021
    :catch_0
    move-exception v1

    .line 3022
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setMediaThreshold Failed."

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3024
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .locals 5
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
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2585
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2588
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2592
    nop

    .line 2593
    return-void

    .line 2589
    :catch_0
    move-exception v1

    .line 2590
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "setOfferedRtpHeaderExtensionTypes()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist setRetryCount(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3968
    return-void
.end method

.method public blacklist setRttEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2850
    if-eqz p1, :cond_0

    .line 2852
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 2854
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setRttConfig(Z)V

    .line 2855
    return-void
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3367
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3371
    nop

    .line 3372
    return-void

    .line 3368
    :catch_0
    move-exception v0

    .line 3369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setSmsListener()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setSmsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3975
    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2910
    const-string v0, "setTerminalBasedCallWaitingStatus()"

    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v1

    .line 2912
    .local v1, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->setTerminalBasedCallWaitingStatus(Z)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2925
    nop

    .line 2926
    return-void

    .line 2922
    :catch_0
    move-exception v2

    .line 2923
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x6a

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 2913
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2914
    .local v2, "se":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2916
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x96

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 2919
    :cond_0
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x67

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method

.method public blacklist setTtyMode(I)V
    .locals 4
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2861
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoLteCapable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2864
    .local v0, "isNonTtyOrTtyOnVolteEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isTtyOnVoWifiCapable()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 2867
    .local v1, "isNonTtyOrTtyOnWifiEnabled":Z
    :cond_3
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2868
    .local v2, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-direct {p0, v2, v0}, Lcom/android/ims/ImsManager;->updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2869
    invoke-direct {p0, v2, v0}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2870
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2872
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 2873
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->isImsNeeded(Landroid/telephony/ims/feature/CapabilityChangeRequest;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2875
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 2877
    :cond_4
    return-void
.end method

.method public blacklist setUiTTYMode(Landroid/content/Context;ILandroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2895
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 2897
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2901
    nop

    .line 2902
    return-void

    .line 2898
    :catch_0
    move-exception v1

    .line 2899
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "setTTYMode()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist setVideoCrtAudio(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3896
    return-void
.end method

.method public blacklist setVtSetting(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1103
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    const-string v0, "setVtSetting: Not possible to enable Vt due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1105
    return-void

    .line 1108
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1109
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVtSetting: sub id invalid, skip modifying vt state in subinfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1112
    return-void

    .line 1114
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1115
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1114
    const-string v3, "vt_ims_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1117
    if-eqz p1, :cond_2

    .line 1118
    :try_start_0
    new-instance v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1119
    .local v1, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1120
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1122
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1123
    .end local v1    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_0

    .line 1125
    :cond_2
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :goto_0
    goto :goto_1

    .line 1127
    :catch_0
    move-exception v1

    .line 1131
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "setVtSetting(b): "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1133
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public blacklist setWfcMode(I)V
    .locals 1
    .param p1, "wfcMode"    # I

    .line 1373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1374
    return-void
.end method

.method public blacklist setWfcMode(IZ)V
    .locals 4
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 1474
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1475
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1476
    if-nez p2, :cond_0

    .line 1477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1478
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1479
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1478
    const-string v3, "wfc_ims_mode"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1481
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b) (roaming) - setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1482
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1483
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1482
    const-string v3, "wfc_ims_roaming_mode"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1486
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcMode(i,b): invalid sub id, skip setting setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1490
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 1491
    const-string v1, "setWfcMode: TelephonyManager is null, can not set WFC."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1492
    return-void

    .line 1494
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1498
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-ne p2, v2, :cond_3

    .line 1499
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1501
    :cond_3
    return-void
.end method

.method public blacklist setWfcNonPersistent(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "wfcMode"    # I

    .line 1310
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1312
    .local v1, "imsWfcModeFeatureValue":I
    :goto_0
    :try_start_0
    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(ZI[I)V

    .line 1315
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->setWfcModeInternal(I)V

    .line 1318
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcRoamingEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1321
    if-eqz p1, :cond_2

    .line 1322
    const-string v0, "setWfcNonPersistent() : turnOnIms"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1324
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :cond_2
    goto :goto_2

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v2, "setWfcNonPersistent(): "

    invoke-direct {p0, v2, v0}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1329
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_2
    return-void
.end method

.method public blacklist setWfcRoamingSetting(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1569
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v1

    .line 1570
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1569
    const-string v3, "wfc_ims_roaming_enabled"

    invoke-interface {v0, v1, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1573
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->setWfcRoamingSettingInternal(Z)V

    .line 1574
    return-void
.end method

.method public blacklist setWfcSetting(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1205
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    const-string v0, "setWfcSetting: Not possible to enable WFC due to provisioning."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1207
    return-void

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1210
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcSetting: invalid sub id, can not set WFC setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1213
    return-void

    .line 1215
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1216
    invoke-static {p1}, Lcom/android/ims/ImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1215
    const-string v3, "wfc_ims_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1219
    if-eqz p1, :cond_2

    .line 1220
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVoWifiEnabled()Z

    move-result v1

    .line 1221
    .local v1, "isNonTtyWifi":Z
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 1222
    .local v2, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->updateVoiceWifiFeatureAndProvisionedValues(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 1223
    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 1225
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 1226
    .end local v1    # "isNonTtyWifi":Z
    .end local v2    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_0

    .line 1228
    :cond_2
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :goto_0
    goto :goto_1

    .line 1230
    :catch_0
    move-exception v1

    .line 1231
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfcSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1233
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public blacklist shouldProcessCall(Z[Ljava/lang/String;)I
    .locals 4
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3408
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3409
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->shouldProcessCall(Z[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3410
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :catch_0
    move-exception v0

    .line 3411
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "shouldProcessCall()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3876
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3887
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2638
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2640
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2645
    :try_start_0
    new-instance v1, Lcom/android/ims/ImsCall;

    iget-object v2, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2647
    .local v1, "call":Lcom/android/ims/ImsCall;
    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V

    .line 2648
    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 2650
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->ignoreAlreadyTerminatedIncomingCallBeforeRegisteringListener()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2653
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2654
    :cond_0
    const-string v2, "takeCall : ImsCallSession is not alive"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 2655
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "takeCall() : ImsCallSession is not alive"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsManager;
    .end local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .end local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    throw v2

    .line 2659
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    .restart local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .restart local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_1
    :goto_0
    return-object v1

    .line 2660
    .end local v1    # "call":Lcom/android/ims/ImsCall;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2641
    :cond_2
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No pending session for the call"

    const/16 v3, 0x6b

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsManager;
    .end local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .end local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2661
    .local v1, "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsManager;
    .restart local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .restart local p2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :goto_1
    const-string v2, "takeCall caught: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2662
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "takeCall()"

    invoke-direct {v2, v3, v1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist triggerAutoConfigurationForApp(I)V
    .locals 0
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3961
    return-void
.end method

.method public blacklist triggerDeregistration(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3002
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    move-result-object v0

    .line 3004
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->triggerDeregistration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3008
    nop

    .line 3009
    return-void

    .line 3005
    :catch_0
    move-exception v1

    .line 3006
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "triggerDeregistration"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public blacklist unregisterFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 3186
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 3187
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 3188
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3193
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    goto :goto_0

    .line 3190
    :catch_0
    move-exception v0

    .line 3192
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterImsFeatureCallback (MMTEL), RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 3194
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist updateFeatureCapabilities(J)V
    .locals 1
    .param p1, "capabilities"    # J

    .line 3044
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->updateFeatureCapabilities(J)V

    .line 3045
    return-void
.end method

.method public blacklist updateFeatureState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 3039
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->updateFeatureState(I)V

    .line 3040
    return-void
.end method

.method public blacklist updateImsServiceConfig()V
    .locals 3

    .line 1736
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getSubId()I

    move-result v0

    .line 1737
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsServiceConfigForSlot: subId not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 1739
    return-void

    .line 1742
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->isSubIdValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1743
    const-string v1, "updateImsServiceConfig: invalid sub id, skipping!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;)V

    .line 1744
    return-void

    .line 1746
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string v2, "ims."

    .line 1747
    invoke-virtual {v1, v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigByComponentForSubId(Ljava/lang/String;I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1749
    .local v1, "imsCarrierConfigs":Landroid/os/PersistableBundle;
    invoke-direct {p0, v1}, Lcom/android/ims/ImsManager;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V

    .line 1750
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->reevaluateCapabilities()V

    .line 1751
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    .end local v1    # "imsCarrierConfigs":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 1752
    :catch_0
    move-exception v1

    .line 1753
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "updateImsServiceConfig: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1754
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/ims/ImsManager;->mConfigUpdated:Z

    .line 1756
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method

.method protected blacklist usewfcHomeNetworkModeInRoamingNetwork()Z
    .locals 1

    .line 3835
    const-string v0, "use_wfc_home_network_mode_in_roaming_network_bool"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
