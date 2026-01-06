.class public Lcom/android/internal/telephony/SmsConfig;
.super Landroid/os/Handler;
.source "SmsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;
    }
.end annotation


# static fields
.field private static blacklist IMS_MNO_URI:Landroid/net/Uri; = null

.field public static final blacklist SMS_3GPP2_LGT_NETWORK:Ljava/lang/String; = "sms_3gpp2_lgt_network"

.field public static final blacklist SMS_ALLOW_EMAIL_SMS_ADDRESS:Ljava/lang/String; = "sms_allow_email_sms_address"

.field public static final blacklist SMS_CDMA_COPY_TO_RUIM:Ljava/lang/String; = "sms_cdma_copy_to_ruim"

.field public static final blacklist SMS_CDMA_SENT_FAIL_DISPLAY:Ljava/lang/String; = "sms_cdma_sent_fail_display"

.field public static final blacklist SMS_CHECK_DUPLICATE_PORT_OMADM_WAPPUSH:Ljava/lang/String; = "sms_check_duplicate_port_omadm_wappush"

.field public static final blacklist SMS_CHECK_ECM_MODE:Ljava/lang/String; = "sms_check_ecm_mode"

.field public static final blacklist SMS_DISABLE_SMS_VOICEMAIL:Ljava/lang/String; = "sms_disable_sms_voicemail"

.field public static final blacklist SMS_DISPLAY_POLICY_PARTIAL_LONG_SMS:Ljava/lang/String; = "sms_display_policy_partial_long_sms"

.field public static final blacklist SMS_ECM_INCOMING_SMS:Ljava/lang/String; = "sms_ecm_incoming_sms"

.field public static final blacklist SMS_ERROR_CLASS_RETRY:Ljava/lang/String; = "sms_error_class_retry"

.field public static final blacklist SMS_GLOBAL_MODE_SMS_ADDRESS_RULE:Ljava/lang/String; = "sms_global_mode_sms_address_rule"

.field public static final blacklist SMS_LINK_WARNING_INDICATION:Ljava/lang/String; = "sms_link_warning_indication"

.field public static final blacklist SMS_MAX_RETRIES_ONE:Ljava/lang/String; = "sms_max_retries_one"

.field public static final blacklist SMS_MAX_RETRIES_ZERO:Ljava/lang/String; = "sms_max_retries_zero"

.field public static final blacklist SMS_MMS_UAP_BUILD_ID:Ljava/lang/String; = "sms_mms_uap_build_id"

.field public static final blacklist SMS_NETWORKLOCK_ALLOW_SMS:Ljava/lang/String; = "sms_networklock_allow_sms"

.field public static final blacklist SMS_NETWORK_SEARCH_FOR_E911:Ljava/lang/String; = "sms_network_search_for_e911"

.field public static final blacklist SMS_NOT_COUNT_VOICEMAIL:Ljava/lang/String; = "sms_not_count_voicemail"

.field public static final blacklist SMS_NOT_RECEIVE_CMAS_WITHOUT_SIM:Ljava/lang/String; = "sms_not_receive_cmas_without_sim"

.field public static final blacklist SMS_NOT_USED_VALIDITY_PERIOD_FORMAT:Ljava/lang/String; = "sms_not_used_validity_period_format"

.field public static final blacklist SMS_NSRI_SECURITY_SOLUTION:Ljava/lang/String; = "sms_nsri_security_solution"

.field public static final blacklist SMS_QMI_CDMA_GSM:Ljava/lang/String; = "sms_qmi_cdma_gsm"

.field public static final blacklist SMS_READ_CONFIRM:Ljava/lang/String; = "sms_read_confirm"

.field public static final blacklist SMS_RECEIVE_SMS_WITHOUT_SMSCAPABLE:Ljava/lang/String; = "sms_receive_sms_without_smscapable"

.field public static final blacklist SMS_RP_SMMA_NOT_SUPPORTED:Ljava/lang/String; = "sms_rp_smma_not_supported"

.field public static final blacklist SMS_SAFE_MESSAGE_INDICATION:Ljava/lang/String; = "sms_safe_message_indication"

.field public static final blacklist SMS_SEGMENTED_SMS:Ljava/lang/String; = "sms_segmented_sms"

.field public static final blacklist SMS_SHOW_HIDDEN_MENU_SMS_PREF_MODE:Ljava/lang/String; = "sms_show_hidden_menu_sms_pref_mode"

.field public static final blacklist SMS_SMSP:Ljava/lang/String; = "sms_smsp"

.field public static final blacklist SMS_SPECIAL_ADDRESS_HANDLING_FOR:Ljava/lang/String; = "sms_special_address_handling_for"

.field public static final blacklist SMS_SUPPORT_GSM_8BIT_SMS:Ljava/lang/String; = "sms_support_gsm_8bit_sms"

.field public static final blacklist SMS_SUPPORT_KSC5601:Ljava/lang/String; = "sms_support_ksc5601"

.field public static final blacklist SMS_SUPPORT_REPLY_ADDRESS:Ljava/lang/String; = "sms_support_reply_address"

.field public static final blacklist SMS_WAP_PUSH_FORMAT_SMS:Ljava/lang/String; = "sms_wap_push_format_sms"

.field public static final blacklist SMS_WRITE_UICC_SUPPORTED:Ljava/lang/String; = "sms_write_uicc_supported"

.field private static blacklist sInstance:Lcom/android/internal/telephony/SmsConfig;


# instance fields
.field private blacklist mCheckDuplicatePortOmadmWappush:Z

.field private blacklist mCheckEcmMode:Z

.field private blacklist mDisableSmsVoicemail:Z

.field private blacklist mDisplayPolicyPartialLongSms:Z

.field private blacklist mEcmIncomingSms:Z

.field private blacklist mGlobalModeSmsAddressRule:Z

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsMnoName:Ljava/lang/String;

.field private final blacklist mImsMnoNameLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mImsMvnoName:Ljava/lang/String;

.field private final blacklist mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mMmsUapBuildId:Z

.field private blacklist mNetworkLockAllowSms:Z

.field private blacklist mNetworkSearchForSms:Z

.field private blacklist mNotCountVoicemail:Z

.field private blacklist mNotReceiveCmasWithoutSim:Z

.field private blacklist mNsriSecuritySolution:Z

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mQmiCdmaGsm:Z

.field private blacklist mReceiveSmsWithoutSmscapable:Z

.field private blacklist mRpSmmaNotSupported:Z

.field private blacklist mSegmentedSms:Z

.field private blacklist mSms3gpp2LgtNetwork:Z

.field private blacklist mSmsAddressSeparator:Z

.field private blacklist mSmsAllowEmailSmsAddress:Z

.field private blacklist mSmsCdmaCopyToRuim:Z

.field private blacklist mSmsCdmaSentFailDisplay:Z

.field private blacklist mSmsErrorClassRetry:Z

.field private blacklist mSmsLinkWarningIndication:Z

.field private blacklist mSmsMaxRetriesOne:Z

.field private blacklist mSmsMaxRetriesZero:Z

.field private blacklist mSmsNotUsedValidityPeriodFormat:Z

.field private blacklist mSmsReadConfirm:Z

.field private blacklist mSmsSafeMessageIndication:Z

.field private blacklist mSmsShowHiddenMenuSmsPrefMode:Z

.field private blacklist mSmsSmsp:Z

.field private blacklist mSmsSupportKsc5601:Z

.field private blacklist mSmsSupportReplyAddress:Z

.field private blacklist mSmsWriteUiccSupported:Z

.field private blacklist mSpecialAddressHandlingFor:Z

.field private blacklist mSupportGsm8bitSms:Z

.field private blacklist mWapPushFormatSms:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 115
    const-string v0, "content://com.sec.ims.settings/mno"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsConfig;->IMS_MNO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V
    .locals 3

    .line 118
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAddressSeparator:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsLinkWarningIndication:Z

    .line 106
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    .line 107
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoNameLog:Lcom/android/internal/telephony/LocalLog;

    .line 113
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMvnoName:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/SmsConfig;->mHandlerThread:Landroid/os/HandlerThread;

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->getImsMnoUri()Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;-><init>(Lcom/android/internal/telephony/SmsConfig;Landroid/os/Handler;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 126
    :catch_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoNameLog:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "ContentObserver register fail"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p1, :cond_4

    .line 512
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 516
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_1

    .line 521
    :cond_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return p3
.end method

.method private blacklist getImsMnoUri()Landroid/net/Uri;
    .locals 3

    .line 248
    const-string v0, "content://com.sec.ims.settings/mno"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsConfig"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeSmsConfig(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsConfig;
    .locals 3

    .line 131
    const-string v0, "SmsConfig"

    const-string v1, "makeSmsConfig"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/SmsConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Lcom/android/internal/telephony/SmsConfig;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SmsConfig;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V

    sput-object v1, Lcom/android/internal/telephony/SmsConfig;->sInstance:Lcom/android/internal/telephony/SmsConfig;

    return-object v1
.end method

.method private blacklist sendMnoNameToRil()V
    .locals 8

    .line 291
    const-string v0, "Failed to close stream, exception is: "

    const-string v1, "SmsConfig"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    iget-object v4, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 294
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/16 v7, 0x25

    .line 297
    :try_start_0
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 298
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 299
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 300
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 307
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 303
    :catch_1
    :try_start_2
    const-string p0, "IOException during set MNO name"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 307
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 306
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 307
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_3
    throw p0
.end method

.method private blacklist setNsriFeatureOn()V
    .locals 6

    .line 315
    const-string v0, "Failed to close stream, exception is: "

    const-string v1, "SmsConfig"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x25

    .line 320
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 321
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    .line 322
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 329
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 325
    :catch_1
    :try_start_2
    const-string p0, "IOException during setNsriFeatureOn"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 329
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 328
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 329
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_3
    throw p0
.end method

.method private blacklist updateSmsSetting()V
    .locals 8

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmsSetting: simslot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 455
    const-string v0, "content://com.sec.ims.settings/sms_setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 459
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "sms_display_policy_partial_long_sms"

    const/4 v1, 0x0

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    .line 462
    const-string v0, "sms_special_address_handling_for"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    .line 463
    const-string v0, "sms_wap_push_format_sms"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    .line 464
    const-string v0, "sms_qmi_cdma_gsm"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    .line 465
    const-string v0, "sms_smsp"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    .line 466
    const-string v0, "sms_safe_message_indication"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    .line 467
    const-string v0, "sms_3gpp2_lgt_network"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    .line 468
    const-string v0, "sms_global_mode_sms_address_rule"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    .line 469
    const-string v0, "sms_not_count_voicemail"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    .line 470
    const-string v0, "sms_segmented_sms"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    .line 471
    const-string v0, "sms_cdma_copy_to_ruim"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    .line 472
    const-string v0, "sms_cdma_sent_fail_display"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    .line 473
    const-string v0, "sms_error_class_retry"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    .line 474
    const-string v0, "sms_max_retries_zero"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    .line 475
    const-string v0, "sms_not_used_validity_period_format"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    .line 476
    const-string v0, "sms_read_confirm"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    .line 477
    const-string v0, "sms_show_hidden_menu_sms_pref_mode"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    .line 478
    const-string v0, "sms_allow_email_sms_address"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    .line 479
    const-string v0, "sms_support_ksc5601"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    .line 480
    const-string v0, "sms_support_reply_address"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    .line 481
    const-string v0, "sms_disable_sms_voicemail"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    .line 482
    const-string v0, "sms_mms_uap_build_id"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    .line 483
    const-string v0, "sms_max_retries_one"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    .line 484
    const-string v0, "sms_ecm_incoming_sms"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    .line 485
    const-string v0, "sms_support_gsm_8bit_sms"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    .line 486
    const-string v0, "sms_check_ecm_mode"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    .line 487
    const-string v0, "sms_write_uicc_supported"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    .line 488
    const-string v0, "sms_receive_sms_without_smscapable"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    .line 489
    const-string v0, "sms_rp_smma_not_supported"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    .line 490
    const-string v0, "sms_check_duplicate_port_omadm_wappush"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    .line 491
    const-string v0, "sms_not_receive_cmas_without_sim"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    .line 492
    const-string v0, "sms_nsri_security_solution"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    .line 493
    const-string v0, "sms_networklock_allow_sms"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    .line 494
    const-string v0, "sms_network_search_for_e911"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z

    .line 495
    const-string v0, "sms_link_warning_indication"

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/telephony/SmsConfig;->getAsBoolean(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsLinkWarningIndication:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    if-eqz v0, :cond_2

    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->setNsriFeatureOn()V

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->printSetting()V

    return-void

    .line 498
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    if-eqz v0, :cond_4

    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->setNsriFeatureOn()V

    .line 507
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->printSetting()V

    return-void

    :goto_2
    if-eqz v7, :cond_5

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    if-eqz v1, :cond_6

    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->setNsriFeatureOn()V

    .line 507
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->printSetting()V

    .line 508
    throw v0
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 144
    const-string v0, "SmsConfig"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public blacklist getMnoName()Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmsSetting(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "sms_check_ecm_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "sms_max_retries_zero"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "sms_wap_push_format_sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "sms_allow_email_sms_address"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "sms_check_duplicate_port_omadm_wappush"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "sms_safe_message_indication"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "sms_segmented_sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "sms_not_receive_cmas_without_sim"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "sms_support_ksc5601"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "sms_3gpp2_lgt_network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "sms_show_hidden_menu_sms_pref_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "sms_support_reply_address"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "sms_cdma_sent_fail_display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "sms_qmi_cdma_gsm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "sms_global_mode_sms_address_rule"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "sms_network_search_for_e911"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "sms_not_used_validity_period_format"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "sms_max_retries_one"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "sms_cdma_copy_to_ruim"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "sms_read_confirm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "sms_smsp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "sms_not_count_voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "sms_write_uicc_supported"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "sms_networklock_allow_sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "sms_ecm_incoming_sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "sms_error_class_retry"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "sms_link_warning_indication"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "sms_disable_sms_voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1c
    const-string v2, "sms_rp_smma_not_supported"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1d
    const-string v2, "sms_receive_sms_without_smscapable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1e
    const-string v2, "sms_nsri_security_solution"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1f
    const-string v2, "sms_mms_uap_build_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_20
    const-string v2, "sms_support_gsm_8bit_sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_21
    const-string v2, "sms_display_policy_partial_long_sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_22
    const-string v2, "sms_special_address_handling_for"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_0

    :cond_22
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 445
    const-string v1, "SmsConfig"

    const-string v2, "invalid setting name"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 418
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    goto/16 :goto_1

    .line 382
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    goto/16 :goto_1

    .line 346
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    goto/16 :goto_1

    .line 394
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    goto/16 :goto_1

    .line 430
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    goto/16 :goto_1

    .line 355
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    goto/16 :goto_1

    .line 370
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    goto/16 :goto_1

    .line 433
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    goto/16 :goto_1

    .line 397
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    goto/16 :goto_1

    .line 361
    :pswitch_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    goto :goto_1

    .line 391
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    goto :goto_1

    .line 400
    :pswitch_b
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    goto :goto_1

    .line 376
    :pswitch_c
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    goto :goto_1

    .line 349
    :pswitch_d
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    goto :goto_1

    .line 364
    :pswitch_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    goto :goto_1

    .line 442
    :pswitch_f
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z

    goto :goto_1

    .line 385
    :pswitch_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    goto :goto_1

    .line 409
    :pswitch_11
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    goto :goto_1

    .line 373
    :pswitch_12
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    goto :goto_1

    .line 388
    :pswitch_13
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    goto :goto_1

    .line 352
    :pswitch_14
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    goto :goto_1

    .line 367
    :pswitch_15
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    goto :goto_1

    .line 421
    :pswitch_16
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    goto :goto_1

    .line 439
    :pswitch_17
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    goto :goto_1

    .line 412
    :pswitch_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    goto :goto_1

    .line 379
    :pswitch_19
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    goto :goto_1

    .line 358
    :pswitch_1a
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsLinkWarningIndication:Z

    goto :goto_1

    .line 403
    :pswitch_1b
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    goto :goto_1

    .line 427
    :pswitch_1c
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    goto :goto_1

    .line 424
    :pswitch_1d
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    goto :goto_1

    .line 436
    :pswitch_1e
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    goto :goto_1

    .line 406
    :pswitch_1f
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    goto :goto_1

    .line 415
    :pswitch_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    goto :goto_1

    .line 340
    :pswitch_21
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    goto :goto_1

    .line 343
    :pswitch_22
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    .line 448
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6ea2323a -> :sswitch_22
        -0x6b6995e2 -> :sswitch_21
        -0x5e8e30fd -> :sswitch_20
        -0x5e4d80e7 -> :sswitch_1f
        -0x5c7eb185 -> :sswitch_1e
        -0x59b86a4e -> :sswitch_1d
        -0x4e262194 -> :sswitch_1c
        -0x3d9020fa -> :sswitch_1b
        -0x34f9eea2 -> :sswitch_1a
        -0x301503fc -> :sswitch_19
        -0x24a9d96a -> :sswitch_18
        -0x11b53f69 -> :sswitch_17
        -0x11257057 -> :sswitch_16
        -0x9065e99 -> :sswitch_15
        -0x623a6a3 -> :sswitch_14
        -0x4a629c3 -> :sswitch_13
        0xc1f1c05 -> :sswitch_12
        0xc4702ac -> :sswitch_11
        0x1e75d658 -> :sswitch_10
        0x20ca4b0a -> :sswitch_f
        0x2590a633 -> :sswitch_e
        0x2809facf -> :sswitch_d
        0x2841c384 -> :sswitch_c
        0x329e4cc9 -> :sswitch_b
        0x35922d92 -> :sswitch_a
        0x46d87141 -> :sswitch_9
        0x4f843b87 -> :sswitch_8
        0x51cf3a2b -> :sswitch_7
        0x5b9f7e46 -> :sswitch_6
        0x5f8989a0 -> :sswitch_5
        0x60cef4c0 -> :sswitch_4
        0x69cdea8f -> :sswitch_3
        0x717cdc17 -> :sswitch_2
        0x7c9e3322 -> :sswitch_1
        0x7ebb7550 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 154
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "SmsConfig"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 160
    :cond_0
    const-string p1, "EVENT_SMS_SETTING_CHANGED"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->updateSmsSetting()V

    return-void

    .line 156
    :cond_1
    const-string p1, "EVENT_IMS_MNONAME_CHANGED"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->updateImsMnoName()V

    return-void
.end method

.method public blacklist isKor()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT_KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LGU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public varargs blacklist isMnoName([Ljava/lang/String;)Z
    .locals 5

    .line 268
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 269
    iget-object v4, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public blacklist printSetting()V
    .locals 2

    .line 526
    const-string v0, "------------------SmsSettings--------------------"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_display_policy_partial_long_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisplayPolicyPartialLongSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_special_address_handling_for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSpecialAddressHandlingFor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_wap_push_format_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mWapPushFormatSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_qmi_cdma_gsm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mQmiCdmaGsm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_smsp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSmsp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_safe_message_indication : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSafeMessageIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_link_warning_indication : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsLinkWarningIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_3gpp2_lgt_network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSms3gpp2LgtNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_global_mode_sms_address_rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mGlobalModeSmsAddressRule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_not_count_voicemail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotCountVoicemail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_segmented_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSegmentedSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_cdma_copy_to_ruim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaCopyToRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_cdma_sent_fail_display : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsCdmaSentFailDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_error_class_retry : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsErrorClassRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_max_retries_zero : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesZero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_not_used_validity_period_format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsNotUsedValidityPeriodFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_read_confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsReadConfirm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_show_hidden_menu_sms_pref_mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsShowHiddenMenuSmsPrefMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_allow_email_sms_address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsAllowEmailSmsAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_support_ksc5601 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportKsc5601:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_support_reply_address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsSupportReplyAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_disable_sms_voicemail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mDisableSmsVoicemail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_mms_uap_build_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mMmsUapBuildId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_max_retries_one  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsMaxRetriesOne:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_ecm_incoming_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mEcmIncomingSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_support_gsm_8bit_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSupportGsm8bitSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_check_ecm_mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckEcmMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_write_uicc_supported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mSmsWriteUiccSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_receive_sms_without_smscapable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mReceiveSmsWithoutSmscapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_rp_smma_not_supported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mRpSmmaNotSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_check_duplicate_port_omadm_wappush : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mCheckDuplicatePortOmadmWappush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_not_receive_cmas_without_sim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNotReceiveCmasWithoutSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_nsri_security_solution : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNsriSecuritySolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_networklock_allow_sms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkLockAllowSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_network_search_for_e911 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsConfig;->mNetworkSearchForSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateImsMnoName()V
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsMnoName - old ImsMnoName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->getImsMnoUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 176
    const-string v1, ""

    if-eqz v0, :cond_3

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v2

    .line 181
    :cond_0
    const-string v4, "hassim"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 183
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMnoNameFromDB() hassim :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 185
    const-string v5, "TRUE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 186
    const-string v5, "mnoname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    if-eqz v4, :cond_1

    .line 188
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v4, "mvnoname"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 192
    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMnoNameFromDB() mvno :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    const-string v4, "SmsConfig"

    const-string v5, "getMnoNameFromDB() not mvno operator"

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 205
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 207
    :goto_2
    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMvnoName:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsConfig;->updateMnoNameForKorSim()V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsMnoName - new ImsMnoName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsConfig;->logd(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsConfig;->sendMnoNameToRil()V

    return-void
.end method

.method public blacklist updateMnoNameForKorSim()V
    .locals 6

    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "00000"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 218
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_0
    const-string v1, "000"

    .line 222
    :goto_0
    const-string v2, "450"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 223
    iget-object v2, p0, Lcom/android/internal/telephony/SmsConfig;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SKT_KR"

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_1
    move v0, v4

    goto :goto_2

    :sswitch_0
    const-string v0, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :sswitch_1
    const-string v0, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v0, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const-string v3, "KOO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 228
    :pswitch_0
    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    return-void

    .line 234
    :pswitch_1
    const-string v0, "LGU+_KR"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    return-void

    .line 231
    :pswitch_2
    const-string v0, "KT_KR"

    iput-object v0, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    return-void

    .line 237
    :pswitch_3
    iput-object v1, p0, Lcom/android/internal/telephony/SmsConfig;->mImsMnoName:Ljava/lang/String;

    :cond_5
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1236b -> :sswitch_3
        0x1240b -> :sswitch_2
        0x12639 -> :sswitch_1
        0x140fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
