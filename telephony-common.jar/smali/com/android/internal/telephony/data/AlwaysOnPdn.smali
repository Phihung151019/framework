.class public Lcom/android/internal/telephony/data/AlwaysOnPdn;
.super Ljava/lang/Object;
.source "AlwaysOnPdn.java"


# instance fields
.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsInternetNetworkConnected:Z

.field protected blacklist mIsSetAlwaysOnPdn:Z

.field private blacklist mIsWifiConnected:Z

.field private blacklist mModemResetCount:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSupportVowifi:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/data/AlwaysOnPdn;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AlwaysOnPdn;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsWifiConnected(Lcom/android/internal/telephony/data/AlwaysOnPdn;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportVowifi(Lcom/android/internal/telephony/data/AlwaysOnPdn;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mSupportVowifi:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misNumericSysPropNotExist(Lcom/android/internal/telephony/data/AlwaysOnPdn;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isNumericSysPropNotExist()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/AlwaysOnPdn;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldRequestAlwaysOnPdn(Lcom/android/internal/telephony/data/AlwaysOnPdn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->shouldRequestAlwaysOnPdn()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 7

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mSupportVowifi:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsInternetNetworkConnected:Z

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mModemResetCount:I

    .line 77
    new-instance v2, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;-><init>(Lcom/android/internal/telephony/data/AlwaysOnPdn;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 64
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    const-string p0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string p0, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string p0, "com.sec.epdg.action.EPDG_CONFIGURATION_UPDATED"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string p0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist isConnected()Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsInternetNetworkConnected:Z

    return p0
.end method

.method private blacklist isDataDisabled()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    .line 304
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 305
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDefaultDataSubId()Z
    .locals 2

    .line 317
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 318
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result p0

    .line 319
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isNumericSysPropNotExist()Z
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isVzwSim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 401
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 403
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSetAlwaysOnPdn()Z
    .locals 7

    .line 378
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    .line 380
    const-string v1, "persist.radio.silent-reset"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mModemResetCount:I

    if-le v3, v4, :cond_0

    .line 382
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mModemResetCount:I

    .line 383
    const-string v0, "SetAlwaysOnPdn due to modem_silent_reset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    .line 387
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlwaysOnPdn, isSet? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    const-string v4, "false"

    const-string v5, "true"

    if-eqz v3, :cond_1

    move-object v3, v5

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 389
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", wifiConnected? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    if-eqz v3, :cond_3

    move-object v4, v5

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", modemReset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mModemResetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist isSpecificSubOperatorForUsa()Z
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOpportunisticSubscription()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "CHA"

    const-string v2, "CCT"

    const-string v3, "SPO"

    const-string v4, "XMO"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AOP-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyAlwaysOnPdnToRIL(Z)V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string p1, "notifyAlwaysOnPdnToRIL: not executed because data is disabled"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void

    .line 351
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 352
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x9

    .line 354
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x10

    .line 355
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 356
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 358
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set AlwaysOnPdn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v3, "Enabled"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string v3, "Disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 363
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 365
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAlwaysOnPdnToRIL: exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 369
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAlwaysOnPdnToRIL: close failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private blacklist shouldRequestAlwaysOnPdn()V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isAlwaysOnPdnSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v0, "AlwaysOnPdn, not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSetAlwaysOnPdn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    .line 244
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_8

    .line 246
    const-string v0, "Once Wi-Fi is connected, send SetAlwaysOnPdn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 247
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    return-void

    :cond_1
    if-eqz v1, :cond_8

    .line 252
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOpportunisticSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "CHA"

    const-string v2, "CCT"

    const-string v3, "SPO"

    const-string v4, "XMO"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDataDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isDataDisabled()Z

    move-result v1

    const-string v2, "false"

    const-string v3, "true"

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isDefaultDataSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isDefaultDataSubId()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isDataDisabled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isDefaultDataSubId()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 266
    :cond_6
    const-string v0, "Once Wi-Fi is disconnected, but defer sending TearDownAlwaysOnPdn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void

    .line 263
    :cond_7
    :goto_2
    const-string v0, "Once Wi-Fi is disconnected, send TearDownAlwaysOnPdn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public blacklist handleAlwaysOnPdn(ZZ)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isAlwaysOnPdnSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    const-string p1, "AlwaysOnPdn, not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSetAlwaysOnPdn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlwaysOnPdn, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 283
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    .line 284
    const-string p2, "Set AlwaysOnPdn due to force reset"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSpecificSubOperatorForUsa()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 288
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-nez p1, :cond_5

    .line 289
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    .line 290
    const-string p1, "send SetAlwaysOnPdn for CHA/CCT "

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 292
    iget-boolean p2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-nez p2, :cond_3

    .line 293
    const-string p1, "Wi-Fi is connected but SetAlwaysOnPdn is not sent, send it now"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    return-void

    :cond_3
    if-nez p1, :cond_5

    .line 295
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOpportunisticSubscription()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSpecificSubOperatorForUsa()Z

    move-result p1

    if-nez p1, :cond_5

    .line 296
    :cond_4
    const-string p1, "onDataSetupComplete: Wi-Fi is disconnected and default is connected,send TearDownAlwaysOnPdn"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->notifyAlwaysOnPdnToRIL(Z)V

    :cond_5
    return-void
.end method

.method public blacklist isAlwaysOnPdnRequiredByModem()Z
    .locals 3

    .line 155
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    const/4 v1, 0x1

    const-string v2, "EUR"

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 157
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 163
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_MTK:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 168
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_EXYNOS:Z

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isAlwaysOnPdnRequiredByOperator()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isCellcomSim()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSpecificSubOperatorForUsa()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "USC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public blacklist isAlwaysOnPdnSupported()Z
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isTmoSim()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isDsgSim()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 193
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isAttSim()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSpecificSubOperatorForUsa()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isSupportingVoWIFI()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isVzwSim()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 219
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isAlwaysOnPdnRequiredByOperator()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 224
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isAlwaysOnPdnRequiredByModem()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method public blacklist isSupportingVoWIFI()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 127
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 126
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mSupportVowifi:Z

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSupportVowifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mSupportVowifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->log(Ljava/lang/String;)V

    .line 129
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mSupportVowifi:Z

    return p0
.end method

.method public blacklist isWifiConnected()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsWifiConnected:Z

    return p0
.end method

.method public blacklist setInternetNetworkConnected(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsInternetNetworkConnected:Z

    return-void
.end method
