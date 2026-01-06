.class public Lcom/android/internal/telephony/SemPhoneInternal;
.super Landroid/os/Handler;
.source "SemPhoneInternal.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemPhoneInternal"

.field public static final blacklist REASON_AIRPLANE_MODE_CANCELED:Ljava/lang/String; = "airplaneModeCanceled"

.field public static final blacklist REASON_CARRIER_CONFIG_LOADED:Ljava/lang/String; = "carrierConfigLoaded"

.field public static final blacklist REASON_CDMA_OTA_PROVISIONED:Ljava/lang/String; = "cdmaOtaProvisioned"

.field public static final blacklist REASON_CREATE_APN_RETRY:Ljava/lang/String; = "createApnRetry"

.field public static final blacklist REASON_CS_FALLBACK:Ljava/lang/String; = "csFallback"

.field public static final blacklist REASON_DATA_STATE_CHANGED:Ljava/lang/String; = "dataStateChanged"

.field public static final blacklist REASON_DISCONNECT_PDP_BEFORE_DDS_CHANGE:Ljava/lang/String; = "disconnectPdnBeforeDdsChange"

.field public static final blacklist REASON_NON_DDS_MMS_ENDED:Ljava/lang/String; = "nonDdsMmsEnded"

.field public static final blacklist REASON_NON_DDS_MMS_STARTED:Ljava/lang/String; = "nonDdsMmsStarted"

.field public static final blacklist REASON_NW_TYPE_CHANGED_FROM_IWLAN:Ljava/lang/String; = "nwTypeChangedFromIWlan"

.field public static final blacklist REASON_PLMN_CHANGED:Ljava/lang/String; = "plmnChanged"

.field public static final blacklist REASON_T3396_STOPPED:Ljava/lang/String; = "t3396Stopped"

.field public static final blacklist VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field public static final blacklist VM_PRIORITY_CDMA:Ljava/lang/String; = "vm_priority_key_cdma"

.field private static final blacklist default_timers:[[I


# instance fields
.field protected blacklist mCidManager:Lcom/android/internal/telephony/data/CidManager;

.field private greylist mContext:Landroid/content/Context;

.field private blacklist mIsDeviceVoiceCapable:Z

.field private blacklist mNumTimers:I

.field private greylist mPhoneId:I

.field private blacklist mQosStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

.field protected blacklist mRcsCallTracker:Lcom/android/internal/telephony/RcsCallTracker;

.field public blacklist mSatCi:Lcom/android/internal/telephony/SatelliteCommandsInterface;

.field public greylist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field protected blacklist mSemTelephonyKnoxHelper:Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

.field public blacklist mSmsConfig:Lcom/android/internal/telephony/SmsConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/16 v0, 0x3c

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 72
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x3c
        0xa
        0x12c
        0x3c
        0x0
        0x0
        0x19000
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 2

    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mCidManager:Lcom/android/internal/telephony/data/CidManager;

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mIsDeviceVoiceCapable:Z

    .line 114
    iput-object p2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    .line 115
    iput p3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    .line 117
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDeviceVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mIsDeviceVoiceCapable:Z

    const/4 v0, 0x3

    .line 119
    iput v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const v1, 0x7fffffff

    if-eq p3, v1, :cond_0

    if-ge p3, v0, :cond_0

    .line 124
    invoke-static {p2}, Lcom/android/internal/telephony/SemPhoneFactory;->getSemCommandsInterfaces(Landroid/content/Context;)[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p2

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 127
    :cond_0
    const-string p2, "ImsPhone"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 129
    new-instance p1, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;

    invoke-direct {p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelperImpl;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemTelephonyKnoxHelper:Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    :cond_1
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 3

    .line 776
    sget-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 3

    .line 780
    sget-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist checkCallControl(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 0

    .line 612
    const-string p1, "checkCallControl() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist checkForDialNotAllowed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 742
    const-string p1, "checkForDialNotAllowed() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist checkVzwSimInserted()Z
    .locals 1

    .line 548
    const-string v0, "checkVzwSimInserted() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearCdmaPrefVoicemailCount()V
    .locals 1

    .line 554
    const-string v0, "clearCdmaPrefVoicemailCount() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearEmergencyCallbackModeStateForHandover()Z
    .locals 1

    .line 521
    const-string v0, "clearEmergencyCallbackModeStateForHandover() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearMwiNotificationAndVoicemailCount()V
    .locals 1

    .line 559
    const-string v0, "clearMwiNotificationAndVoicemailCount() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 768
    const-string p1, "SemPhoneInternal:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPhoneId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mSemCi="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsDeviceVoiceCapable="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mIsDeviceVoiceCapable:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist fetchFdnList()V
    .locals 1

    .line 569
    const-string v0, "fetchFdnList() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist forking(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .locals 0

    .line 597
    const-string p1, "forking() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getBtid()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "getBtid() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;
    .locals 1

    .line 409
    const-string v0, "getCallTrackerHelper() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCidManager()Lcom/android/internal/telephony/data/CidManager;
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mCidManager:Lcom/android/internal/telephony/data/CidManager;

    return-object p0
.end method

.method public blacklist getCmcCallTracker()Lcom/android/internal/telephony/CmcCallTracker;
    .locals 1

    .line 451
    const-string v0, "getCmcCallTracker() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCombinedRegStateMobileData(Landroid/telephony/ServiceState;)I
    .locals 0

    .line 574
    const-string p1, "getCombinedRegStateMobileData() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getDataServiceState()I
    .locals 1

    .line 503
    const-string v0, "getDataServiceState() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;
    .locals 0

    .line 735
    invoke-static {}, Lcom/android/internal/telephony/data/SemDataUtils;->getInstance()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultNetworkType()I
    .locals 2

    .line 349
    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    .line 350
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 349
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 352
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDrxController()Lcom/android/internal/telephony/DrxController;
    .locals 1

    .line 445
    const-string v0, "getDrxController() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEnable2gNetworkTypeReasonInPreference()J
    .locals 5

    const-wide/16 v0, 0x0

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latest_enable_2g_reason"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public blacklist getHomePlmns()[Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, "getHomePlmns() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getImsPreference()Lcom/android/internal/telephony/ImsPreference;
    .locals 1

    .line 427
    const-string v0, "getImsPreference() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getImsUssdSession()Lcom/android/ims/ImsCall;
    .locals 1

    .line 496
    const-string v0, "getImsUssdSession() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getKeyLifetime()Ljava/lang/String;
    .locals 1

    .line 191
    const-string v0, "getKeyLifetime() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getKorRtsState(Z)I
    .locals 0

    .line 618
    const-string p1, "getKorRtsState() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getNextRetryTime()J
    .locals 2

    .line 654
    const-string v0, "getNextRetryTime() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getPsismsc()[B
    .locals 1

    .line 171
    const-string v0, "getPsismsc() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRand()[B
    .locals 1

    .line 181
    const-string v0, "getRand() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 0

    .line 660
    const-string p1, "getRecords() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSatelliteImei()Ljava/lang/String;
    .locals 1

    .line 705
    const-string v0, "getSatelliteImei() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSatelliteState()Landroid/telephony/satellite/SemSatelliteState;
    .locals 1

    .line 689
    const-string v0, "getSatelliteState() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSemIccCardHelper()Lcom/android/internal/telephony/uicc/SemIccCardHelper;
    .locals 1

    .line 456
    const-string v0, "getSemIccCardHelper() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSmsConfig()Lcom/android/internal/telephony/SmsConfig;
    .locals 1

    .line 543
    const-string v0, "getSmsConfig() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSubscriberIdForUiccAppType(I)Ljava/lang/String;
    .locals 0

    .line 166
    const-string p1, "getSubscriberIdForUiccAppType() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;
    .locals 1

    .line 421
    const-string v0, "getTelephonyHelper() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTelephonyKnoxHelper()Lcom/android/internal/telephony/SemTelephonyKnoxHelper;
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemTelephonyKnoxHelper:Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    return-object p0
.end method

.method public blacklist getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;
    .locals 1

    .line 415
    const-string v0, "getTelephonyLogger() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTerminalBasedCallWaitingSetting()I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string p0, "volte_call_waiting"

    goto :goto_0

    :cond_0
    const-string p0, "volte_call_waiting_slot2"

    .line 233
    :goto_0
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected blacklist getUiccCardApplicationBoth()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1

    .line 537
    const-string v0, "getUiccCardApplicationBoth() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUserNetworkTypeReasonInPreference()J
    .locals 2

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDefaultNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUserNetworkTypeReasonInPreference(I)J
    .locals 5

    .line 362
    const-string v0, "latest_nw_type"

    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 365
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 367
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public blacklist getUwbTimers()[I
    .locals 7

    .line 323
    iget v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 326
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/efs/sec_efs/tuwb"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUwbTimers from /efs/sec_efs/tuwb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SemPhoneInternal;->logd(Ljava/lang/String;)V

    .line 333
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 334
    array-length v6, v5

    new-array v0, v6, [I

    .line 335
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 336
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 339
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v2

    goto :goto_4

    .line 326
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 340
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUwbTimers: file read exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    :goto_7
    if-nez v1, :cond_2

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUwbTimers default mNumTimers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->logd(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public greylist getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;
    .locals 1

    .line 200
    const-string v0, "getVendorConfigurationTracker() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;
    .locals 1

    .line 433
    const-string v0, "getVendorTelephonyTester() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist givePrintableImei(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 648
    const-string p1, "givePrintableImei() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist hasCall(Ljava/lang/String;)Z
    .locals 0

    .line 474
    const-string p1, "hasCall() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasImsCall()Z
    .locals 1

    .line 482
    const-string v0, "hasImsCall() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initFdnList()V
    .locals 1

    .line 564
    const-string v0, "initFdnList() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0

    .line 666
    const-string p1, "invokeOemRilRequestRaw() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 671
    const-string p1, "invokeOemRilRequestStrings() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isAcBarred()Z
    .locals 1

    .line 676
    const-string v0, "isAcBarred() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isBootstrapActivated()Z
    .locals 1

    .line 639
    const-string v0, "isBootstrapActivated() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isCmcEmergencyCallSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 580
    const-string v0, "isCmcEmergencyCallSupported() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDeviceVoiceCapable()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mIsDeviceVoiceCapable:Z

    return p0
.end method

.method public blacklist isGbaSupported()Z
    .locals 1

    .line 176
    const-string v0, "isGbaSupported() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMmiDialString(Ljava/lang/String;)Z
    .locals 0

    .line 515
    const-string p1, "isMmiDialString() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMultiDeviceCallContinuityEnabledByUser()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 591
    const-string v0, "isMultiDeviceCallContinuityEnabledByUser() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSatelliteInSvc()Z
    .locals 1

    .line 700
    const-string v0, "isSatelliteInSvc() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVendorTestEnabled()Z
    .locals 1

    .line 439
    const-string v0, "isVendorTestEnabled() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVonrSupported()Z
    .locals 1

    .line 624
    const-string v0, "isVonrSupported() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist notifyQosStateChanged([Ljava/lang/String;)V
    .locals 2

    .line 754
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mQosStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_0

    .line 755
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method protected blacklist postInit(I)V
    .locals 3

    .line 134
    iget v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 139
    iput p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/SemPhoneFactory;->getSemCommandsInterfaces(Landroid/content/Context;)[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object v2

    aget-object p1, v2, p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postInit. phoneId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", semCi: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist prepareCsCrossCallWaiting(ZI)V
    .locals 0

    .line 245
    const-string p1, "prepareCsCrossCallWaiting() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist pull(I)V
    .locals 0

    .line 602
    const-string p1, "pull() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist putEnable2gNetworkTypeReasonInPreference(II)V
    .locals 2

    int-to-long v0, p2

    .line 396
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putEnable2gNetworkTypeReasonInPreference(IJ)V

    return-void
.end method

.method public blacklist putEnable2gNetworkTypeReasonInPreference(IJ)V
    .locals 2

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 402
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latest_enable_2g_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public blacklist putUserNetworkTypeReasonInPreference(II)V
    .locals 2

    int-to-long v0, p2

    .line 374
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(IJ)V

    return-void
.end method

.method public blacklist putUserNetworkTypeReasonInPreference(IJ)V
    .locals 2

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 380
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latest_nw_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public blacklist querySupportVonr()V
    .locals 1

    .line 629
    const-string v0, "querySupportVonr() should be overridden"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerForSatModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 760
    const-string p1, "registerForSatModemStateChanged should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerQosStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 746
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mQosStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist resetNetworkSettings()V
    .locals 6

    .line 710
    const-string v0, "Exception during close resetNetworkSettings: "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 711
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x2

    .line 714
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x97

    .line 715
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 716
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 717
    iget-object v3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 723
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 719
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during resetNetworkSettings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 723
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 722
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 723
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    .line 727
    :goto_3
    throw v3
.end method

.method public blacklist sendCallWaitingStatus()V
    .locals 6

    .line 206
    const-string v0, "Exception during sendCallWaitingStatus #2: "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 207
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTerminalBasedCallWaitingSetting()I

    move-result v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCallWaitingStatus - value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemPhoneInternal;->logd(Ljava/lang/String;)V

    const/16 v4, 0xb

    .line 213
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x18

    .line 214
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 215
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0xf0

    goto :goto_0

    :cond_0
    const/16 v3, 0xf1

    .line 216
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 224
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    .line 220
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during sendCallWaitingStatus #1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 224
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_2
    return-void

    .line 223
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 224
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    .line 228
    :goto_4
    throw v3
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/PublishDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 586
    const-string p1, "sendPublishDialog() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendSatelliteBackoffRequest(Lcom/android/internal/telephony/SemDeviceStateMonitor$SarDeviceId;Z)V
    .locals 0

    .line 694
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 695
    const-string p1, "sendSatelliteBackoffRequest() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method blacklist setCallWaitingExt(ZILandroid/os/Message;)Z
    .locals 0

    .line 250
    const-string p1, "setCallWaitingExt() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 606
    const-string p1, "setGbaBootstrappingParams() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 607
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public blacklist setImsCallList()V
    .locals 0

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setImsCallList()V

    :cond_0
    return-void
.end method

.method public blacklist setPcoValue(I)V
    .locals 0

    .line 681
    const-string p1, "setPcoValue should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSatellitePower(ZLcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0

    .line 685
    const-string p1, "setSatellitePower() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSimOnOff(ILandroid/os/Message;)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimOnOff(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingSetting(Z)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    iget p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mPhoneId:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string p0, "volte_call_waiting"

    goto :goto_0

    :cond_0
    const-string p0, "volte_call_waiting_slot2"

    .line 239
    :goto_0
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public blacklist setUwbTimers([I)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 256
    array-length v1, p1

    const/16 v2, 0x8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    array-length v1, p1

    if-eq v1, v2, :cond_0

    goto/16 :goto_b

    .line 261
    :cond_0
    array-length v1, p1

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v0

    .line 263
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/SemPhoneInternal;->default_timers:[[I

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    array-length v0, p1

    iput v0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwbTimers - default values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->logd(Ljava/lang/String;)V

    return v4

    :cond_2
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/16 v8, 0x1e

    const/4 v9, 0x7

    const/4 v10, 0x2

    const/16 v11, 0x78

    if-nez v1, :cond_3

    .line 269
    new-array v12, v3, [I

    aput v8, v12, v0

    aput v11, v12, v4

    aput v8, v12, v10

    goto :goto_1

    .line 270
    :cond_3
    new-array v12, v2, [I

    aput v8, v12, v0

    aput v11, v12, v4

    aput v11, v12, v10

    const/16 v8, 0x384

    aput v8, v12, v3

    aput v11, v12, v7

    aput v9, v12, v6

    aput v9, v12, v5

    const v8, 0x32000

    aput v8, v12, v9

    :goto_1
    const/16 v8, 0xa

    if-nez v1, :cond_4

    .line 271
    new-array v1, v3, [I

    aput v4, v1, v0

    aput v4, v1, v4

    aput v4, v1, v10

    goto :goto_2

    .line 272
    :cond_4
    new-array v1, v2, [I

    aput v4, v1, v0

    aput v4, v1, v4

    aput v4, v1, v10

    aput v8, v1, v3

    aput v4, v1, v7

    aput v4, v1, v6

    aput v4, v1, v5

    const/16 v2, 0x1000

    aput v2, v1, v9

    .line 274
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v0

    .line 276
    :goto_3
    array-length v5, p1

    if-ge v3, v5, :cond_8

    .line 277
    aget v5, p1, v3

    aget v6, v12, v3

    if-gt v5, v6, :cond_7

    if-ltz v5, :cond_7

    aget v6, v1, v3

    rem-int v6, v5, v6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 283
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 284
    array-length v5, p1

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_6

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 278
    :cond_7
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers - invalid t["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] value (new value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", range: 0 ~ "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v12, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return v0

    .line 287
    :cond_8
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/sec_efs/tuwb"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_9

    .line 291
    const-string v3, "tUWB file already exists"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->logd(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_a

    .line 292
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 293
    const-string v3, "Create new file for tUWB : Fail!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_a
    :goto_5
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v3, v8}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 309
    array-length p1, p1

    iput p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mNumTimers:I

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setUwbTimers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->logd(Ljava/lang/String;)V

    return v4

    :catch_1
    move-exception p1

    goto :goto_9

    :catchall_0
    move-exception p1

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 300
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 305
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers: file write exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return v0

    .line 296
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers: file create exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return v0

    .line 257
    :cond_b
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUwbTimers - Failure: invalid number of parameters! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist simulateNetworkEmergencyNumber(Ljava/lang/String;)V
    .locals 0

    .line 634
    const-string p1, "simulateNetworkEmergencyNumber() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterForSatModemStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 764
    const-string p1, "unregisterForSatModemStateChanged should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterQosStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mQosStateChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist updateLastNotifiedEligibilityAndNotify(Z)V
    .locals 0

    .line 738
    const-string p1, "updateLastNotifiedEligibilityAndNotify() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist updateTtyMode(IZ)V
    .locals 0

    .line 527
    const-string p1, "updateTtyMode() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist updateUiTtyMode(IZ)V
    .locals 0

    .line 532
    const-string p1, "updateUiTtyMode() should be overridden"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public varargs greylist writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
