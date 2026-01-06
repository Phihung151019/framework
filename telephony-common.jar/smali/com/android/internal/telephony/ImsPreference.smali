.class public Lcom/android/internal/telephony/ImsPreference;
.super Landroid/os/Handler;
.source "ImsPreference.java"


# static fields
.field public static final blacklist CALLWAITING_PATH_CS_NW:I = 0x1

.field public static final blacklist CALLWAITING_PATH_CS_TB:I = 0x2

.field public static final blacklist CALLWAITING_PATH_PS_NW:I = 0x10

.field public static final blacklist CALLWAITING_PATH_PS_NW_CS_NW:I = 0x11

.field public static final blacklist CALLWAITING_PATH_PS_NW_CS_TB:I = 0x12

.field public static final blacklist CALLWAITING_PATH_PS_TB:I = 0x20

.field public static final blacklist CALLWAITING_PATH_PS_TB_CS_NW:I = 0x21

.field public static final blacklist CALLWAITING_PATH_PS_TB_CS_TB:I = 0x22

.field public static final blacklist EMERGENCY_DOMAIN_CS:I = 0x1

.field public static final blacklist EMERGENCY_DOMAIN_PS:I = 0x0

.field public static final blacklist EMERGENCY_DOMAIN_UNKNOWN:I = 0xff

.field public static final blacklist IMS_SUPPORT_NONE:I = 0x0

.field public static final blacklist IMS_SUPPORT_VOLTE:I = 0x1

.field public static final blacklist IMS_SUPPORT_VOLTE_VOWIFI:I = 0x3

.field public static final blacklist IMS_SUPPORT_VOWIFI:I = 0x2

.field public static final blacklist SMS_FORMAT_3GPP:I = 0x1

.field public static final blacklist SMS_FORMAT_3GPP2:I = 0x2

.field public static final blacklist SMS_FORMAT_UNKNOWN:I = 0x0

.field public static final blacklist SS_USSD_DOMAIN_CS:I = 0x1

.field public static final blacklist SS_USSD_DOMAIN_PS:I = 0x0

.field public static final blacklist SS_USSD_DOMAIN_PS_REGI:I = 0x3

.field public static final blacklist SS_USSD_DOMAIN_UNKNOWN:I = 0xff

.field public static final blacklist SS_USSD_DOMAIN_VOLTE_REGI:I = 0x2

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_CS_ONLY:I = 0x0

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_CS_PREF:I = 0x2

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_NONE:I = -0x1

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_PS_ONLY:I = 0x1

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_PS_PREF:I = 0x3

.field public static final blacklist VOICE_DOMAIN_PREFERENCE_UNKNOWN:I = 0xff


# instance fields
.field private blacklist mCallWaitingPathPref:I

.field private blacklist mEmergencyDomainPref:I

.field private blacklist mEnableSms:Z

.field private blacklist mEnableSmsWriteUicc:Z

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsMnoName:Ljava/lang/String;

.field private final blacklist mImsMnoNameObserver:Landroid/database/ContentObserver;

.field private final blacklist mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mImsSimMobilityObserver:Landroid/database/ContentObserver;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSmsFormat:I

.field private blacklist mSsDomainPref:I

.field private blacklist mSupportVolteRoaming:Z

.field private blacklist mVolteEutranPref:I

.field private blacklist mVolteUtranPref:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/ImsPreference;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V
    .locals 2

    .line 120
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/ImsPreference$1;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/ImsPreference$1;-><init>(Lcom/android/internal/telephony/ImsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoNameObserver:Landroid/database/ContentObserver;

    .line 109
    new-instance v1, Lcom/android/internal/telephony/ImsPreference$2;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/telephony/ImsPreference$2;-><init>(Lcom/android/internal/telephony/ImsPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSimMobilityObserver:Landroid/database/ContentObserver;

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 123
    iput-object p2, p0, Lcom/android/internal/telephony/ImsPreference;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 p2, 0x1

    .line 126
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    .line 129
    iput v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    .line 131
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    .line 132
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    .line 133
    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    .line 134
    iput p2, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsMnoUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    const-string p2, "ImsMnoName ContentObserver register fail"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 143
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsSimMobilityUri()Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSimMobilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 145
    :catch_1
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "ImsSimMobility ContentObserver register fail"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private blacklist getImsMnoUri()Landroid/net/Uri;
    .locals 3

    .line 359
    const-string v0, "content://com.sec.ims.settings/mno"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

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

.method private blacklist getImsSimMobilityUri()Landroid/net/Uri;
    .locals 3

    .line 366
    const-string v0, "content://com.sec.ims.settings/simmobility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

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

.method private blacklist imsPreferenceToString()Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 244
    const-string v1, "emergencyDomainPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", supportVolteRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", smsFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", enableSms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", enableSmsWriteUicc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, ", volteEutranPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", volteUtranPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", ssDomainPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ", callWaitingPathPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPreference"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeImsPreference(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/ImsPreference;
    .locals 3

    .line 150
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/ImsPreference;

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

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 152
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    new-instance v1, Lcom/android/internal/telephony/ImsPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/ImsPreference;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V

    return-object v1
.end method

.method private blacklist updateImsMnoName()V
    .locals 11

    .line 298
    const-string v1, "updateImsMnoName - "

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    .line 300
    const-string v3, ""

    const/4 v4, 0x0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsMnoUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 304
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    :cond_0
    const-string v0, "mnoname"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 308
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    .line 310
    :cond_1
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 312
    :cond_2
    const-string v0, "updateImsMnoName - No cursor or empty cursor"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v4, :cond_3

    .line 318
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 315
    :goto_3
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    goto :goto_2

    .line 322
    :cond_3
    :goto_4
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 323
    iput-object v3, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsMnoName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_4
    return-void

    :goto_5
    if-eqz v4, :cond_5

    .line 318
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_5
    throw p0
.end method

.method private blacklist updateSimMobilityState()V
    .locals 10

    .line 332
    const-string v1, "updateSimMobilityState - "

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->getImsSimMobilityUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "simmobility"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    .line 340
    :cond_0
    const-string v0, "updateSimMobilityState - No cursor or empty cursor"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    .line 346
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 343
    :goto_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 350
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->updateSimMobility(ILjava/lang/Boolean;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM mobility state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 354
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    :goto_5
    if-eqz v2, :cond_3

    .line 346
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_3
    throw p0
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 2

    .line 157
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    const-string v0, "ImsMnoName ContentObserver unregister fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 166
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSimMobilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 168
    :catch_1
    const-string v0, "ImsSimMobility ContentObserver unregister fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 257
    const-string v0, "ImsPreference:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyDomainPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportVolteRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEnableSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEnableSmsWriteUicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVolteEutranPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVolteUtranPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSsDomainPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallWaitingPathPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 269
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 270
    const-string p2, " ImsPreference Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 272
    iget-object p2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 275
    const-string p2, " ImsObserver Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsObserverLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getCallWaitingPathPref()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    return p0
.end method

.method public blacklist getImsMnoName()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsMnoName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSmsOverIpFormat()I
    .locals 0

    .line 223
    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    return p0
.end method

.method public blacklist getSsDomainPref()I
    .locals 0

    .line 207
    iget p0, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 283
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->updateSimMobilityState()V

    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->updateImsMnoName()V

    return-void
.end method

.method public blacklist isSmsOverIpSupported()Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    return p0
.end method

.method public blacklist isSmsWriteUiccSupported()Z
    .locals 0

    .line 219
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    return p0
.end method

.method public blacklist isSupportVolteRoaming()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    return p0
.end method

.method public blacklist setCallWaitingPathPref(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    return-void
.end method

.method public blacklist setImsPreference(Landroid/os/AsyncResult;)V
    .locals 3

    .line 180
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 181
    check-cast p1, [I

    .line 183
    array-length v0, p1

    const/16 v1, 0xd

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 184
    aget v1, p1, v0

    iput v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    const/4 v1, 0x1

    .line 185
    aget v2, p1, v1

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    const/4 v2, 0x2

    .line 186
    aget v2, p1, v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    const/4 v2, 0x3

    .line 187
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    const/4 v2, 0x4

    .line 188
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    const/4 v2, 0x5

    .line 189
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    const/4 v2, 0x7

    .line 191
    aget v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    const/16 v2, 0xb

    .line 195
    aget v2, p1, v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    const/16 v0, 0xc

    .line 196
    aget p1, p1, v0

    iput p1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallWaitingPathPref:I

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsPreference;->imsPreferenceToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 202
    :cond_3
    const-string p1, "AsyncResult has wrong ImsPreference value"

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsPreference;->logd(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
