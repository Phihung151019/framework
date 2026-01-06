.class public Lcom/android/internal/telephony/data/DataAllowPopup;
.super Ljava/lang/Object;
.source "DataAllowPopup.java"


# static fields
.field public static final blacklist INTENT_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final blacklist REASON_APMMODE_OFF:Ljava/lang/String; = "apmModeOff"

.field public static final blacklist REASON_COUNTRY_KOR:Ljava/lang/String; = "countryKor"

.field public static final blacklist REASON_DATA_ATTACHED:Ljava/lang/String; = "attachedExtra"

.field public static final blacklist REASON_DATA_TARIFF:Ljava/lang/String; = "dataTariff"

.field public static final blacklist REASON_OFF_BYPOLICY:Ljava/lang/String; = "offByPolicy"

.field public static final blacklist REASON_OPERATOR_KTT:Ljava/lang/String; = "operatorKtt"

.field public static final blacklist REASON_POPUP_PRESSED:Ljava/lang/String; = "popupPressed"

.field public static final blacklist REASON_PROMPT_ROAMING:Ljava/lang/String; = "promptRoaming"

.field public static final blacklist REASON_TSS_2DOT0:Ljava/lang/String; = "tss2dot0"

.field public static final blacklist SETUPWIZARD_SETTING_URI:Landroid/net/Uri;

.field public static final blacklist TELEPHONY_CMD_ALLOW_DATA_POPUP_CREATE:Ljava/lang/String; = "allow_data_popup_create"

.field public static final blacklist TELEPHONY_URI_TELEPHONYUI_INTERNAL:Landroid/net/Uri;


# instance fields
.field private blacklist mBootCompleted:Z

.field private final blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private blacklist mDeferredDataAllowPopup:Z

.field private blacklist mIsWifiAvailable:Z

.field private final blacklist mLogTag:Ljava/lang/String;

.field private blacklist mNeedDataAllowPopup:Z

.field private blacklist mNeedRoamingDataAllowPopup:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mWaitingForUserPress:Z

.field private blacklist mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mWifiValidateStatus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataAllowPopup;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsWifiAvailable(Lcom/android/internal/telephony/data/DataAllowPopup;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mIsWifiAvailable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiValidateStatus(Lcom/android/internal/telephony/data/DataAllowPopup;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/DataAllowPopup;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Lcom/android/internal/telephony/data/DataAllowPopup;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->sendMessage(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 89
    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataAllowPopup;->TELEPHONY_URI_TELEPHONYUI_INTERNAL:Landroid/net/Uri;

    .line 94
    const-string v0, "content://settings/secure/user_setup_complete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataAllowPopup;->SETUPWIZARD_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedDataAllowPopup:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWaitingForUserPress:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDeferredDataAllowPopup:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mBootCompleted:Z

    .line 102
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

    .line 103
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

    .line 116
    iput v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mContentResolver:Landroid/content/ContentResolver;

    .line 122
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method private blacklist compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_6

    .line 301
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return v0

    .line 308
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 312
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return p2

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    .line 308
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v2

    :try_start_9
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_1
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    :try_start_b
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_3
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_d
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 313
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_6
    return v0
.end method

.method private blacklist decideToRequest(Ljava/lang/String;)Z
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNeedDataAllowPopup()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 455
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWaitingForUserPress()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 458
    const-string v0, "XEC"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->supportDataTariffForTSS()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 471
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 472
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataKnoxUtils;->isDataRoamingEnabledFromKnox(Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 473
    const-string p1, "data roaming enabled form knox false"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v2

    .line 477
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setWaitingForUserPress(Z)V

    .line 478
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x4207c

    .line 479
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->sendMessage(I)V

    .line 480
    const-string p1, "deferring ACTION_DATA_SELECTION_POPUP"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setWaitingForUserPress(Z)V

    if-eqz p1, :cond_5

    .line 460
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 461
    const-string p1, "android.intent.action.ACTION_DATA_SELECTION_POPUP_FOR_EUR"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->sendStickyBroadcastIntent(Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setTariffProperties(Ljava/lang/String;)V

    .line 464
    const-string p1, "ACTION_DATA_SELECTION_POPUP_FOR_EUR"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_5
    const-string p1, "Already display tariff so Skip to send"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    .line 484
    :cond_6
    :goto_1
    const-string p1, "not allowed"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v2

    .line 487
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->unregisterNetworkCallback()V

    .line 488
    const-string p1, "DataAllowPopup, allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 489
    const-string p1, "allowed"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist getCountryName()Ljava/lang/String;
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getCountryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getMainOperatorName()Ljava/lang/String;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 599
    new-instance v0, Lcom/android/internal/telephony/data/DataAllowPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataAllowPopup$1;-><init>(Lcom/android/internal/telephony/data/DataAllowPopup;)V

    return-object v0
.end method

.method private blacklist getSalesCode()Ljava/lang/String;
    .locals 0

    .line 908
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSettingsGlobalInt(Ljava/lang/String;I)I
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/SemDataUtils;->getSettingsGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private blacklist getSimOperatorNumericForPhone()Ljava/lang/String;
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    .line 889
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/data/SemDataUtils;->getSimOperatorNumericForPhone(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 924
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemDataUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/SemDataUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTelephonyPropertyFromDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/SemDataUtils;->getTelephonyPropertyFromDefault(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized blacklist getWifiNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private blacklist getWwanPsRegiState()I
    .locals 2

    .line 759
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 760
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 763
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private blacklist isDataEnabledWhileWaitingPress(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;Lcom/android/internal/telephony/data/DataEvaluation;)Z
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isSetupWizardCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWaitingForUserPress()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 245
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->ROAMING_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 247
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 248
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "while waiting for press, data enabled from setting, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setWaitingForUserPress(Z)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist isDeferredDataAllowPopup()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDeferredDataAllowPopup:Z

    return p0
.end method

.method private blacklist isDesignatedSimState(Ljava/lang/String;)Z
    .locals 0

    .line 369
    const-string p0, "activating"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "activated"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "deactivating"

    .line 370
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private blacklist isLegacyCs(I)Z
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist isNecessary(I)Z
    .locals 7

    const/16 v0, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 339
    :goto_1
    const-string v3, "KOR"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const-string v3, "SKT"

    .line 341
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    :cond_2
    move v0, v1

    .line 345
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSimOperatorNumericForPhone()Ljava/lang/String;

    move-result-object p1

    .line 346
    const-string v3, "persist.sys.softsim.status"

    const-string v4, "default"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/data/DataAllowPopup;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    const-string v4, "gsm.sim.state"

    const-string v5, "ABSENT"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/data/DataAllowPopup;->getTelephonyPropertyFromDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->needPopupForCurrentCarrier()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isPromptDataRoaming()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-nez v0, :cond_5

    .line 351
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataAllowPopup;->isDesignatedSimState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 352
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 353
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "none"

    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "00101"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "NONE"

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "SUP"

    .line 357
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method private blacklist isNecessary(Lcom/android/internal/telephony/data/DataEvaluation;)Z
    .locals 0

    .line 363
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 364
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 365
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

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

.method private blacklist isPossible()Z
    .locals 7

    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getWwanPsRegiState()I

    move-result v0

    .line 375
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWifiDefault()Z

    move-result v1

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isSetupWizardCompleted()Z

    move-result v2

    .line 377
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isVoldDecrypt()Z

    move-result v3

    .line 379
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getWifiNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "false"

    goto :goto_0

    :cond_0
    const-string v4, "true"

    .line 380
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataAllowPopup, possible? wwanState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", voldDecrypt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", wifiDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", wifiAvailable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mIsWifiAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", setupWizard="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isStateInService(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 387
    const-string v0, "not in service state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v4

    :cond_1
    if-eqz v3, :cond_2

    .line 393
    const-string v0, "decrypt"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v4

    :cond_2
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 397
    iget v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 401
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetupWizard is on-going via Wifi, validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataAllowPopup, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->registerNetworkCallback()V

    return v4

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isRepairBootMode()Z
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 285
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 287
    invoke-static {v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boot user : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRestrictedByUserManager()Z
    .locals 1

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 555
    const-string v0, "no_config_mobile_networks"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSilentBootMode(Z)Z
    .locals 5

    .line 258
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    const-string p1, "silentboot? T-SafetyMode"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    .line 264
    :cond_0
    const-string v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    const-string v2, "AUTO_INSTALL"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const-string p1, "silentboot? fota "

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    .line 270
    :cond_1
    const-string v0, "sys.reset_reason"

    const-string v2, "UNKNOWN"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v2, "P|EX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "P|NT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "P|WD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "P|SF"

    .line 272
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "P|SR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silentboot? reset due to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 274
    const-string v0, "mobile_data_allow_pressed_roam"

    goto :goto_0

    :cond_3
    const-string v0, "mobile_data_allow_pressed_home"

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silientboot? data popup pressed already pressed, roaming="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v1

    .line 279
    :cond_4
    const-string p1, "DataAllowPopup, silentboot? noisy"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    return v3
.end method

.method private blacklist isStateInService(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    .line 569
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 571
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 572
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->isLegacyCs(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return p1
.end method

.method private varargs blacklist isTelephonyFeatureCountrySpecific([Ljava/lang/String;)Z
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/data/SemDataUtils;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isTss2()Z
    .locals 3

    .line 199
    const-string v0, "mdc.singlesku"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    const-string v2, "mdc.unified"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 202
    :cond_1
    :goto_0
    const-string v0, "DataTariff - Not Supoort TSS 2.0"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isVoldDecrypt()Z
    .locals 3

    .line 559
    const-string v0, "vold.decrypt"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    .line 560
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private blacklist isWifiDefault()Z
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 579
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 581
    const-string v0, "DataAllowPopup, cm null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    return v1

    .line 584
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_1

    .line 586
    const-string v0, "DataAllowPopup, activeNetwork null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    return v1

    .line 589
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_2

    .line 591
    const-string v0, "DataAllowPopup, nc null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    .line 594
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xc

    .line 595
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return p0

    :cond_3
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 959
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist processKorOperators()V
    .locals 2

    .line 543
    const-string v0, "KOR"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWaitingForUserPress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    const-string v0, "mobile_data_question"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 547
    const-string v0, "mobile_data_question off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 548
    const-string v1, "countryKor"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist processKttMainOperator()V
    .locals 2

    .line 530
    const-string v0, "KTT"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 537
    const-string v1, "operatorKtt"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    .line 538
    const-string v0, "needRoamingPopup false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist processPromptDataRoaming()V
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isPromptDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "CHINA not support allow popup"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 525
    const-string v1, "promptRoaming"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist processTariffForTss2dot0(Ljava/lang/String;)V
    .locals 2

    .line 511
    const-string v0, "XEC"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->supportDataTariffForTSS()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->initDataAllowPopupForTariffChange()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 515
    const-string v0, "tss2dot0"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    .line 517
    const-string p1, "needPopup/needRoamingPopup false, TSS2.0\""

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerNetworkCallback()V
    .locals 3

    .line 691
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getWifiNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setWifiNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 697
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 701
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 702
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 703
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 704
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 705
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getWifiNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x2

    .line 706
    iput v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wifi, register networkCallback, validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiValidateStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataAllowPopup, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private blacklist requestDataAllowPopupToUi()V
    .locals 4

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DATA_SELECTION_POPUP sent, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", roaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 879
    const-string v0, "mobile_data_allow_pressed_roam"

    goto :goto_0

    :cond_0
    const-string v0, "mobile_data_allow_pressed_home"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setSettingsGlobalInt(Ljava/lang/String;I)V

    .line 881
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 882
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "slotId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/data/DataAllowPopup;->TELEPHONY_URI_TELEPHONYUI_INTERNAL:Landroid/net/Uri;

    const-string v2, "allow_data_popup_create"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private blacklist sendMessage(I)V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist sendMessageDelayed(IJ)V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist sendStickyBroadcastIntent(Ljava/lang/String;)V
    .locals 1

    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist setDataDisabled()V
    .locals 2

    .line 231
    const-string v0, "device_provisioning_mobile_data"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setSettingsGlobalInt(Ljava/lang/String;I)V

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "DataAllowPopup"

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist setDataSettingsDisabledIfEnabled()V
    .locals 4

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isSetupWizardCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataDisabledIfEnabled, roaming, enabled ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 810
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabled(Z)V

    return-void

    .line 813
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataDisabledIfEnabled, home, enabled ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 814
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    .line 815
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 816
    const-string p0, "DataAllowPopup"

    invoke-virtual {v0, v2, v2, p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist setSettingsGlobalInt(Ljava/lang/String;I)V
    .locals 0

    .line 932
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private blacklist setTariffProperties(Ljava/lang/String;)V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDataUtils()Lcom/android/internal/telephony/data/SemDataUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.tariffpolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/data/SemDataUtils;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setWifiNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private blacklist supportDataTariffForTSS()Z
    .locals 5

    .line 210
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isTss2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 213
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "CarrierFeature_Common_CarrierGroup"

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataTariff - current carrierGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->log(Ljava/lang/String;)V

    .line 216
    const-string p0, "XEC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 936
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 937
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataAllowPopup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 939
    const-string p2, "logs  :"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 942
    const-string p2, "events:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 944
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 946
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method blacklist eventLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 954
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataAllowEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-object p1
.end method

.method blacklist initDataAllowPopupForTariffChange()V
    .locals 2

    .line 221
    const-string v0, "init DataAllowPopup for tariff change"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->log(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDataDisabled()V

    .line 223
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setTariffProperties(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 224
    const-string v1, "dataTariff"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setWaitingForUserPress(Z)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    return-void
.end method

.method blacklist isBootCompleted()Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mBootCompleted:Z

    return p0
.end method

.method public blacklist isNecessary(ILcom/android/internal/telephony/data/DataEvaluation;)Z
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataAllowPopup, necessary? apnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disallowed_reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataEvaluation;->containsDisallowedReasons()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", home_data_disabled?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 326
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roam_data_disabled?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 327
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/data/DataEvaluation;->contains(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNecessary(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNecessary(Lcom/android/internal/telephony/data/DataEvaluation;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isNeedDataAllowPopup()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedDataAllowPopup:Z

    return p0
.end method

.method blacklist isNeedRoamingDataAllowPopup()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    return p0
.end method

.method blacklist isPromptDataRoaming()Z
    .locals 3

    .line 194
    const-string v0, "HKG"

    const-string v1, "TPE"

    const-string v2, "CHN"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isTelephonyFeatureCountrySpecific([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected blacklist isSetupWizardCompleted()Z
    .locals 2

    .line 728
    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method blacklist isWaitingForUserPress()Z
    .locals 0

    .line 161
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWaitingForUserPress:Z

    return p0
.end method

.method blacklist localLog(Ljava/lang/String;)V
    .locals 0

    .line 950
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataAllowPopupLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist needPopupForCurrentCarrier()Z
    .locals 2

    .line 186
    const-string v0, "KOR"

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "XEC"

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->supportDataTariffForTSS()Z

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

.method blacklist onBootCompleted()V
    .locals 1

    .line 871
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    const v0, 0x4207d

    .line 872
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->sendMessage(I)V

    return-void
.end method

.method blacklist onCheckBootCompleted()V
    .locals 5

    .line 823
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWifiDefault()Z

    move-result v0

    .line 824
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v1

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isBootCompleted()Z

    move-result v2

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DATA_POPUP_CHECK_BOOT_COMPLETED, deferred:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", booted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", wifi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    const-string v0, "@check sys.boot_completed : 1"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    .line 831
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->setBootCompleted(Z)V

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const v0, 0x42081

    if-eqz v2, :cond_2

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    .line 842
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDataSettingsDisabledIfEnabled()V

    .line 843
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->requestDataAllowPopupToUi()V

    return-void

    .line 847
    :cond_2
    const-string v1, "check.boot_completed after 1"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v1, 0x3e8

    .line 848
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->sendMessageDelayed(IJ)V

    return-void
.end method

.method blacklist onDataAllowPopupSendible()V
    .locals 3

    .line 852
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_DATA_POPUP_REQUEST_SENDIBLE, deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", booted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isBootCompleted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wifi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWifiDefault()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 853
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    .line 858
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setBootCompleted(Z)V

    if-nez v0, :cond_0

    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    const v1, 0x42081

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    .line 866
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDataSettingsDisabledIfEnabled()V

    .line 867
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->requestDataAllowPopupToUi()V

    return-void
.end method

.method blacklist onDeferDataAllowPopup()V
    .locals 5

    .line 773
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWifiDefault()Z

    move-result v0

    .line 774
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v1

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isBootCompleted()Z

    move-result v2

    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DEFER_DATA_ALLOW_POPUP_REQUEST, deferred:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", booted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", wifi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 783
    :cond_0
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 784
    const-string v0, "@defer, sys.boot_completed : 1"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    .line 785
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setBootCompleted(Z)V

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 790
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDataSettingsDisabledIfEnabled()V

    .line 791
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->requestDataAllowPopupToUi()V

    return-void

    .line 795
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    .line 796
    const-string v0, "check.boot_completed after 1"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    const v0, 0x42081

    const-wide/16 v1, 0x3e8

    .line 797
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->sendMessageDelayed(IJ)V

    return-void
.end method

.method blacklist requestDataAllowPopup(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;Lcom/android/internal/telephony/data/DataEvaluation;)Z
    .locals 7

    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isPossible()Z

    move-result v0

    const-string v1, "reason="

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not possible"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    return v2

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.sys.tariffpolicy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needHome="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNeedDataAllowPopup()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needRoaming="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wait="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWaitingForUserPress()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defer="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isDeferredDataAllowPopup()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", boot="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isBootCompleted()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roaming="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tariff="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 425
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", question="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mobile_data_question"

    const/4 v5, 0x1

    .line 426
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repair="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isRepairBootMode()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", restrict="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isRestrictedByUserManager()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", home_pressed="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mobile_data_allow_pressed_home"

    .line 429
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roam_pressed="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mobile_data_allow_pressed_roam"

    .line 430
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataAllowPopup, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->localLog(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->processKorOperators()V

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->processKttMainOperator()V

    .line 437
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->processPromptDataRoaming()V

    .line 439
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->processTariffForTss2dot0(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataAllowPopup;->isSilentBootMode(Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isRepairBootMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isRestrictedByUserManager()Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataAllowPopup;->isDataEnabledWhileWaitingPress(Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;Lcom/android/internal/telephony/data/DataEvaluation;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 450
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->decideToRequest(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 443
    :cond_2
    :goto_0
    const-string p1, "offByPolicy"

    if-eqz v3, :cond_3

    .line 444
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_3
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    :goto_1
    return v5
.end method

.method blacklist setBootCompleted(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mBootCompleted:Z

    return-void
.end method

.method blacklist setDeferredDataAllowPopup(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mDeferredDataAllowPopup:Z

    return-void
.end method

.method blacklist setNeedDataAllowPopup(ZLjava/lang/String;)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedDataAllowPopup:Z

    if-eq v0, p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDataAllowPopup change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->log(Ljava/lang/String;)V

    .line 132
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedDataAllowPopup:Z

    .line 135
    :cond_0
    const-string p1, "popupPressed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 136
    const-string p2, "mobile_data_allow_pressed_home"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 137
    const-string p1, "mobile_data_allow_pressed_home set to 1"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 138
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setSettingsGlobalInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method blacklist setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    if-eq v0, p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRoamingDataAllowPopup change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->log(Ljava/lang/String;)V

    .line 150
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mNeedRoamingDataAllowPopup:Z

    .line 153
    :cond_0
    const-string p1, "popupPressed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 154
    const-string p2, "mobile_data_allow_pressed_roam"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->getSettingsGlobalInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 155
    const-string p1, "mobile_data_allow_pressed_roam set to 1"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->eventLog(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 156
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setSettingsGlobalInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method blacklist setWaitingForUserPress(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mWaitingForUserPress:Z

    return-void
.end method

.method blacklist unregisterNetworkCallback()V
    .locals 2

    .line 714
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getWifiNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataAllowPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 718
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 722
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->getWifiNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 723
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->setWifiNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 724
    const-string v0, "DataAllowPopup, Wifi, unregister networkCallback"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->loge(Ljava/lang/String;)V

    return-void
.end method
