.class public Lcom/android/internal/telephony/SmsDomainSelector;
.super Landroid/os/Handler;
.source "SmsDomainSelector.java"


# static fields
.field public static final blacklist NET_TYPE_MAX:I = 0x5

.field public static final blacklist SIM_TYPE_KTT:I = 0x2

.field public static final blacklist SIM_TYPE_LGU:I = 0x3

.field public static final blacklist SIM_TYPE_SKT:I = 0x4

.field public static final blacklist SIM_TYPE_STD:I = 0x1

.field public static final blacklist SIM_TYPE_TEST:I = 0xc

.field public static final blacklist SIM_TYPE_UNREG_KTT:I = 0x14

.field public static final blacklist SIM_TYPE_UNREG_LGU:I = 0x12

.field public static final blacklist SIM_TYPE_UNREG_SKT:I = 0x13

.field public static final blacklist SMS_DOMAIN_CS_ONLY:I = 0x0

.field public static final blacklist SMS_DOMAIN_CS_ONLY_KTT:I = 0x3

.field public static final blacklist SMS_DOMAIN_CS_ONLY_SKT:I = 0x3

.field public static final blacklist SMS_DOMAIN_CS_PREFERRED:I = 0x2

.field public static final blacklist SMS_DOMAIN_CS_PREF_KTT:I = 0x1

.field public static final blacklist SMS_DOMAIN_CS_PREF_SKT:I = 0x2

.field public static final blacklist SMS_DOMAIN_IMS_ONLY:I = 0x4

.field public static final blacklist SMS_DOMAIN_IMS_PREFERRED:I = 0x5

.field public static final blacklist SMS_DOMAIN_PS_ONLY:I = 0x1

.field public static final blacklist SMS_DOMAIN_PS_ONLY_SKT:I = 0x1

.field public static final blacklist SMS_DOMAIN_PS_PREFERRED:I = 0x3

.field public static final blacklist SMS_DOMAIN_PS_PREF_KTT:I

.field public static final blacklist SMS_DOMAIN_PS_PREF_SKT:I


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mIsRegistered:Z

.field private volatile blacklist mIsSmsCapable:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private volatile blacklist mRegisteredTransportType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mRegisteredTransportType:I

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mContext:Landroid/content/Context;

    .line 81
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private blacklist convertPrefmodeToDomain(II)I
    .locals 5

    .line 395
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string v0, "SKT"

    const-string v1, "LGU"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    return v4

    .line 410
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string p1, "KT_KR"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eq p2, v2, :cond_7

    if-eq p2, v4, :cond_6

    if-eq p2, v3, :cond_5

    return v4

    :cond_5
    return v3

    :cond_6
    return v0

    :cond_7
    return v1
.end method

.method private blacklist convertSimTypeToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 388
    const-string p0, "unknown"

    return-object p0

    .line 385
    :pswitch_0
    const-string p0, "Unreg KTT"

    return-object p0

    .line 382
    :pswitch_1
    const-string p0, "Unreg SKT"

    return-object p0

    .line 379
    :pswitch_2
    const-string p0, "Unreg LGU"

    return-object p0

    .line 376
    :cond_0
    const-string p0, "Samsung Testbed"

    return-object p0

    .line 370
    :cond_1
    const-string p0, "SKT"

    return-object p0

    .line 373
    :cond_2
    const-string p0, "LGU"

    return-object p0

    .line 367
    :cond_3
    const-string p0, "KTT"

    return-object p0

    .line 364
    :cond_4
    const-string p0, "STD"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist is2gDataNetwork()Z
    .locals 2

    .line 298
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private blacklist isOnCall()Z
    .locals 7

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 318
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 321
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 324
    :cond_1
    :goto_0
    const-string v3, "SmsDomainSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOnCall: subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    const/4 v4, 0x1

    .line 328
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    throw p0
.end method

.method private blacklist isRegistered(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(IZ)Z

    move-result p0

    return p0
.end method

.method private blacklist isRegistered(IZ)Z
    .locals 5

    .line 106
    const-string v0, "ril.simtype"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsRegistered:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsSmsCapable:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 108
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmsIpRegistered["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " SIM = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsDomainSelector;->convertSimTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SmsDomainSelector"

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p0

    const-string p1, "LGU"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    if-nez p2, :cond_1

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public blacklist convertToDomainName(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    .line 354
    const-string p0, "Unknown domain"

    return-object p0

    .line 351
    :cond_0
    const-string p0, "SMS_DOMAIN_IMS_PREFERRED"

    return-object p0

    .line 348
    :cond_1
    const-string p0, "SMS_DOMAIN_IMS_ONLY"

    return-object p0

    .line 345
    :cond_2
    const-string p0, "SMS_DOMAIN_PS_PREFERRED"

    return-object p0

    .line 342
    :cond_3
    const-string p0, "SMS_DOMAIN_CS_PREFERRED"

    return-object p0

    .line 339
    :cond_4
    const-string p0, "SMS_DOMAIN_PS_ONLY"

    return-object p0

    .line 336
    :cond_5
    const-string p0, "SMS_DOMAIN_CS_ONLY"

    return-object p0
.end method

.method public blacklist getCommonSmsDomain(ILjava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v1, "VZW"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "911"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "ro.product.first_api_level"

    .line 120
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 123
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "00000"

    invoke-static {p1, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " operator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dataNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 126
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    const-string v5, "SmsDomainSelector"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v4, "31015"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_2

    const-string v4, "31017"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "31041"

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "31098"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "31180"

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    .line 134
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result p1

    const/4 v7, 0x4

    if-eqz p1, :cond_5

    .line 135
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 136
    const-string p1, "isSmsOverIpSupported = true"

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v4, v7

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_4

    .line 139
    const-string p1, "SMS over IP Indication is disabled. But overrided for E911 SMS."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 142
    :cond_4
    const-string p1, "SMS over IP Indication is disabled."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 146
    :goto_4
    const-string p1, "ro.ril.svlte1x"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSVLTEDevice = "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p2, :cond_6

    .line 150
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 151
    const-string p1, "E911 SMS should go out over IMS in LTE."

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    :cond_6
    if-eq v4, v7, :cond_8

    const/4 p1, 0x5

    if-ne v4, p1, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    move v6, v4

    goto/16 :goto_a

    .line 156
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p1

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDomainSelector;->isOnCall()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 158
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p2

    const-string v8, "ATT_US"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    if-eq p1, v6, :cond_9

    if-ne p1, v1, :cond_a

    .line 160
    :cond_9
    const-string p1, "SMS over CS domain during 2G voice call"

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v4, v6

    goto :goto_9

    :cond_a
    if-eqz v2, :cond_b

    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p1

    if-ne p1, v6, :cond_b

    const/16 p1, 0xd

    if-ne v0, p1, :cond_b

    :goto_8
    goto :goto_7

    :cond_b
    if-nez v2, :cond_d

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, p2, :cond_d

    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string p2, "USCC"

    const-string v1, "SPRINT"

    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 176
    const-string p1, "hybrid volte should send sms over 1X during voice call"

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 178
    :cond_d
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string p2, "CMCC_CN:CHM"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDomainSelector;->is2gDataNetwork()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_8

    .line 183
    :cond_e
    :goto_9
    iget p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mRegisteredTransportType:I

    if-ne p1, v6, :cond_f

    .line 184
    const-string p1, "EPDG is registered, SMS should go out over IMS"

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 185
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-nez p1, :cond_12

    if-lt v0, v7, :cond_10

    const/16 p1, 0x8

    if-le v0, p1, :cond_12

    :cond_10
    const/16 p1, 0xc

    if-eq v0, p1, :cond_12

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object p1

    const-string p2, "TMOBILE_US"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "26201"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 189
    :cond_11
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x12

    if-eq v0, p1, :cond_7

    .line 191
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RAT = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". SMS over CS domain for RAT which does not support IMS."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "selected domain = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SmsDomainSelector;->convertToDomainName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public blacklist getKorSmsDomain(I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 202
    const-string v0, "ril.sms_preference"

    const-string v1, "2/0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "ril.simtype"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 207
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "00000"

    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    const-string v4, "gsm.operator.numeric"

    invoke-static {p1, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simOperator["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmsDomainSelector"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le v4, v7, :cond_0

    .line 212
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 214
    :cond_0
    const-string v3, "000"

    .line 216
    :goto_0
    const-string v4, "450"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_2

    const-string v4, "001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v8

    .line 217
    :goto_2
    const-string v4, "45001"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "00101"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v8

    .line 221
    :goto_4
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x2

    .line 222
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pref = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " prefDomestic = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KOR Operator Name = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_a

    .line 226
    const-string v0, "KorDomainSelector SUPPORT UsimMobility"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsRegistered(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v0, "LGU"

    const-string v10, "isSmsOverIpSupported = "

    const/4 v11, 0x4

    if-eqz v3, :cond_b

    .line 230
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result v2

    const-string v3, "set SMS pref domain: SMS_DOMAIN_IMS_ONLY"

    if-eqz v2, :cond_8

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsOverIpFormat = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsPreference;->getSmsOverIpFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v7, v11

    goto :goto_6

    .line 241
    :cond_6
    const-string v0, "set SMS pref domain: Operator\'s setting"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v7, v6

    goto :goto_6

    .line 244
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v1, v7, :cond_7

    .line 247
    const-string v0, "Ims isn\'t registered"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_6
    if-eq v7, v11, :cond_10

    if-ne v1, v11, :cond_9

    move v7, v4

    goto/16 :goto_7

    :cond_9
    if-ne v1, v6, :cond_a

    move v7, v9

    goto/16 :goto_7

    :cond_a
    move v7, v6

    goto/16 :goto_7

    .line 265
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v3, "KT_KR"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oversea "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". need to check volte roaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/SmsDomainSelector;->isRegistered(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsPreference()Lcom/android/internal/telephony/ImsPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->isSmsOverIpSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 277
    const-string v0, "Oversea KTT/LGT. support volte roaming. set IMS_ONLY"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    goto :goto_7

    .line 280
    :cond_d
    const-string v0, "Oversea KTT/LGT. isSmsOverIpSupported:false. set CS ONLY"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 284
    :cond_e
    const-string v0, "Oversea KTT/LGT. Ims isn\'t registered: CS ONLY"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 287
    :cond_f
    const-string v0, "Oversea. set CS ONLY"

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_10
    :goto_7
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/SmsDomainSelector;->convertPrefmodeToDomain(II)I

    move-result p0

    return p0
.end method

.method public blacklist getSmsDomain(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v0

    const-string v1, "sms_show_hidden_menu_sms_pref_mode"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDomainSelector;->getKorSmsDomain(I)I

    move-result p0

    return p0

    .line 94
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SmsDomainSelector;->getCommonSmsDomain(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist setImgRegiAndCapability(ZIZ)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsRegistered:Z

    .line 86
    iput p2, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mRegisteredTransportType:I

    .line 87
    iput-boolean p3, p0, Lcom/android/internal/telephony/SmsDomainSelector;->mIsSmsCapable:Z

    return-void
.end method
