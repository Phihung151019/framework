.class public Lcom/android/internal/telephony/SmsController;
.super Lcom/android/internal/telephony/ISmsImplBase;
.source "SmsController.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mVendorApiLevel:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/ISmsImplBase;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/internal/telephony/SmsController;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p1, p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->register(Landroid/os/IBinder;)V

    .line 96
    :cond_0
    const-string p1, "ro.vendor.api_level"

    sget p2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SmsController;->mVendorApiLevel:I

    return-void
.end method

.method private blacklist enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1307
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x11c2f5c6

    .line 1312
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1311
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/internal/telephony/SmsController;->mVendorApiLevel:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_1

    goto :goto_0

    .line 1320
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.hardware.telephony.messaging"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1322
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->enforceSMSFeature()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 1324
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

.method public static blacklist formatCrossStackMessageId(J)Ljava/lang/String;
    .locals 2

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{x-message-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCallingPackage()Ljava/lang/String;
    .locals 2

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 239
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    aget-object p0, p0, v1

    return-object p0

    .line 239
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private greylist-max-r getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 0

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getIccSmsInterfaceManagerWithoutSIM(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 5

    .line 1353
    const-string v0, " For subscription :"

    const-string v1, "Exception is :"

    const-string v2, "getIccSmsInterfaceManagerWithoutSIM"

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v2

    .line 1357
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7fffffff

    :cond_0
    const/4 v2, 0x0

    .line 1363
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 1369
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-object v2

    .line 1365
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method private static blacklist getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;
    .locals 3

    .line 836
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 839
    const-string v1, "enabledTransID"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 837
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 842
    const-string v1, "enabledMMS"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 840
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 845
    const-string v1, "enableGroupMms"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 843
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 848
    const-string v1, "enabledNotifyWapMMSC"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 846
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 851
    const-string v1, "aliasEnabled"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 849
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 854
    const-string v1, "allowAttachAudio"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 852
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    const-string v1, "enableMultipartSMS"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 855
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 860
    const-string v1, "enableSMSDeliveryReports"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 858
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 863
    const-string v1, "supportMmsContentDisposition"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 861
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    const-string v1, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 864
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 869
    const-string v1, "enableMMSReadReports"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 872
    const-string v1, "enableMMSDeliveryReports"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 870
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 875
    const-string v1, "mmsCloseConnection"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 873
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 878
    const-string v1, "maxMessageSize"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 876
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 881
    const-string v1, "maxImageWidth"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 879
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    const-string v1, "maxImageHeight"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 882
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 887
    const-string v1, "recipientLimit"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 885
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    const-string v1, "aliasMinChars"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 888
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 893
    const-string v1, "aliasMaxChars"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 896
    const-string v1, "smsToMmsTextThreshold"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 899
    const-string v1, "smsToMmsTextLengthThreshold"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 897
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 902
    const-string v1, "maxMessageTextSize"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 903
    const-string v1, "maxSubjectLength"

    .line 905
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 903
    const-string v2, "maxSubjectLength"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 906
    const-string v1, "httpSocketTimeout"

    .line 908
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 906
    const-string v2, "httpSocketTimeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 909
    const-string v1, "uaProfTagName"

    .line 911
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 909
    const-string v2, "uaProfTagName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v1, "userAgent"

    .line 914
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    const-string v2, "userAgent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v1, "uaProfUrl"

    .line 917
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    const-string v2, "uaProfUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v1, "httpParams"

    .line 920
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 918
    const-string v2, "httpParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v1, "emailGatewayNumber"

    .line 923
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 921
    const-string v2, "emailGatewayNumber"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v1, "naiSuffix"

    .line 926
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    const-string v2, "naiSuffix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v1, "config_cellBroadcastAppLinks"

    .line 929
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 927
    const-string v2, "config_cellBroadcastAppLinks"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 930
    const-string v1, "supportHttpCharsetHeader"

    .line 932
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 930
    const-string v1, "supportHttpCharsetHeader"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 101
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_0

    .line 103
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private blacklist getSmsPermissions(I)Lcom/android/internal/telephony/SmsPermissions;
    .locals 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 111
    new-instance v0, Lcom/android/internal/telephony/SmsPermissions;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/internal/telephony/SmsPermissions;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;)V

    return-object v0
.end method

.method private blacklist getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 1181
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v0, "telephony_subscription_service"

    .line 1182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 1183
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isBluetoothSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist sendBluetoothText(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7

    .line 349
    new-instance v0, Lcom/android/internal/telephony/BtSmsInterfaceManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/BtSmsInterfaceManager;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    move-object v6, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method private blacklist sendDataForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 11

    .line 221
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    .line 223
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataWithSelfPermissions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void

    .line 227
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    move-object/from16 v8, p9

    .line 229
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private greylist-max-r sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 17

    if-eqz p1, :cond_1

    .line 1136
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1138
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x2

    .line 1139
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    .line 1141
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1142
    const-string v1, "SendNextMsg"

    const/4 v3, 0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    const-string v1, "LastSentMsg"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    const-string v1, "SmsController"

    if-eqz v2, :cond_0

    .line 1145
    :try_start_1
    const-string v3, "sendErrorInPendingIntent send with option"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    .line 1146
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1149
    :cond_0
    const-string v2, "sendErrorInPendingIntent is null but send"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move/from16 v11, p2

    .line 1150
    invoke-virtual/range {v9 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private greylist-max-r sendErrorInPendingIntents(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1165
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1166
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist sendIccText(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZ)V
    .locals 16

    move/from16 v0, p1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextForSubscriber iccSmsIntMgr Subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static/range {p10 .. p11}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v3, "SmsController"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    .line 360
    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZ)V

    return-void

    .line 364
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTextForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static/range {p10 .. p11}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, p7

    .line 366
    invoke-direct {v1, v10, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private blacklist sendTextForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 11

    .line 374
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    .line 376
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithSelfPermissions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    return-void

    .line 380
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    move-object/from16 v7, p8

    .line 382
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method


# virtual methods
.method public blacklist checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-nez p2, :cond_0

    .line 1017
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 1019
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkSmsShortCodeDestination"

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1023
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 1025
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p0, p4, p5}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    throw p0
.end method

.method public blacklist clearStorageMonitorMemoryStatusOverride(I)V
    .locals 3

    .line 989
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 992
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 999
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    .line 1005
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1007
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->clearMemoryStatusOverride()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1010
    throw p0

    .line 1002
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "clearStorageMonitorMemoryStatusOverride needs MODIFY_PHONE_STATE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 994
    :cond_1
    const-string p0, "SmsController"

    const-string p1, "Phone Object is Null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-r copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .locals 0

    if-nez p2, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 141
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result p0

    return p0

    .line 143
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyMessageToIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 953
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 956
    :cond_0
    const-string v0, "createAppSpecificSmsToken"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/AppSmsManager;->createAppSpecificSmsToken(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 940
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 943
    :cond_0
    const-string v0, "createAppSpecificSmsTokenWithPackageInfo"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AppSmsManager;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r disableCellBroadcastForSubscriber(III)Z
    .locals 0

    .line 542
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/SmsController;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r disableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 2

    .line 550
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCellBroadcastRangeForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "sms_not_receive_cmas_without_sim"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManagerWithoutSIM(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    goto :goto_0

    .line 560
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 564
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    move-result p0

    return p0

    .line 566
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v1, "SmsController"

    invoke-static {v0, v1, p2}, Lcom/android/internal/telephony/util/TelephonyUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1118
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1120
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 1121
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 1122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "SmsManager for subId = %d:"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1124
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1125
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1127
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public greylist-max-r enableCellBroadcastForSubscriber(III)Z
    .locals 0

    .line 508
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/SmsController;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r enableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 2

    .line 516
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCellBroadcastRangeForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "sms_not_receive_cmas_without_sim"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManagerWithoutSIM(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    goto :goto_0

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 530
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    move-result p0

    return p0

    .line 532
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 159
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAllMessagesFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;
    .locals 3

    .line 811
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCarrierConfigValuesForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 816
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 818
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 819
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SmsController;->getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 822
    throw p0
.end method

.method public blacklist getCbSettingsForSubscriber(I)[B
    .locals 2

    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "sms_not_receive_cmas_without_sim"

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManagerWithoutSIM(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    goto :goto_0

    .line 1386
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1390
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getCbSettings()[B

    move-result-object p0

    return-object p0

    .line 1392
    :cond_1
    const-string p0, "SmsController"

    const-string p1, "getCbSettings iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .locals 0

    .line 697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 701
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "getImsSmsFormatForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getMnoNameForSubscriber(I)Ljava/lang/String;
    .locals 0

    .line 1741
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getMnoName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1745
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "getMnoNameForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getPreferredSmsSubscription()I
    .locals 4

    .line 732
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultSmsSubId()I

    move-result v0

    .line 734
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPreferredSmsSubscription"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 743
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    const/4 v2, 0x1

    .line 744
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object p0

    .line 745
    array-length v3, p0

    if-ne v3, v2, :cond_1

    const/4 v2, 0x0

    .line 746
    aget p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    throw p0
.end method

.method public blacklist getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1

    .line 574
    const-string v0, "getPremiumSmsPermission"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SmsController;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .locals 0

    .line 581
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 583
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 585
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "getPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSMSPAvailableForSubscriber(I)Z
    .locals 0

    .line 1338
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1340
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSPAvailable()Z

    move-result p0

    return p0

    .line 1342
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "getSMSAvailable iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSmsCapacityOnIccForSubscriber(I)I
    .locals 2

    .line 1191
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSmsCapacityOnIccForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsCapacityOnIcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1199
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getSmsSettingForSubscriber(ILjava/lang/String;)Z
    .locals 0

    .line 1756
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1758
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1760
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "getSmsSettingForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 1074
    :cond_0
    const-string v0, "getSmscAddressFromIccEfForSubscriber"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1080
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSmscAddressFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getWapMessageSize(Ljava/lang/String;)J
    .locals 0

    .line 1296
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 1297
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushCache;->getWapMessageSize([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    .line 709
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "injectSmsPduForSubscriber"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 713
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 715
    :cond_0
    const-string p1, "SmsController"

    const-string p2, "injectSmsPduForSubscriber iccSmsIntMgr is null"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 717
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public greylist-max-r isImsSmsSupportedForSubscriber(I)Z
    .locals 0

    .line 613
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result p0

    return p0

    .line 617
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "isImsSmsSupportedForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist isMsgBlockedForOneNumberServiceForSubscriber(I)Z
    .locals 0

    .line 1771
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1773
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isMsgBlockedForOneNumberService()Z

    move-result p0

    return p0

    .line 1775
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "isOneNumberServiceForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TELCEL_MX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SmsController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1242
    const-string p0, "FDN Number check skipped in Telcel Mexico"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1246
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1247
    invoke-static {v0}, Lcom/android/internal/telephony/FdnUtils;->isFdnEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 1252
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SmsController;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsTelephonyCalling(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 1253
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    .line 1254
    invoke-virtual {v3, p2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    .line 1259
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    invoke-static {v0, p2, v2}, Lcom/android/internal/telephony/FdnUtils;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    return v3

    .line 1265
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1270
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmscAddressFromIccEf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1281
    invoke-static {v0, p0, v2}, Lcom/android/internal/telephony/FdnUtils;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1272
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    throw p0

    .line 1275
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSmscAddressFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public blacklist isSMSPromptEnabled()Z
    .locals 0

    .line 762
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSMSPromptEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist isSmsSimPickActivityNeeded(I)Z
    .locals 6

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_3

    .line 636
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "isSmsSimPickActivityNeeded"

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string p0, "phone"

    .line 639
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 664
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 666
    :try_start_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_2

    .line 672
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 675
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_0

    .line 676
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v5, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    .line 684
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_2

    .line 685
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result p0

    if-le p0, p1, :cond_2

    return p1

    :cond_2
    return v2

    :catchall_0
    move-exception p0

    .line 668
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    throw p0

    .line 631
    :cond_3
    const-string p0, "SmsController"

    const-string p1, "isSmsSimPickActivityNeeded: calling process not foreground. Suppressing activity."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist resetAllCellBroadcastRanges(I)Z
    .locals 2

    .line 1212
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetAllCellBroadcastRanges"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->resetAllCellBroadcastRanges()V

    const/4 p0, 0x1

    return p0

    .line 1220
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist resetSimFullStatusForSubscriber(I)V
    .locals 0

    .line 1402
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->resetSimFullStatus()V

    return-void

    .line 1406
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "resetSimFullStatus iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-r sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 174
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SmsController;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10

    move-object/from16 v8, p8

    if-nez p2, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDataForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object p2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 192
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    .line 194
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 199
    :cond_1
    invoke-virtual {p0, p1, p4, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 200
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 204
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 210
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendDataForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 213
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendDatawithOrigPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10

    move-object/from16 v8, p8

    if-nez p2, :cond_0

    .line 1589
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1591
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDatawithOrigPortForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1596
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1595
    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x21

    .line 1598
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1603
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 1604
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1607
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1609
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDatawithOrigPort(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 1612
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendDatawithOrigPort iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1614
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    move p2, p1

    .line 432
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultipartTextForSubscriber caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 439
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 438
    invoke-static {v1, p2, v3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    iget-object p3, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 441
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    .line 440
    invoke-static {p3, p2, p4, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    .line 442
    invoke-direct {p0, p7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 446
    :cond_0
    const-string v1, "sendMultipartTextForSubscriber"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0, p2, p4, p1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x6

    .line 450
    invoke-direct {p0, p7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    :cond_1
    move-object v1, p0

    .line 454
    invoke-direct {v1, p2}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 456
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual/range {p0 .. p11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    return-void

    .line 460
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sendMultipartTextForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {p10, p11}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 462
    invoke-direct {v1, p7, p0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public blacklist sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v4, p4

    move-object/from16 v7, p7

    if-nez p2, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 474
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMultipartTextForSubscriberWithOptions caller="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SmsController"

    invoke-static {v5, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 480
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 479
    invoke-static {v3, v0, v6, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 481
    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 v0, 0x21

    .line 483
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 488
    :cond_1
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x6

    .line 489
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    :cond_2
    move v3, v0

    .line 493
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-wide/16 v13, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V

    return-void

    .line 499
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 501
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public blacklist sendMultipartTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v6, p6

    if-nez p2, :cond_0

    .line 1418
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1420
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultipartTextwithCBPForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1426
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1425
    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x21

    .line 1428
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 1433
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 1434
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 1437
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1439
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextwithCBP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 1442
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1442
    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1444
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public blacklist sendMultipartTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    move-object/from16 v6, p6

    if-nez p2, :cond_0

    .line 1517
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultipartTextwithOptionsForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1524
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1523
    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x21

    .line 1526
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 1531
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 1532
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    .line 1535
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1537
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextwithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V

    return-void

    .line 1540
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMultipartText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1541
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public blacklist sendOTADomesticForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    .line 1455
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1457
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOTADomesticForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1463
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendOTADomestic(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1465
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendOTADomesticForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 790
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    .line 791
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 793
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredMultipartText caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 800
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    move-object v4, p2

    move p2, p1

    move-object p1, v4

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 803
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 805
    invoke-direct {v0, p6, p0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void

    :cond_1
    move-object p1, p2

    .line 794
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendStoredMultipartText: Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5

    move-object v0, p0

    .line 769
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    .line 770
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 771
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredText caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 778
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    move-object v4, p2

    move p2, p1

    move-object p1, v4

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 781
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendStoredText iccSmsIntMgr is null for subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 782
    invoke-direct {v0, p6, p0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_1
    move-object p1, p2

    .line 772
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendStoredText: Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendTextAutoLoginForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9

    if-nez p2, :cond_0

    .line 1706
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1708
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextAutoLoginForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1712
    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x21

    .line 1715
    invoke-direct {p0, p6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1720
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 1721
    invoke-direct {p0, p6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1724
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1726
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextAutoLogin(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void

    .line 1729
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendTextAutoLoginForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1731
    invoke-direct {p0, p6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    .line 250
    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/telephony/SmsController;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZZ)V

    return-void
.end method

.method public blacklist sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZZ)V
    .locals 15

    move/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    move/from16 v9, p9

    if-nez p2, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    .line 283
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextForSubscriber caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p12, :cond_1

    if-eqz p13, :cond_2

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 295
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getSmsPermissions(I)Lcom/android/internal/telephony/SmsPermissions;

    move-result-object v2

    const-string v5, "Sending SMS message"

    move-object/from16 v7, p3

    invoke-virtual {v2, v9, v0, v7, v5}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_3

    .line 297
    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 304
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendTextForSubscriber: caller has INTERACT_ACROSS_USERS_FULL? "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_5

    if-nez v5, :cond_6

    .line 307
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 309
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 308
    invoke-static {v2, v1, v3, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 311
    invoke-static {v2, v1, v3, v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 v0, 0x21

    .line 313
    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_6
    if-nez p12, :cond_7

    .line 318
    invoke-virtual {p0, v1, v4, v0}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x6

    .line 319
    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 323
    :cond_7
    const-string v2, "sendTextForSubscriber"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 328
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 330
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsController;->isBluetoothSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    .line 331
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsController;->sendBluetoothText(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 333
    :cond_8
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p13

    move-object v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/telephony/SmsController;->sendIccText(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw p0

    .line 292
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires MODIFY_PHONE_STATE permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 13

    move-object/from16 v4, p4

    move-object/from16 v7, p7

    if-nez p2, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 394
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextForSubscriberWithOptions caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 399
    invoke-static {v0, p1, v3, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object p2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 401
    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    .line 403
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 408
    :cond_1
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 409
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 413
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 415
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    return-void

    .line 419
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 421
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendTextNSRIForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 10

    move-object/from16 v6, p6

    if-nez p2, :cond_0

    .line 1666
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1668
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextNSRIForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1674
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1673
    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x21

    .line 1676
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1681
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 1682
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1685
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1688
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextNSRI(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    return-void

    .line 1691
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendTextNSRIForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1693
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 10

    move-object/from16 v6, p6

    if-nez p2, :cond_0

    .line 1553
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1555
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextwithCBPForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1560
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1559
    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x21

    .line 1562
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1567
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 1568
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1571
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1573
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextwithCBP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void

    .line 1576
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1576
    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1578
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 12

    move-object/from16 v6, p6

    if-nez p2, :cond_0

    .line 1479
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 1481
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextwithOptionsForSubscriber caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmsController"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1486
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1485
    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x21

    .line 1488
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1493
    :cond_1
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    .line 1494
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 1497
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1500
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextwithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    return-void

    .line 1503
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendTextwithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1504
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendTextwithOptionsReadconfirmForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 13

    move-object/from16 v6, p6

    .line 1625
    const-string v0, "sendTextwithOptionsForSubscriber in UiccSmsController with confirmId"

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 1627
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 1629
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextwithOptionsForSubscriber with confirmId caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1634
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1633
    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 p1, 0x21

    .line 1636
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_1
    move-object/from16 v3, p3

    .line 1641
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/internal/telephony/SmsController;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x6

    .line 1642
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_2
    move-object v2, v0

    .line 1645
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1648
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v1, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextwithOptionsReadconfirm(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    return-void

    .line 1651
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendTextwithOptionsReadconfirm iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1653
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public blacklist sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 12

    move/from16 v1, p4

    move/from16 v0, p6

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVisualVoicemailSmsForSubscriber caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    const-string p0, "sendVisualVoicemailSmsForSubscriber: Do not send non-emergency SMS in ECBM as it forces device to exit ECBM."

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1048
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1049
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v5, p5

    .line 1048
    invoke-static {v2, v1, v3, v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    iget-object p2, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    .line 1051
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1050
    invoke-static {p2, v1, p3, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    const/16 p1, 0x21

    move-object/from16 v8, p8

    .line 1052
    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_1
    move-object/from16 v8, p8

    if-nez v0, :cond_2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v7, p7

    .line 1057
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SmsController;->sendTextForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    return-void

    .line 1061
    :cond_2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v7, p7

    invoke-virtual {v7, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    int-to-short v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v1, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p8

    .line 1062
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/SmsController;->sendDataForSubscriberWithSelfPermissionsInternal(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1

    .line 593
    const-string v0, "setPremiumSmsPermission"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SmsController;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    return-void
.end method

.method public blacklist setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void

    .line 606
    :cond_0
    const-string p0, "SmsController"

    const-string p1, "setPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    if-nez p3, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    .line 1096
    :cond_0
    const-string v0, "setSmscAddressOnIccEfForSubscriber"

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/SmsController;->enforceTelephonyFeatureWithException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1101
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setSmscAddressOnIccEf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1103
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setSmscAddressOnIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setStorageMonitorMemoryStatusOverride(IZ)V
    .locals 3

    .line 963
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 973
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    .line 979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 981
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SmsStorageMonitor;->sendMemoryStatusOverride(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 984
    throw p0

    .line 976
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "setStorageMonitorMemoryStatusOverride needs MODIFY_PHONE_STATE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 968
    :cond_1
    const-string p0, "SmsController"

    const-string p1, "Phone Object is Null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-r updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .locals 0

    if-nez p2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsController;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 124
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result p0

    return p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateMessageOnIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
