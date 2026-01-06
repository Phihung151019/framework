.class public Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;
.super Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
.source "SemEmergencyNumberTracker.java"


# static fields
.field public static final blacklist SIM_ECC_ACTION_ADD:I = 0x1

.field public static final blacklist SIM_ECC_ACTION_RESET:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemEmergencyNumberTracker"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEmergencyNumberListFromVendorDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyNumberListSimLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mEmergencyNumberListWithHighPriority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mLastEmergencyNumberListFromRil:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

.field private final blacklist mLastEmergencyNumberListFromSim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

.field private blacklist mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

.field private blacklist mUseAospDatabase:Z

.field private blacklist mVendorDatabasePlmn:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$yRtK_Ro7UFbW7hNitu5vAkDxu2Y(Landroid/telephony/emergency/EmergencyNumber;)Z
    .locals 1

    .line 319
    const-string v0, "127"

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEmergencyNumberListVendorDatabaseAndNotify(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberListVendorDatabaseAndNotify(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p2, 0x0

    .line 97
    iput-boolean p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mUseAospDatabase:Z

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    .line 103
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    .line 105
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListSimLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 108
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    .line 112
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    const/4 p2, 0x0

    .line 117
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mVendorDatabasePlmn:Ljava/lang/String;

    .line 119
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    .line 121
    new-instance p2, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;-><init>(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mContext:Landroid/content/Context;

    .line 143
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object p3, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 p2, 0x65

    .line 146
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 150
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 151
    const-string p3, "android.hardware.telephony"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 152
    const-string p2, "No Telephony device. Force sync emegency number list after 1 min"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/16 p2, 0x67

    .line 153
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string p2, "HKG"

    const-string p3, "TPE"

    const-string v0, "CHN"

    filled-new-array {v0, p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mUseAospDatabase:Z

    .line 158
    :cond_1
    const-string p1, "SemEmergencyNumberTracker is created"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cacheEmergencyNumberListFromRil(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

    monitor-enter v0

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 808
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 809
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist cacheEmergencyNumberListFromSim(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 827
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 828
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist cacheVendorEmergencyDatabase()V
    .locals 7

    .line 420
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isWithSim()Z

    move-result v0

    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    .line 425
    iget v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COB"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "732"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    const-string v1, "cacheVendorEmergencyDatabase - Use 112, 123, 911 in Colombia"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 428
    const-string v1, "732000"

    .line 432
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getOperatorNumericFromOtherPhones()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheVendorEmergencyDatabase - Get operator numeric from other phone. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    move-object v1, v3

    .line 444
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 445
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    .line 446
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v4, :cond_7

    .line 447
    :cond_3
    const-string v3, "CHN"

    const-string v4, "HKG"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 448
    const-string v1, "cacheVendorEmergencyDatabase - Use default operatorNumeric for CHN, HKG"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 449
    const-string v1, "460"

    goto :goto_1

    .line 450
    :cond_4
    const-string v3, "TPE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 451
    const-string v1, "cacheVendorEmergencyDatabase - Use default operatorNumeric for TPE"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 452
    const-string v1, "466"

    goto :goto_1

    .line 453
    :cond_5
    const-string v3, "52505"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isLatinAllowedFB(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 454
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheVendorEmergencyDatabase - Use default operatorNumeric for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    move-object v1, v2

    .line 459
    :cond_7
    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/telephony/SemEmergencyNumberTable;->emergencyNumbersForPlmn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 461
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mVendorDatabasePlmn:Ljava/lang/String;

    .line 464
    const-string v4, "VZW"

    const-string v5, "USC"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 465
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->overrideVendorEmergencyDatabaseForUsaCdma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    :cond_8
    const-string v4, "DSG"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",*67911"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cacheVendorEmergencyDatabase - withSim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Network: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", SIM: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ecclistFromDatabase: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    return-void
.end method

.method private static blacklist checkSimInserted(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isSimOn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;
    .locals 9

    .line 643
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 647
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 648
    aget-object v2, p0, v0

    .line 652
    array-length v1, p0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 654
    :try_start_0
    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 658
    :goto_0
    array-length v4, p0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowedAndEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 659
    const-string v4, "E"

    aget-object v6, p0, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v1

    move v8, v3

    goto :goto_2

    .line 660
    :cond_1
    const-string v3, "N"

    aget-object p0, p0, v5

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v8, v5

    :goto_1
    move v5, v1

    goto :goto_2

    :cond_2
    move v8, v0

    goto :goto_1

    :cond_3
    move v5, v0

    move v8, v5

    .line 664
    :goto_2
    new-instance v1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    move-object v3, p1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object v1
.end method

.method private static blacklist convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 629
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 630
    invoke-static {v3, p1, p2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 632
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static blacklist emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 888
    const-string p0, "NO_EMERGENCYNUMBERLIST"

    return-object p0

    .line 891
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyLogUtils;->emergencyNumberToString(Landroid/telephony/emergency/EmergencyNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 895
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_2

    .line 896
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 899
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getBasicEccNumbersOfUsaCdma()Ljava/lang/String;
    .locals 1

    .line 508
    const-string v0, "VZW"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string p0, "911,*272911"

    return-object p0

    .line 511
    :cond_0
    const-string v0, "ACG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isSubOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    const-string p0, "911,#911,*911"

    return-object p0

    .line 514
    :cond_1
    const-string v0, "USC"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isSubOperatorSpecific([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 515
    const-string p0, "911,#911,*911,*272911"

    return-object p0

    .line 517
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getMergedEmergencyNumberListFromRadio()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromRil()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 782
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 786
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 788
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 792
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "getMergedEmergencyNumberListFromRadio - RADIO: "

    .line 793
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", (SIM: "

    .line 794
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", RIL: "

    .line 795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromRil()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 796
    const-string v2, ", NET_TEST: 1)"

    goto :goto_1

    :cond_1
    const-string v2, ")"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist getNetworkTypeCapabilityTestData()Ljava/lang/String;
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object p0

    .line 954
    invoke-static {p0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-object p0

    .line 958
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private blacklist getOperatorNumericFromOtherPhones()Ljava/lang/String;
    .locals 6

    .line 745
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 746
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    if-eq v4, v5, :cond_0

    .line 747
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 748
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isValidOperatorNumeric(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatorNumericFromOtherPhones - getPhones is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private varargs blacklist isCountrySpecific([Ljava/lang/String;)Z
    .locals 2

    .line 926
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->isCountrySpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 930
    :cond_0
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 903
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isLatinAllowedFB(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 942
    const-string v0, "71610"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "730"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "724"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "732"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 943
    :cond_0
    const-string p1, "isLatinAllowedFB - true"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private varargs blacklist isMainOperatorSpecific([Ljava/lang/String;)Z
    .locals 2

    .line 910
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 912
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->isMainOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 914
    :cond_0
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isSimOn(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone1_on"

    goto :goto_0

    :cond_0
    const-string v0, "phone2_on"

    .line 706
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private varargs blacklist isSubOperatorSpecific([Ljava/lang/String;)Z
    .locals 2

    .line 918
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->isSubOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 922
    :cond_0
    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isValidOperatorNumeric(Ljava/lang/String;)Z
    .locals 0

    .line 934
    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x5

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isWithSim()Z
    .locals 8

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 718
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v1

    :goto_0
    if-ge v1, v3, :cond_2

    :try_start_1
    aget-object v5, v2, v1

    .line 719
    const-string v6, "phone["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {v5}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->checkSimInserted(Lcom/android/internal/telephony/Phone;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, ") "

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    .line 723
    :try_start_2
    const-string v6, "SimPresent(subId: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    .line 725
    :cond_0
    const-string v6, "SimAbsent(subId: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    invoke-static {v5}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isSimOn(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 727
    const-string v5, ", SIM OFF"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    move v4, v1

    move-object v1, v2

    .line 733
    :goto_2
    const-string v2, "getPhones is fail. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWithSim - result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return v4
.end method

.method private blacklist loadTestEmergencyNumber(Z)V
    .locals 5

    .line 844
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->test_emer_num()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTestEmergencyNumber - withReset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cachedNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 847
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 848
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->validateEmergencyNumberAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    const-string p1, "loadTestEmergencyNumber - Invalid emergency number"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 854
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 858
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 864
    const-string p1, "***"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "###"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 866
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/0/E"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 868
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/0/N"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 865
    :cond_4
    :goto_0
    const-string p1, "loadTestEmergencyNumber - Invalid routing code"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :cond_5
    move-object p1, v0

    .line 871
    :goto_1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTestEmergencyNumber - number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :cond_6
    move-object v0, p1

    :cond_7
    const/16 p1, 0x20

    .line 876
    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberFromEccNumber(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p1

    const/4 v0, 0x1

    .line 877
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V

    return-void

    :cond_8
    if-eqz p1, :cond_9

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 879
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V

    :cond_9
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 3

    .line 962
    sget-object v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

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

    .line 966
    sget-object v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist overrideVendorEmergencyDatabaseForKorea()V
    .locals 9

    .line 522
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->skipOverrideForKorea()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "000"

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 534
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 544
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "450"

    const-string v4, "112/1,911/4,119/4,122/8"

    const-string v5, "KOO"

    const-string v6, "SKT"

    const-string v7, "LGT"

    if-eqz v1, :cond_2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 546
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 561
    :cond_3
    const-string v4, "112/1,911/4,119/4,118/19,122/8,113/3,125/9,111/7,117/18"

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x188

    .line 562
    invoke-static {v4, v1, v8}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 565
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isWithSim()Z

    move-result v8

    if-nez v8, :cond_8

    .line 567
    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 569
    iget-object v5, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->setHighPriorityForValidCategory(Ljava/util/List;Ljava/util/List;)V

    .line 572
    :cond_4
    iput-object v4, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    .line 574
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioPowerState()I

    move-result v4

    if-eqz v4, :cond_6

    .line 575
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 576
    :cond_6
    const-string v0, "000/4,08/4,110/4,999/4,119/4,118/4"

    const/16 v2, 0x88

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 578
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_2
    return-void

    .line 582
    :cond_8
    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->setHighPriorityForValidCategory(Ljava/util/List;Ljava/util/List;)V

    .line 585
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist overrideVendorEmergencyDatabaseForUsaCdma(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 492
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getBasicEccNumbersOfUsaCdma()Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private blacklist setHighPriorityForValidCategory(Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    .line 593
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 594
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 595
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    if-eqz v5, :cond_1

    .line 596
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_1

    const/16 v5, 0x100

    .line 597
    invoke-virtual {v4, v5}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 598
    new-instance v7, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v10

    .line 599
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v11

    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v12

    .line 600
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v6

    or-int/lit16 v13, v6, 0x100

    .line 601
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v14

    invoke-direct/range {v7 .. v14}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 598
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 608
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method private blacklist skipOverrideForKorea()Z
    .locals 3

    .line 613
    iget v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 615
    const-string v2, "kr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "00101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isWithSim()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateEmergencyNumberListVendorDatabaseAndNotify(Z)V
    .locals 3

    .line 402
    const-string v0, "updateEmergencyNumberListVendorDatabaseAndNotify"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheVendorEmergencyDatabase()V

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmergencyNumberListVendorDatabaseAndNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void

    :cond_0
    const/16 p1, 0x68

    .line 412
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private blacklist updatePlmnOtherPhones()V
    .locals 8

    .line 387
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 388
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    .line 390
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    if-eq v6, v7, :cond_0

    if-eqz v5, :cond_0

    .line 391
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePlmnOtherPhones - Update emergency number list of phone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 393
    invoke-direct {v5, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberListVendorDatabaseAndNotify(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlmnOtherPhones - getPhones is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 325
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemEmergencyNumberTracker["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VendorDatabase PLMN: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mVendorDatabasePlmn:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PLMN: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", OtherPhones PLMN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getOperatorNumericFromOtherPhones()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 331
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALL: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VDB: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RADIO: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- SIM: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- RIL: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromRil()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 341
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- NET_TEST: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIGH(KOR): "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    :cond_2
    const-string p2, "mEmergencyNumberListSimLocalLog:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 349
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListSimLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 351
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 354
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Test Value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getNetworkTypeCapabilityTestData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    iget p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhoneId:I

    if-nez p1, :cond_3

    .line 358
    const-string p1, "Emergency number list:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mContext:Landroid/content/Context;

    const-class p1, Landroid/telephony/TelephonyManager;

    .line 360
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    .line 361
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  subId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", EmergencyNumber: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 369
    const-string p0, " ========================================= "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 235
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loadTestEmergencyNumber(Z)V

    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V

    return-void
.end method

.method public blacklist getLastEmergencyNumberListFromRil()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRilLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromRil:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 818
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getLastEmergencyNumberListFromSim()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSimLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mLastEmergencyNumberListFromSim:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 837
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 227
    invoke-super {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 223
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void

    .line 212
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    const-string p1, "EVENT_UPDATE_EMPTY_EMERGENCY_NUMBER_LIST: Update emergency number list because it\'s empty"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 215
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_UPDATE_EMPTY_EMERGENCY_NUMBER_LIST: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void

    .line 218
    :cond_0
    const-string p1, "EVENT_UPDATE_EMPTY_EMERGENCY_NUMBER_LIST: Ignore it because emergency number list is not empty"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void

    .line 198
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    const-string v0, "EVENT_PRECISE_CALL_STATE_CHANGED: Update emergency number list"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 206
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PRECISE_CALL_STATE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->notifyEmergencyNumberList()V

    :cond_2
    return-void

    .line 191
    :pswitch_3
    const-string p1, "EVENT_POST_INIT"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheVendorEmergencyDatabase()V

    const/4 p1, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loadTestEmergencyNumber(Z)V

    return-void

    .line 167
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 168
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 169
    const-string p1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Result from RIL is null."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 178
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_5

    .line 179
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheEmergencyNumberListFromRil(Ljava/util/List;)V

    .line 182
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getMergedEmergencyNumberListFromRadio()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 183
    invoke-super {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 185
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Exception from RIL : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist handleSimEcc(ILjava/lang/String;)V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListSimLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimEcc - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eccNumbersFromSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimEcc - action: ADD, eccNumbersFromSim: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 680
    const-string p1, "KDI"

    const-string v2, "RKT"

    const-string v3, "DCM"

    filled-new-array {v3, p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x102

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLastKnownEmergencyCountryIso()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->convertEmergencyNumberListFromEccNumbers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 686
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleSimEcc - action: RESET, oldSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->getLastEmergencyNumberListFromSim()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 691
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->cacheEmergencyNumberListFromSim(Ljava/util/List;)V

    .line 699
    new-instance p1, Landroid/os/AsyncResult;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v1, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 700
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 693
    :cond_3
    const-string p1, "handleSimEcc - action: UNKNOWN"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist notifyEmergencyNumberList()V
    .locals 3

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyEmergencyNumberList()V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEmergencyNumberList - notified. VDB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 248
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RADIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    .line 249
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HIGH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    .line 250
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ALL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->emergencyNumberListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEmergencyNumberList - failure: Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public blacklist simulateNetworkEmergencyNumber(Ljava/lang/String;)V
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->isVendorTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simulateNetworkEmergencyNumber - testNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 767
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mNetworkEmergencyNumberFromTestMode:Ljava/lang/String;

    .line 769
    new-instance p1, Landroid/os/AsyncResult;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 770
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 772
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simulateNetworkEmergencyNumber - Ignored. testNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist updateEmergencyNumberList()V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isDialingOrAlerting(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    const-string v0, "KOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->overrideVendorEmergencyDatabaseForKorea()V

    .line 283
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListFromVendorDatabase:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    iget-boolean v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mUseAospDatabase:Z

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 295
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-boolean v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mUseAospDatabase:Z

    if-eqz v2, :cond_3

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    :cond_3
    sget-boolean v2, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v2, :cond_4

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmergencyNumberList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 307
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->mEmergencyNumberListWithHighPriority:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->shouldDeterminingOfUrnsAndCategoriesWhileMergingIgnored()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    invoke-static {v1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    .line 313
    invoke-static {v1, v2}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;Z)V

    .line 315
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    .line 318
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void

    .line 269
    :cond_6
    :goto_1
    const-string v1, "Block emergency number list update during dialing or alerting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    if-eqz v0, :cond_7

    .line 272
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public blacklist updatePlmnAllPhones()V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlmnAllPhones - Update emergency number list when PLMN is changed. operator numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updateEmergencyNumberListVendorDatabaseAndNotify(Z)V

    .line 382
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->updatePlmnOtherPhones()V

    return-void
.end method
