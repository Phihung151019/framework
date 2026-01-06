.class public Lcom/android/internal/telephony/SemPhoneSubInfoController;
.super Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;
.source "SemPhoneSubInfoController.java"


# instance fields
.field private final greylist-max-r mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 58
    const-string p1, "isemphonesubinfo"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "add ISemPhoneSubInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    .line 60
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private blacklist canUseKodiakEpttApi()Z
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "com.sprint.sdcplus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.att.eptt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->checkSignature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 371
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseKodiakEpttApi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist canUseVzwPttApi(ILjava/lang/String;)Z
    .locals 5

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - check permission and feature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "com.verizon.ptt.API_ACCESS"

    const-string v4, "Requires PTT access permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_5

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v3, "com.verizon.mcptt.API_ACCESS"

    const-string v4, "Requires MCPTT access permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 234
    const-string v3, "vzwptt"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->hasRilFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_4

    .line 236
    const-string p1, "vzwmcptt"

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->hasRilFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 246
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 247
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v2

    .line 250
    :cond_2
    const-string v0, "VZW"

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - Not supported (Cause: CarrierFeature)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return v2

    .line 255
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - allowed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    return v1

    .line 241
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - Not supported (Cause: RIL_FEATURES)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return v2

    .line 229
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires PTT access permission: Neither user nor current process has API_ACCESS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkSignature(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 385
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v2, "48:25:91:ff:3e:38:68:45:b3:25:68:d9:d1:21:f9:24:ce:c0:2c:9d:24:70:c9:c9:f0:fa:09:89:6d:4f:cf:de"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 395
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSignature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is mismatch"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    :catch_0
    return v0
.end method

.method private blacklist enforceModifyPermission()V
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-r getDefaultSubscription()I
    .locals 0

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result p0

    return p0
.end method

.method private greylist-max-r getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 74
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 75
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasCallForPhone(ILjava/lang/String;)Z
    .locals 2

    .line 128
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SemPhoneInternal;->hasCall(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 135
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasCallForPhone - phone is null for phondId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 90
    const-string p0, "SemPhoneSubInfoController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-r loge(Ljava/lang/String;)V
    .locals 0

    .line 95
    const-string p0, "SemPhoneSubInfoController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist changeDRX(III)Z
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDRX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - cycle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    .line 147
    const-string v0, "changeDRX"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseVzwPttApi(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result p1

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result p0

    return p0

    :cond_1
    if-eqz v1, :cond_2

    .line 157
    const-string p1, "changeDRX - No DrxController"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "changeDRX - phone is null for subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public blacklist changeDRXForKodiak(II)Z
    .locals 4

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDRXForKodiak - drxValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseKodiakEpttApi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    .line 410
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 412
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result p0

    return p0

    :cond_1
    if-eqz v2, :cond_2

    .line 415
    const-string p1, "changeDRXForKodiak - No DrxController"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "changeDRXForKodiak - phone is null for subscription: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public blacklist clearMwiNotificationAndVoicemailCount(ILjava/lang/String;)V
    .locals 1

    .line 629
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 633
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 635
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string p2, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    const-string v0, "Requires WRITE_VOICEMAIL"

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->clearMwiNotificationAndVoicemailCount()V

    return-void

    .line 638
    :cond_1
    const-string p1, "clearMwiNotificationAndVoicemailCount phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getBtid(I)Ljava/lang/String;
    .locals 0

    .line 553
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getBtid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 557
    :cond_0
    const-string p1, "getBtid phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCurrentCycle(I)I
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentCycle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    .line 199
    const-string v0, "getCurrentCycle"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseVzwPttApi(ILjava/lang/String;)Z

    move-result p1

    const/16 v0, 0x500

    if-nez p1, :cond_0

    return v0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result p1

    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result p0

    return p0

    :cond_1
    if-eqz v1, :cond_2

    .line 209
    const-string p1, "getCurrentCycle - No DrxController"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCycle - phone is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public blacklist getCurrentModeForKodiak()I
    .locals 4

    .line 451
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseKodiakEpttApi()Z

    move-result v0

    const/16 v1, 0x500

    if-nez v0, :cond_0

    return v1

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    .line 456
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 458
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 459
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result p0

    return p0

    :cond_1
    if-eqz v2, :cond_2

    .line 461
    const-string v0, "getCurrentModeForKodiak - No DrxController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentModeForKodiak - phone is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public blacklist getDataServiceState()I
    .locals 1

    .line 303
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDataServiceStateUsingSubId(I)I

    move-result p0

    return p0
.end method

.method public blacklist getDataServiceStateUsingSubId(I)I
    .locals 2

    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataServiceState()I

    move-result p0

    return p0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataServiceStateUsingSubId - phone is null for subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getDefaultCycle(I)I
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultCycle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    .line 185
    const-string v0, "getDefaultCycle"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseVzwPttApi(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x500

    return p0
.end method

.method public blacklist getDefaultCycleForKodiak()I
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseKodiakEpttApi()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x500

    return p0
.end method

.method public blacklist getDrxMode()I
    .locals 3

    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    .line 285
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DrxController;->getDrxMode()I

    move-result p0

    return p0

    :cond_0
    if-eqz v1, :cond_1

    .line 290
    const-string v0, "getDrxMode - No DrxController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrxMode - phone is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getGroupIdLevel2ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 574
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 576
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v2, "getGroupIdLevel2ForSubscriber"

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    .line 580
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 582
    :cond_1
    const-string p1, "getGroupIdLevel2ForSubscriber phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getHomePlmns(I)[Ljava/lang/String;
    .locals 2

    .line 470
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 472
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v1, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getHomePlmns()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 476
    :cond_0
    const-string p1, "getHomePlmns phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getKeyLifetime(I)Ljava/lang/String;
    .locals 0

    .line 563
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getKeyLifetime()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 567
    :cond_0
    const-string p1, "getKeyLifetime phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPsismsc(Ljava/lang/String;)[B
    .locals 4

    .line 496
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 498
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 499
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const-string v3, "getPsismsc"

    .line 498
    invoke-static {p0, v2, p1, v1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    .line 502
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getPsismsc()[B

    move-result-object p0

    return-object p0

    .line 504
    :cond_1
    const-string p1, "getPsismsc phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getPsismscWithPhoneId(ILjava/lang/String;)[B
    .locals 3

    .line 510
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 514
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 516
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 517
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "getPsismscWithPhoneId"

    .line 516
    invoke-static {p0, v1, p2, v0, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    .line 520
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getPsismsc()[B

    move-result-object p0

    return-object p0

    .line 522
    :cond_2
    const-string p1, "getPsismsc phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getRand(I)[B
    .locals 0

    .line 543
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getRand()[B

    move-result-object p0

    return-object p0

    .line 547
    :cond_0
    const-string p1, "getRand phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSubscriberIdForUiccAppType(IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 482
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 484
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v2, "getSubscriberIdForUiccAppType"

    invoke-static {p0, p1, p3, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    .line 488
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SemPhoneInternal;->getSubscriberIdForUiccAppType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 490
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSubscriberIdForUiccAppType phone is null for Subscription:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getSupportedCycles(I)[I
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedCycles("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    .line 171
    const-string v0, "getSupportedCycles"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseVzwPttApi(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 172
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 175
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/DrxController;->SUPPORTED_CYCLES:[I

    return-object p0
.end method

.method public blacklist getSupportedModesForKodiak()[I
    .locals 0

    .line 427
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->canUseKodiakEpttApi()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 428
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 431
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/DrxController;->SUPPORTED_CYCLES:[I

    return-object p0
.end method

.method public blacklist getUwbTimers()[I
    .locals 3

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    .line 347
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUwbTimers - phone is null for subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", returning default 3 timer values."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/16 p0, 0x3c

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 352
    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    return-object p0

    .line 356
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUwbTimers()[I

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimers@controller. phone numTimers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist hasCall(Ljava/lang/String;)Z
    .locals 5

    .line 104
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 107
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->hasCallForPhone(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    .line 115
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->hasCall(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 119
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCall - phone is null for subscription: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist isGbaSupported()Z
    .locals 1

    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->isGbaSupportedForSubscriber(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isGbaSupportedForSubscriber(I)Z
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->isGbaSupported()Z

    move-result p0

    return p0

    .line 537
    :cond_0
    const-string p1, "isGbaSupported phone is null for Subscription"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setDefaultSmsApplicationByForce(Ljava/lang/String;)Z
    .locals 7

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Requires SEND_SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SemPhoneSubInfoController"

    if-eqz v2, :cond_1

    .line 597
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 599
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 604
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultSmsApplicationByForce is called. package= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingUid= "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userId= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 609
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneSubInfoController;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    throw p0

    .line 615
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setDefaultSmsApplicationByForce is restricted. package= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setDrxMode(I)Z
    .locals 3

    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    .line 266
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DrxController;->setDrxMode(I)Z

    move-result p0

    return p0

    :cond_0
    if-eqz v1, :cond_1

    .line 271
    const-string p1, "setDrxMode - No DrxController"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDrxMode - phone is null for subscription: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setPcoValue(IILjava/lang/String;)V
    .locals 0

    .line 647
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->enforceModifyPermission()V

    .line 649
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 651
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/Phone;->setPcoValue(I)V

    return-void

    .line 653
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPcoValue phone is null for subscription:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setUwbTimers([I)Z
    .locals 2

    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->enforceModifyPermission()V

    .line 330
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    .line 331
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwbTimers - phone is null for subscription: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->setUwbTimers([I)Z

    move-result p0

    return p0
.end method
