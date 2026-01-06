.class public Lcom/android/internal/telephony/data/DataProfileManager;
.super Landroid/os/Handler;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;,
        Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_IMS_PREFERENCE_CHANGED:I = 0x5

.field public static final blacklist EVENT_SETUPWIZARD_COMPLETED:I = 0x6


# instance fields
.field private final blacklist INT_APN_SBM:Ljava/lang/String;

.field private final blacklist mAllDataProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedNetworkType:J

.field private blacklist mAllowedNetworkTypesListener:Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private final blacklist mDataProfileManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mInitialAttachDataProfileLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mLastInternetDataProfiles:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPreferredDataProfile:Landroid/telephony/data/DataProfile;

.field private blacklist mPreferredDataProfileSetId:I

.field private blacklist mSupportVolteRoaming:Z

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final blacklist mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

.field private blacklist prevWifiConnected:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$4EK-8xfqi3qEElC5zrMmqJT2jUo(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 1

    .line 796
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda35;-><init>(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 795
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5QodsIFugT70mKgdF8SrJYeq-Xk(Landroid/telephony/data/DataProfile;)Z
    .locals 1

    const/4 v0, 0x4

    .line 697
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$95J2KKMHiDTf0m-dNCktcKaaUrE(Landroid/telephony/data/DataProfile;)Z
    .locals 1

    const/16 v0, 0x1d

    .line 716
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Adv-Dz0heBP0-gtlIIz2hyZxSgE(Landroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 1840
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$CapODrC0S5CrFPaaHW--lbOpVOY(Landroid/telephony/data/ApnSetting;)V
    .locals 1

    const/4 v0, 0x0

    .line 1704
    invoke-virtual {p0, v0}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EKLcECPAraDCzF4MiNgrZQptdi8(Lcom/android/internal/telephony/data/DataProfileManager;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$canPreferredDataProfileSatisfy$15(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$JtC9MwyGRB9F3d_sQVhLkaJ9T4s(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Landroid/telephony/data/DataProfile;)V
    .locals 1

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$L1Ui3C035DIeVj7lNMv_db0LoD8(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$LyOCZIXOXwIYdECDuvaYBM5Hbvw(Lcom/android/internal/telephony/data/DataProfileManager;ILandroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getApnSettingForNetworkRequest$11(ILandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$PgqHiKhyjw4cHr4GptIIiKz5VE0(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateInitialAttachDataProfileAtModem$9(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Q3N1Ep_PryKqyHpMLL1l1qoJmQI(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getApnSettingForNetworkRequest$13(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$UxwtUbQcfz2bsuJ-dBq_Q37LEwk(Lcom/android/internal/telephony/data/DataProfileManager;Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$onInternetDataNetworkConnected$4(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ZMYCVgO0lK-vV6oYdqL3zjy1rLU(ILandroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 1075
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->apnTypeToNetworkCapability(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ZaxXS6dzQ-SmzVq9fCiKit2my0A(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$isDataProfileCompatible$17(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$a0-cekKivFkSyq_uIKG8wbQ1eUk(ZLandroid/telephony/data/DataProfile;)Z
    .locals 0

    if-nez p0, :cond_1

    .line 1432
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1433
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$aTgVAH9-J0QJAzDpYCPcOtNEVdk(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$isDataProfileCompatible$18(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$cdQft-TWGx7Je4AOwxnpskIzauM(ILandroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 905
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$jajFnQiGOj6Io42NMOZ_BQXmFy8(ILandroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 2563
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2564
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ma86Cz9ds-vAbusuiDaWV3CCP1U(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 1013
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->equalsExceptID(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qWc1z5D3CRfwPdOZpOP3xIPOJcM(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 2871
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qpTEmCHVD3WrDsUwYqrn5gkYNu8(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 1

    .line 2431
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 2430
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$up7IlUW73wh1c6TCPADyE6AWYeY(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 925
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    .line 925
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uzRwB9BLvNL-cBPpYGGp2MQWbKo(Landroid/telephony/data/DataProfile;)Z
    .locals 1

    const/16 v0, 0xa

    .line 729
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$vGWk7fGleSlrM4FVV22XS5PrlOY(ILjava/util/concurrent/atomic/AtomicBoolean;ZZLandroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 1394
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 1397
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1398
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 1401
    :cond_2
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isEsimBootstrapProvisioning()Z

    move-result p0

    if-eq p2, p0, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 1402
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    if-nez p3, :cond_6

    .line 1406
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    :cond_6
    :goto_1
    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xidk7ZVXZvuOeJ5_XDQdcNTM3LQ(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 2869
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2870
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedNetworkType(Lcom/android/internal/telephony/data/DataProfileManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkType:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataProfileManagerCallbacks(Lcom/android/internal/telephony/data/DataProfileManager;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataProfileManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprevWifiConnected(Lcom/android/internal/telephony/data/DataProfileManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->prevWifiConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowedNetworkType(Lcom/android/internal/telephony/data/DataProfileManager;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkType:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputprevWifiConnected(Lcom/android/internal/telephony/data/DataProfileManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->prevWifiConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitAllDataProfilesPermanentFail(Lcom/android/internal/telephony/data/DataProfileManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->initAllDataProfilesPermanentFail()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misResetPermanentNeededOperator(Lcom/android/internal/telephony/data/DataProfileManager;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->isResetPermanentNeededOperator()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mneedToRunLteRoaming(Lcom/android/internal/telephony/data/DataProfileManager;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->needToRunLteRoaming(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataProfileManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInternetDataNetworkConnected(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->onInternetDataNetworkConnected(Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataProfiles(Lcom/android/internal/telephony/data/DataProfileManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 9

    .line 254
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 167
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    const/4 p4, 0x0

    .line 171
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 175
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 179
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLastInternetDataProfiles:Landroid/util/LruCache;

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    .line 186
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    .line 218
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfileLog:Lcom/android/internal/telephony/LocalLog;

    const-wide/16 v2, -0x1

    .line 222
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkType:J

    .line 226
    const-string v2, "plus.acs.jp.v6"

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->INT_APN_SBM:Ljava/lang/String;

    const/4 v2, 0x1

    .line 230
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mSupportVolteRoaming:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->prevWifiConnected:Z

    .line 2339
    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$6;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/DataProfileManager$6;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DPM-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    .line 257
    iput-object p5, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 258
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 259
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    .line 260
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 261
    invoke-interface {v1, p6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p3

    .line 264
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 265
    new-instance p3, Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;

    invoke-direct {p3, p0, p4}, Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Lcom/android/internal/telephony/data/DataProfileManager-IA;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;

    .line 268
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p3

    new-instance p5, Lcom/android/internal/telephony/data/DataProfileManager$1;

    new-instance p6, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;

    invoke-direct {p6, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    invoke-direct {p5, p0, p6}, Lcom/android/internal/telephony/data/DataProfileManager$1;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V

    .line 269
    invoke-virtual {p3, p5}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 291
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    const-string p3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataAllowPopup()Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataAllowPopup;->needPopupForCurrentCarrier()Z

    move-result p3

    if-nez p3, :cond_0

    .line 298
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataAllowPopup()Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataAllowPopup;->isPromptDataRoaming()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 299
    :cond_0
    const-string p2, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string p2, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x2

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 309
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1, v2, p0, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    iget-object p1, v7, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p2, 0x5

    invoke-interface {p1, p0, p2, p4}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForImsPrefValue(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 318
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mSupportVolteRoaming:Z

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->registerAllEvents()V

    return-void
.end method

.method private blacklist bitmaskHasTech1xEvdo(I)Z
    .locals 0

    .line 1946
    invoke-static {p1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result p0

    xor-int/lit16 p0, p0, 0x8f8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;
    .locals 3

    const/16 v0, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p3, v0, :cond_2

    .line 1191
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->useV6OnlyEpdn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1192
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isTmoSim()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    move p0, v2

    move v2, v0

    goto :goto_2

    :cond_2
    move p0, v2

    .line 1205
    :goto_2
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 1206
    invoke-virtual {v0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p1

    .line 1207
    invoke-virtual {p1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p1

    .line 1208
    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 1209
    invoke-virtual {p0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 1210
    invoke-virtual {p0, p3}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 1211
    invoke-virtual {p0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    const/4 p1, -0x1

    .line 1212
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 1213
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method private blacklist checkApnSetting(Landroid/telephony/data/ApnSetting;)V
    .locals 4

    const/4 v0, 0x2

    .line 1535
    invoke-virtual {p1, v0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1536
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getEditedStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 1537
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "9af73e18-b523-4dc5-adab-ec754d959d4d"

    const-string v2, "^https?:\\/\\/.+"

    if-nez v0, :cond_0

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS is supported but no MMSC configured "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "9af73e18-b523-4dc5-adab-19d86c6a3685"

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apn config mmsc should start with http but is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1546
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apn config mmsc_proxy should NOT start with http but is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1547
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private blacklist checkDataProfiles(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1560
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1561
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1562
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getEditedStatus()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 1565
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1566
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 1567
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apn["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    int-to-long v3, v3

    .line 1569
    invoke-static {v3, v4}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " should be a subset of the lingering network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v3

    .line 1572
    invoke-static {v3, v4}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9af73e18-b523-4dc5-adab-4bb24355d838"

    .line 1568
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist checkDataProfilesIfBearerBitmaskhasTech(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/data/TelephonyNetworkRequest;",
            "II)",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation

    .line 2544
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_0

    .line 2549
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 2550
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 2551
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 2552
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkDataProfilesifBearerBitmaskhasTech: preferred dataprofile = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2556
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 2561
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    .line 2562
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda26;

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda26;-><init>(I)V

    .line 2563
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 2565
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2567
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/data/DataProfile;

    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDataProfilesifBearerBitmaskhasTech: perfectly matched dataprofile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private blacklist createDataProfile(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile;
    .locals 6

    .line 2057
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2060
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    const/16 v3, 0x11

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    .line 2064
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2065
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataProfileManager;->getApnProfileID(Ljava/lang/String;)I

    move-result v0

    .line 2068
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz p0, :cond_2

    .line 2069
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v2

    .line 2073
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 2077
    :cond_3
    invoke-static {v3}, Landroid/telephony/ServiceState;->bearerBitmapHasCdma(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    .line 2083
    :goto_2
    new-instance v4, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v4}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 2084
    invoke-virtual {v4, v0}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2085
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2086
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2087
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setAuthType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2088
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2089
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2090
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2091
    invoke-virtual {v0, p1}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    new-instance v2, Landroid/telephony/data/TrafficDescriptor;

    .line 2092
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2093
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile$Builder;->enable(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2094
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile$Builder;->setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2095
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile$Builder;->setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2096
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataProfile$Builder;->setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2097
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    goto :goto_3

    :cond_5
    const/16 v2, 0x5dc

    :goto_3
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile$Builder;->setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2098
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v2

    if-eq v2, v1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v1

    goto :goto_4

    :cond_6
    const/16 v1, 0x500

    :goto_4
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile$Builder;->setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2099
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/data/DataProfile$Builder;->setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 2100
    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 2101
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method private blacklist dedupeDataProfiles(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    .line 1499
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredApnIdForMerge()I

    move-result v0

    const/4 v1, 0x0

    .line 1502
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1503
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    add-int/lit8 v3, v1, 0x1

    move v4, v3

    .line 1505
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1506
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/DataProfile;

    .line 1511
    invoke-static {v2, v5, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->mergeDataProfiles(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;I)Landroid/telephony/data/DataProfile;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1514
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created a merged profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Merging data profiles will not be supported anymore. Please directly configure the merged profile "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in the APN config."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    .line 1519
    invoke-interface {p1, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1520
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist fetchBipProfile()Landroid/telephony/data/DataProfile;
    .locals 14

    .line 2584
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2586
    const-string v0, "fetchBipProfile: there is no default preferences"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1

    .line 2590
    :cond_0
    const-string v2, "bip.pref.enable"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2601
    const-string v4, "default,bip"

    const-string v5, ""

    if-eqz v2, :cond_5

    .line 2602
    const-string v2, "fetchBipProfile: BIP apn is enabled"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2603
    const-string v2, "bip.pref.apn"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2604
    const-string v6, "bip.pref.user"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2605
    const-string v7, "bip.pref.passwd"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2606
    const-string v8, "bip.pref.proxy"

    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2608
    iget-object v9, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v9, :cond_1

    .line 2609
    invoke-virtual {v9}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v1

    .line 2611
    :goto_0
    const-string v10, "bip"

    if-eqz v9, :cond_2

    .line 2612
    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v9

    .line 2613
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 2616
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2617
    iget-object v9, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/data/DataProfile;

    .line 2618
    invoke-virtual {v11}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 2619
    invoke-virtual {v11}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2620
    invoke-virtual {v11}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v11

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_4
    move-object v4, v10

    .line 2626
    :goto_1
    const-string v9, "bip.pref.protocol"

    .line 2627
    const-string v10, "IP"

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2626
    invoke-static {v9}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v9

    .line 2628
    const-string v11, "bip.pref.roaming_protocol"

    .line 2629
    invoke-interface {v0, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2628
    invoke-static {v10}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v10

    .line 2630
    const-string v11, "bip.pref.auth_type"

    invoke-interface {v0, v11, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 2632
    :cond_5
    const-string v0, "fetchBipProfile: copy default Apn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredApnForBip()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2635
    const-string v0, "fetchBipProfile: no default Apn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1

    .line 2638
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    .line 2639
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v6

    .line 2640
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 2641
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v8

    .line 2643
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v9

    .line 2644
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v10

    .line 2645
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v0

    .line 2647
    :goto_2
    new-instance v11, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v11}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    const/4 v12, -0x1

    .line 2648
    invoke-virtual {v11, v12}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v11

    .line 2649
    invoke-virtual {v11, v5}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v11

    const-string v13, "BipApn"

    .line 2650
    invoke-virtual {v11, v13}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v11

    .line 2651
    invoke-virtual {v11, v2}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2652
    invoke-virtual {v2, v8}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2653
    invoke-virtual {v2, v12}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2654
    invoke-virtual {v2, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2655
    invoke-virtual {v2, v5}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2656
    invoke-virtual {v2, v12}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2657
    invoke-virtual {v2, v6}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2658
    invoke-virtual {v2, v7}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v2

    .line 2659
    invoke-virtual {v2, v0}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2660
    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2661
    invoke-virtual {v0, v9}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2662
    invoke-virtual {v0, v10}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 2663
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2664
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    const/16 v2, 0x3eb

    .line 2665
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2666
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2667
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2668
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2669
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2670
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2671
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2672
    invoke-virtual {v0, v12}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2673
    invoke-virtual {v0, v5}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2674
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2675
    invoke-virtual {v0, v12}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2676
    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 2677
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2681
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2680
    :cond_7
    const-string v2, "null"

    .line 2683
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchBipProfile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2685
    new-instance p0, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p0}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 2686
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    new-instance v0, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v0, v2, v1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    .line 2687
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 2688
    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 2689
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getApnProfileID(Ljava/lang/String;)I
    .locals 1

    .line 1972
    const-string v0, "ims"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1974
    :cond_0
    const-string v0, "fota"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 1976
    :cond_1
    const-string v0, "cbs"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 1978
    :cond_2
    const-string v0, "ia"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x3ee

    return p0

    .line 1980
    :cond_3
    const-string v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 1983
    :cond_4
    const-string v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 1985
    :cond_5
    const-string v0, "hipri"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x7

    return p0

    .line 1987
    :cond_6
    const-string v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x6

    return p0

    .line 1989
    :cond_7
    const-string v0, "emergency"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x3e9

    return p0

    .line 1991
    :cond_8
    const-string v0, "bip"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x3eb

    return p0

    .line 1993
    :cond_9
    const-string v0, "xcap"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0xe

    return p0

    .line 1995
    :cond_a
    const-string v0, "rcs"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x3f1

    return p0

    .line 1997
    :cond_b
    const-string v0, "mcx"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x3f0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getApnSettingForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/ApnSetting;
    .locals 9

    const/4 v0, 0x1

    .line 1304
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1306
    const-string p1, "Network request does not have APN setting attribute."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-object v2

    .line 1311
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result v1

    .line 1310
    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result v1

    .line 1312
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfilesForApnType(II)Ljava/util/List;

    move-result-object v3

    .line 1313
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 1314
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0

    .line 1318
    :cond_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/16 v4, 0x11

    if-eq v1, v4, :cond_2

    .line 1320
    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->checkDataProfilesIfBearerBitmaskhasTech(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;II)Ljava/util/List;

    move-result-object v4

    .line 1322
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    if-nez p4, :cond_8

    .line 1331
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v4, :cond_8

    .line 1332
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 1333
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 1334
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p3, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 1335
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-nez p3, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 1337
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1340
    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 1341
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    if-nez p5, :cond_7

    .line 1343
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    .line 1344
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 1347
    :cond_6
    const-string p1, "The preferred data profile is permanently failed. Only condition based retry can happen."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 1345
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0

    .line 1358
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 1360
    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;I)V

    .line 1362
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;-><init>()V

    .line 1370
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1372
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1375
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getHasFailure()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1376
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda10;-><init>()V

    .line 1377
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1378
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1382
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataProfile;

    .line 1383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Satisfied profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", last setup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getLastSetupTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1383
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->logv(Ljava/lang/String;)V

    goto :goto_1

    .line 1386
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t find any data profile that can satisfy "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 1392
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2, v3, p4, p3}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    .line 1393
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1409
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1410
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t find any data profile for network type "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and infrastructure for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-static {p3}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetworkToString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 1418
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 1419
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1423
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1424
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find any data profile has APN set id matched. mPreferredDataProfileSetId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    .line 1431
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda13;

    invoke-direct {p2, p5}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda13;-><init>(Z)V

    .line 1432
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1434
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1435
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1436
    const-string p1, "The suitable data profiles are all in permanent failed state."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v2

    :cond_e
    if-eqz p4, :cond_f

    .line 1441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Found esim bootstrap provisioning data profile for network request: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/data/DataProfile;

    invoke-virtual {p3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1441
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1444
    :cond_f
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDataProfilesForApnType(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation

    .line 2506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2000

    if-ne p1, v1, :cond_1

    .line 2512
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->fetchBipProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2513
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2514
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "VZW"

    const-string v4, "USC"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 2516
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->is1xEvdo(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2517
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDataProfilesForApnType: X added Bip profile="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v1, 0x40

    if-ne p1, v1, :cond_3

    .line 2526
    const-string p1, "INS"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "INU"

    .line 2527
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2528
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->isPsOnlyTech(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xe

    if-eq p2, p1, :cond_3

    const/16 p1, 0x12

    if-eq p2, p1, :cond_3

    .line 2531
    const-string p1, "getDataProfilesForApnType: X not try IMS if not eHRPD, LTE, Wi-Fi"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private blacklist getEnterpriseDataProfile()Landroid/telephony/data/DataProfile;
    .locals 7

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 450
    const-string v0, "Cannot access APN database through telephony provider."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move-object p0, v1

    .line 455
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 458
    new-instance p0, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p0}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 459
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    new-instance v3, Landroid/telephony/data/TrafficDescriptor;

    .line 460
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 462
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    const/16 v2, 0x1d

    .line 463
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0
.end method

.method private blacklist getOperatorForCreateAllApnList(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2475
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2476
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v0

    .line 2477
    const-string v1, "SIMBASED_SSKU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SED"

    .line 2478
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SIMBASED_OMC"

    .line 2479
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OMC"

    .line 2480
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2485
    :cond_0
    const-string v0, "LRA operator customization - Using Sim numeric"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2481
    :cond_1
    :goto_0
    const-string p1, "LRA operator customization - SKU model GSM_APN_SIM_OPERATOR_NUMERIC"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2482
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "gsm.apn.sim.operator.numeric"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2489
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "ril.simoperator"

    const-string v1, "ETC"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2491
    const-string v0, "CTC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2492
    const-string p0, "46003"

    return-object p0

    .line 2493
    :cond_3
    const-string v0, "CTCMO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2494
    const-string p0, "45502"

    return-object p0

    .line 2495
    :cond_4
    const-string v0, "CTG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2496
    const-string p0, "45431"

    return-object p0

    :cond_5
    return-object p1
.end method

.method private blacklist getPreferredApnIdForMerge()I
    .locals 9

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2828
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2830
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2829
    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v8, "name ASC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2828
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2833
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2834
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2835
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2842
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 2839
    :goto_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredApnIdForMerge: Catch a SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2844
    :cond_1
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApnIdForMerge: preferredApnId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v1

    :goto_4
    if-eqz v2, :cond_2

    .line 2842
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2843
    :cond_2
    throw p0
.end method

.method private blacklist getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultPreferredApn()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 924
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 927
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 928
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/DataProfile;

    return-object p0

    :cond_0
    return-object v2
.end method

.method private blacklist getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;
    .locals 7

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 897
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 896
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "name ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 895
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 901
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 902
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 903
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 904
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda34;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda34;-><init>(I)V

    .line 905
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 907
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 908
    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 910
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 912
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredDataProfileFromDb: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist getPreferredDataProfileSetId()I
    .locals 7

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_SET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 808
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 807
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "apn_set_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 814
    const-string v0, "getPreferredDataProfileSetId: cursor is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v2

    .line 819
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 820
    const-string v0, "getPreferredDataProfileSetId: no APNs found"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 824
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 827
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method private blacklist initAllDataProfilesPermanentFail()V
    .locals 2

    .line 2851
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataProfile;

    .line 2852
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2853
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist isApnTypeIncludedInBitmask(II)Z
    .locals 0

    .line 0
    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isCdmaApn(I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1963
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->bitmaskHasTech1xEvdo(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isDefaultAndPreferredDataProfile(Landroid/telephony/data/DataProfile;)Z
    .locals 2

    .line 2166
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v0

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->isApnTypeIncludedInBitmask(II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2167
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isKddiApn(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2806
    :cond_0
    const-string v0, "uad5gn.au-net.ne.jp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "au5g.au-net.ne.jp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "unod.au-net.ne.jp"

    .line 2807
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "au.au-net.ne.jp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isKddiDunApn(Ljava/lang/String;)Z
    .locals 0

    .line 2814
    const-string p0, "uad5gntrg.au-net.ne.jp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "au5gtrg.au-net.ne.jp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "unitrg.au-net.ne.jp"

    .line 2815
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "autrg.au-net.ne.jp"

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

.method private blacklist isLTEModeEnabled()Z
    .locals 5

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLTEEnabled : mAllowedNetworkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkType:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkTypes : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v1, 0x41000

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2261
    iget-wide v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkType:J

    and-long v0, v3, v1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isMatchedDunApn(Landroid/telephony/data/DataProfile;)Z
    .locals 5

    .line 2769
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_0

    .line 2770
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2771
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2774
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isKddiApn(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 2775
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2776
    const-string v1, "uad5gn.au-net.ne.jp"

    const-string v4, "uad5gntrg.au-net.ne.jp"

    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2777
    const-string v1, "au5g.au-net.ne.jp"

    const-string v4, "au5gtrg.au-net.ne.jp"

    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2778
    const-string v1, "unod.au-net.ne.jp"

    const-string v4, "unitrg.au-net.ne.jp"

    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    const-string v1, "au.au-net.ne.jp"

    const-string v4, "autrg.au-net.ne.jp"

    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2781
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2782
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2783
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v2

    .line 2789
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2790
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2791
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->isKddiDunApn(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method private blacklist isPreferredApnMatchedExceptId(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .locals 2

    .line 2458
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2459
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2460
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p0

    .line 2461
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 2462
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    .line 2463
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    .line 2462
    invoke-virtual {p0, p2}, Landroid/telephony/data/ApnSetting;->equalsExceptID(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2464
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private blacklist isPsOnlyTech(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x13

    if-eq p1, p0, :cond_1

    const/16 p0, 0x14

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isResetPermanentNeededOperator()Z
    .locals 1

    .line 2859
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isLguSim()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->isKttSim()Z

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

.method private blacklist isSetDataProfileRequiredByModem(Landroid/telephony/data/DataProfile;)Z
    .locals 2

    .line 2158
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_EXYNOS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EUR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_MTK:Z

    if-eqz v0, :cond_2

    .line 2160
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->isDefaultAndPreferredDataProfile(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSetDataProfileRequiredByOperator(Landroid/telephony/data/DataProfile;)Z
    .locals 5

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2109
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->isVzwSim()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 2116
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isCellcomSim()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 2122
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "USC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2123
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ACG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 2127
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "KDI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2129
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->isDefaultAndPreferredDataProfile(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1

    .line 2133
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2134
    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v3, :cond_8

    .line 2135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "SBM"

    .line 2136
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "44020"

    .line 2137
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2138
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2139
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DEFAULT IMS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need to sync IMS(not default) APN for SBM, dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v2

    .line 2142
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-nez v0, :cond_7

    .line 2143
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "plus.acs.jp.v6"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need to sync INT APN for SBM, dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mPrefemPreferredDataProfile = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v2

    .line 2146
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->isDefaultAndPreferredDataProfile(Landroid/telephony/data/DataProfile;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need to sync Preffered APN for SBM, dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v2

    :cond_8
    return v1
.end method

.method private synthetic blacklist lambda$canPreferredDataProfileSatisfy$15(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 0

    .line 1467
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getApnSettingForNetworkRequest$11(ILandroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 1362
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->isMatchedDunApn(Landroid/telephony/data/DataProfile;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1363
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KDI"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$getApnSettingForNetworkRequest$13(Landroid/telephony/data/DataProfile;)Z
    .locals 2

    .line 1419
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1420
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1422
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$isDataProfileCompatible$17(Landroid/telephony/data/DataProfile;)Z
    .locals 2

    .line 1724
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1725
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1727
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$isDataProfileCompatible$18(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .locals 0

    .line 1728
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$onInternetDataNetworkConnected$4(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p1

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->canPreferredDataProfileSatisfy(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z

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

.method private synthetic blacklist lambda$updateInitialAttachDataProfileAtModem$9(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 1070
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 1777
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1785
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .locals 0

    .line 1801
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1802
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .locals 0

    .line 1793
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist mergeDataProfiles(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;I)Landroid/telephony/data/DataProfile;
    .locals 4

    .line 1593
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1600
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_b

    .line 1603
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting;->similar(Landroid/telephony/data/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 1606
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 1607
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    .line 1608
    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4

    .line 1616
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v3

    if-eq p2, v3, :cond_3

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v3

    if-ne p2, v3, :cond_4

    .line 1617
    :cond_3
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    goto :goto_0

    .line 1621
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1624
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    const/16 p2, 0x11

    .line 1625
    invoke-virtual {p1, p2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1626
    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1627
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1628
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1632
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1633
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object p2

    .line 1632
    :goto_1
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1634
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result p2

    if-ne p2, v2, :cond_7

    .line 1635
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result p2

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result p2

    .line 1634
    :goto_2
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1636
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object p2

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object p2

    :goto_3
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1637
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1638
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object p2

    .line 1637
    :goto_4
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1639
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result p2

    if-ne p2, v2, :cond_a

    .line 1640
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result p2

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result p2

    .line 1639
    :goto_5
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1641
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1642
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1643
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object p2

    .line 1642
    :goto_7
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1644
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result p2

    if-ne p2, v2, :cond_d

    .line 1645
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result p2

    goto :goto_8

    :cond_d
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result p2

    .line 1644
    :goto_8
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1646
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p2

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    or-int/2addr p2, v2

    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1647
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result p2

    if-gtz p2, :cond_e

    .line 1648
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result p2

    goto :goto_9

    :cond_e
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result p2

    .line 1647
    :goto_9
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1649
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result p2

    if-gtz p2, :cond_f

    .line 1650
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result p1

    goto :goto_a

    :cond_f
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result p1

    .line 1649
    :goto_a
    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1652
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1653
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1657
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1658
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 1659
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1660
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1661
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1662
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1663
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    .line 1664
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1665
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1666
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1667
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1668
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1669
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1670
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1671
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1672
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1673
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getInfrastructureBitmask()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 1674
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEsimBootstrapProvisioning()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setEsimBootstrapProvisioning(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 1676
    new-instance p1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 1679
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 1681
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1682
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_b
    return-object v1
.end method

.method private blacklist needToRunLteRoaming(I)Z
    .locals 8

    .line 2906
    const-string p0, "SKT"

    const-string v0, "KTT"

    const-string v1, "LGT"

    const-string v2, "KOO"

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 2910
    :cond_0
    const-string v3, "ril.simtype"

    const-string v5, ""

    invoke-static {p1, v3, v5}, Lcom/android/internal/telephony/SemTelephonyUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2912
    const-string v5, "2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2913
    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2914
    :cond_2
    const-string v1, "4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v7

    .line 2916
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2917
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    return v7

    :cond_6
    return v4
.end method

.method private blacklist onCarrierConfigUpdated()V
    .locals 3

    .line 419
    const-string v0, "Update data profiles due to carrier config updated."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "onDataConfigUpdated: updateCurrentCarrierInProvider"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 435
    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->registerAllowedNetworkTypesListener()V

    :cond_1
    return-void
.end method

.method private blacklist onDataConnectionAttached()V
    .locals 2

    .line 2437
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    const-string v0, "onDataConnectionAttached: updateApnForLteRoaming"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateApnForLteRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2441
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    .line 2444
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataAllowPopup()Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->needPopupForCurrentCarrier()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2445
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2446
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataAllowPopup()Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataAllowPopup;->isNeedRoamingDataAllowPopup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2447
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2448
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataAllowPopup()Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "attachedExtra"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist onImsPreferenceChanged(Landroid/os/Message;)V
    .locals 2

    .line 2715
    const-string v0, "EVENT_IMS_PREFERENCE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2716
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2717
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 2718
    check-cast p1, [I

    .line 2719
    array-length v0, p1

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    const/16 v0, 0xb

    .line 2720
    aget p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2721
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_IMS_PREFERENCE_CHANGED - mSupportVolteRoaming: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mSupportVolteRoaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportVolteRoaming: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2722
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mSupportVolteRoaming:Z

    if-eq p1, v0, :cond_1

    .line 2723
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mSupportVolteRoaming:Z

    .line 2725
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfilesAtModem()V

    :cond_1
    return-void

    .line 2728
    :cond_2
    const-string p1, "ImsPreference has wrong length"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-void

    .line 2732
    :cond_3
    const-string p1, "AsyncResult has wrong ImsPreference value"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onInternetDataNetworkConnected(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 841
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 842
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda32;-><init>()V

    .line 847
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda33;-><init>()V

    .line 848
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 849
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLastInternetDataProfiles:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_5

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isValidApnId(Landroid/telephony/data/DataProfile;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 870
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EUR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 872
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isPreferredApnMatchedExceptId(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInternetDataNetworkConnected: Set preferred dataProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 875
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 881
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInternetDataNetworkConnected: defaultProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " previous preferredDataProfile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " internetNetworks="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->logv(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 885
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private blacklist onSetupWizardCompleted()V
    .locals 1

    .line 2429
    const-string v0, "onSetupWizardCompleted: try postponed data networks by DataAllowPopup"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2430
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist registerAllEvents()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager$2;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$3;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager$3;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$4;

    invoke-direct {v2, p0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$4;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/DataAllowPopup;->SETUPWIZARD_SETTING_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$5;

    invoke-direct {v2, p0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$5;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist registerAllowedNetworkTypesListener()V
    .locals 2

    .line 2239
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2240
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->unregisterAllowedNetworkTypesListener()V

    .line 2241
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2243
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_0
    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1768
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 1769
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist setApnNeeded(Landroid/telephony/data/DataProfile;)Z
    .locals 3

    .line 2184
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2194
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isCdmaApn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2199
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v0

    const/16 v2, 0x200

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->isApnTypeIncludedInBitmask(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2205
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->isSetDataProfileRequiredByOperator(Landroid/telephony/data/DataProfile;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    .line 2209
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->isSetDataProfileRequiredByModem(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private blacklist setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V
    .locals 3

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredDataProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->ignoreForCDMA()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->isBipDataProfile(Landroid/telephony/data/DataProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 949
    sget-object v1, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 950
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 953
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 954
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 957
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "apn_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    return-void

    .line 943
    :cond_2
    :goto_0
    const-string p1, "setPreferredDataProfile: X Ignore DataProfile"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unregisterAllowedNetworkTypesListener()V
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2251
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllowedNetworkTypesListener:Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_0
    return-void
.end method

.method private blacklist updateDataProfiles(Z)V
    .locals 14

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    .line 587
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "EUR"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "persist.radio.multisim.config"

    .line 588
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "dsds"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_0

    .line 590
    const-string v1, "current = 1"

    :goto_0
    move-object v11, v1

    goto :goto_1

    .line 592
    :cond_0
    const-string v1, "current1 = 1"

    goto :goto_0

    :cond_1
    move-object v11, v5

    .line 597
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v1, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filtered/subId/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 599
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 598
    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x0

    const-string v13, "_id"

    const/4 v10, 0x0

    .line 597
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    .line 607
    const-string p1, "Cannot access APN database through telephony provider."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_2
    move v8, v6

    .line 611
    :cond_3
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 612
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 615
    iget-object v10, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->isEmergencyApn()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 616
    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v10

    if-eq v10, v3, :cond_4

    invoke-virtual {v9, v2}, Landroid/telephony/data/ApnSetting;->hasApnTypeExt(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 617
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "emergency type is added but it would not be used. apn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 618
    invoke-static {v9, v4}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/ApnSetting;

    move-result-object v9

    .line 629
    :cond_4
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/data/DataProfileManager;->createDataProfile(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile;

    move-result-object v10

    .line 631
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Added "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    const/16 v10, 0x11

    .line 634
    invoke-virtual {v9, v10}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v10

    or-int/2addr v8, v10

    .line 635
    iget-object v10, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/data/DataConfigManager;->isApnConfigAnomalyReportEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 636
    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getEditedStatus()I

    move-result v10

    if-nez v10, :cond_3

    .line 637
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/data/DataProfileManager;->checkApnSetting(Landroid/telephony/data/ApnSetting;)V

    goto :goto_2

    .line 641
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v8, :cond_6

    .line 644
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 645
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isApnConfigAnomalyReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 646
    const-string v1, "Carrier doesn\'t support internet."

    const-string v7, "9af73e18-b523-4dc5-adab-363eb6613305"

    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/data/DataProfileManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v7, 0x2

    if-eqz v1, :cond_7

    .line 653
    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    const/4 v8, -0x1

    .line 654
    invoke-virtual {v1, v8}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 655
    const-string v9, ""

    invoke-virtual {v1, v9}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 656
    const-string v10, "TempApn"

    invoke-virtual {v1, v10}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 657
    invoke-virtual {v1, v10}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {v1, v9}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 659
    invoke-virtual {v1, v8}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 660
    invoke-virtual {v1, v5}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 661
    invoke-virtual {v1, v9}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 662
    invoke-virtual {v1, v8}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 663
    invoke-virtual {v1, v9}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 664
    invoke-virtual {v1, v9}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 665
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 666
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 668
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 669
    invoke-virtual {v1, v4}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 670
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 671
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 672
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 673
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 674
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 675
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 676
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 677
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 678
    invoke-virtual {v1, v8}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 679
    invoke-virtual {v1, v9}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 680
    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 681
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 683
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 v10, 0x1b

    invoke-virtual {v9, v1, v10, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->getPreciseDataConnectionState(Landroid/telephony/data/ApnSetting;II)Landroid/telephony/PreciseDataConnectionState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    .line 686
    iget-object v8, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v9, v1, v10, v7}, Lcom/android/internal/telephony/data/DataNetworkController;->getPreciseDataConnectionState(Landroid/telephony/data/ApnSetting;II)Landroid/telephony/PreciseDataConnectionState;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    .line 694
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v8, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/IccCardConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 696
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v8, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda16;

    invoke-direct {v8}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda16;-><init>()V

    .line 697
    invoke-interface {v1, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 698
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 699
    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_8

    .line 701
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    const-string v8, "DEFAULT IMS"

    .line 702
    const-string v9, "ims"

    invoke-direct {p0, v8, v9, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 705
    invoke-virtual {v1, v7}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    new-instance v2, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v2, v9, v5}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    .line 707
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 701
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    const-string v1, "Added default IMS data profile."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 715
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda17;-><init>()V

    .line 716
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 717
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 718
    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_9

    .line 720
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getEnterpriseDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 722
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added enterprise profile "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 728
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda18;-><init>()V

    .line 729
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 730
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 731
    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_a

    .line 733
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    const-string v2, "DEFAULT EIMS"

    .line 734
    const-string v7, "sos"

    invoke-direct {p0, v2, v7, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    new-instance v2, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v2, v7, v5}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    .line 736
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    const/16 v2, 0x3e9

    .line 738
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 740
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 733
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    const-string v1, "Added default EIMS data profile."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 744
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->dedupeDataProfiles(Ljava/util/List;)V

    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isApnConfigAnomalyReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 747
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->checkDataProfiles(Ljava/util/List;)V

    .line 750
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data profiles. profiles = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    move v0, v6

    goto :goto_4

    .line 754
    :cond_d
    :goto_3
    const-string v1, "Data profiles changed."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 756
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 759
    iput-object v5, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    move v0, v4

    .line 764
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updatePreferredDataProfile()Z

    move-result v1

    or-int/2addr v0, v1

    .line 766
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileSetId()I

    move-result v1

    .line 767
    iget v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-eq v1, v2, :cond_e

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed preferred data profile set id to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 769
    iput v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    goto :goto_5

    :cond_e
    move v4, v0

    .line 775
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataProfiles: operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->getOperatorForCreateAllApnList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataProfiles: modified operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 780
    iget v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v1, :cond_f

    .line 781
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 782
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataProfiles: Mismatch of mPreferredApn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 784
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and operator= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 786
    iput v6, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    .line 787
    iput-object v5, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 791
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfilesAtModem()V

    .line 792
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateInitialAttachDataProfileAtModem(Z)V

    if-eqz v4, :cond_10

    .line 795
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda19;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_10
    return-void
.end method

.method private blacklist updateDataProfilesAtModem()V
    .locals 7

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 1126
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1127
    const-string v2, "[updateDataProfilesAtModem]: null apnsetting"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1130
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    const/4 v5, -0x1

    if-eq v3, v4, :cond_3

    .line 1131
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v3

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 1160
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v3, :cond_0

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDataProfilesAtModem]: APN set id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match the preferred set id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 1164
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1133
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->setApnNeeded(Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 1136
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDataProfilesAtModem]: need to syncProfile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1137
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "), isPreferred : "

    const-string v6, "[updateDataProfilesAtModem] add profile ("

    if-eqz v3, :cond_5

    const-string v3, "persist.radio.pcovalue"

    .line 1138
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    .line 1140
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 1141
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1143
    const-string v3, "[updateDataProfilesAtModem]: Sync APN2 disabled to modem if PCO 5"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->createDataProfileEnabled(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 1145
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1146
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1149
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1152
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1153
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1156
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1169
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataProfilesAtModem: set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data profiles."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1171
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    const/4 v2, 0x0

    .line 1170
    invoke-virtual {v1, v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V

    return-void
.end method

.method private blacklist updateInitialAttachDataProfileAtModem(Z)V
    .locals 7

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1057
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "JPN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1059
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "44010"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    const-string v1, "If it is DCM/DocomoSIM, it does not initialize MobileDataSetting of CP"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v3, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->setMobileDataSetting(ZZLandroid/os/Message;)V

    .line 1069
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 1070
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1071
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 1073
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getAllowedInitialAttachApnTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1074
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda28;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda28;-><init>(I)V

    .line 1075
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1076
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    .line 1077
    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataProfile;

    if-eqz v4, :cond_2

    .line 1083
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SBM"

    .line 1084
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "44020"

    .line 1085
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_4

    .line 1087
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1088
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update initialAttachProfile to preferred APN for SBM, preferred dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    :cond_4
    if-nez p1, :cond_5

    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1094
    :cond_5
    iput-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial attach data profile updated as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " or forceUpdateIa= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 1097
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1098
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    return-void

    .line 1100
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfileLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInitialAttachDataProfileAtModem: Xselected dp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1102
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCidManager()Lcom/android/internal/telephony/data/CidManager;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1103
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCidManager()Lcom/android/internal/telephony/data/CidManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/CidManager;->updateInitialAttachDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 1106
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1107
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    .line 1106
    invoke-virtual {p1, v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    return-void
.end method

.method private blacklist updatePreferredDataProfile()Z
    .locals 5

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->ignoreForCDMA()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 971
    const-string v0, "updatePreferredDataProfile: X Ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v1

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 978
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 979
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-nez v0, :cond_2

    .line 981
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 984
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 1006
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getAllDataNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda24;-><init>()V

    .line 1007
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 1009
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    .line 1010
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataNetwork;

    if-eqz v3, :cond_3

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda25;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1013
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1014
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 1015
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_4

    .line 1017
    const-string v2, "updatePreferredDataProfile - set ConnectedInternet DataProfile"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    goto :goto_1

    .line 1021
    :cond_3
    const-string v2, "updatePreferredDataProfile - No ConnectedInternetDataNetwork"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1025
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataProfile;

    .line 1026
    invoke-virtual {v3, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/DataProfile;->setPreferred(Z)V

    goto :goto_2

    .line 1029
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1030
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed preferred data profile to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    return v1
.end method

.method private blacklist useV6OnlyEpdn()Z
    .locals 14

    .line 2739
    const-string v12, "310800"

    const-string v13, "44010"

    const-string v0, "310260"

    const-string v1, "310160"

    const-string v2, "310200"

    const-string v3, "310210"

    const-string v4, "310220"

    const-string v5, "310230"

    const-string v6, "310240"

    const-string v7, "310250"

    const-string v8, "310270"

    const-string v9, "310310"

    const-string v10, "310490"

    const-string v11, "310660"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 2747
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2748
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "BMC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 2751
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2752
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 2753
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    move v1, v3

    :goto_0
    const/16 v4, 0xe

    if-ge v1, v4, :cond_3

    .line 2756
    aget-object v4, v0, v1

    .line 2757
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public blacklist areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1738
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1739
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1740
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    .line 1739
    invoke-virtual {p1, p2, p0}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canPreferredDataProfileSatisfy(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 1467
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearAllDataProfilePermanentFailures()V
    .locals 1

    .line 1701
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda21;-><init>()V

    .line 1702
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda22;-><init>()V

    .line 1703
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda23;-><init>()V

    .line 1704
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist createDataProfileEnabled(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;
    .locals 5

    .line 2006
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2008
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    const/16 v3, 0x11

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    .line 2012
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2013
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataProfileManager;->getApnProfileID(Ljava/lang/String;)I

    move-result v0

    .line 2017
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz p0, :cond_2

    .line 2018
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v2

    .line 2023
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 2027
    :cond_3
    invoke-static {v3}, Landroid/telephony/ServiceState;->bearerBitmapHasCdma(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    .line 2033
    :goto_2
    new-instance v4, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v4}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 2034
    invoke-virtual {v4, v0}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2035
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2036
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2037
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setAuthType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2038
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2039
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2040
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 2044
    invoke-virtual {v0, p2}, Landroid/telephony/data/DataProfile$Builder;->enable(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 2045
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 2046
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 2047
    invoke-virtual {p2, v3}, Landroid/telephony/data/DataProfile$Builder;->setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 2048
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    goto :goto_3

    :cond_5
    const/16 v0, 0x5dc

    :goto_3
    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 2049
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    goto :goto_4

    :cond_6
    const/16 v0, 0x500

    :goto_4
    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 2051
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/telephony/data/DataProfile$Builder;->setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 2052
    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 2053
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1813
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1817
    const-string p2, "Data profiles for the current carrier:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1819
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 1820
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", last setup time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getLastSetupTimestamp()J

    move-result-wide v3

    .line 1821
    invoke-static {v3, v4}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1824
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1826
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile from db="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile from config="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile set id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    const-string p2, "Last internet data profile for="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1832
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLastInternetDataProfiles:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1833
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial attach data profile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTetheringDataProfileExisting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->isTetheringDataProfileExisting(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    const-string p2, "Permanent failed profiles="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1839
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda5;-><init>()V

    .line 1840
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1841
    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1842
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1844
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1846
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1848
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;
    .locals 2

    const/4 v0, 0x1

    .line 1233
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1235
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataProfileManager;->getApnSettingForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/ApnSetting;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 1239
    :goto_0
    new-instance p3, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {p3}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    const/4 p4, 0x2

    .line 1240
    invoke-virtual {p1, p4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    .line 1243
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_1
    const/4 p4, 0x4

    .line 1247
    invoke-virtual {p1, p4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1249
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getOsAppId()Landroid/telephony/data/TrafficDescriptor$OsAppId;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 1251
    invoke-virtual {p4}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 1257
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    iget-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/telephony/data/DataProfile;

    .line 1268
    invoke-virtual {p5}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1269
    invoke-virtual {p5}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/telephony/data/TrafficDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p5

    .line 1277
    :cond_4
    new-instance p4, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p4}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    if-eqz p2, :cond_5

    .line 1279
    invoke-virtual {p4, p2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    .line 1283
    :cond_5
    invoke-virtual {p4, p3}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    .line 1285
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p2

    .line 1286
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Created data profile "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object p2

    .line 1260
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find a data profile for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getPreferredApnForBip()Landroid/telephony/data/ApnSetting;
    .locals 5

    .line 2696
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_1

    .line 2697
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2698
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2699
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 2700
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2701
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2702
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2708
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApnForBip: preferredBipApn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->onSetupWizardCompleted()V

    return-void

    .line 399
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->onImsPreferenceChanged(Landroid/os/Message;)V

    return-void

    .line 393
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->onDataConnectionAttached()V

    return-void

    .line 379
    :cond_3
    const-string p1, "Update data profiles due to SIM refresh."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    return-void

    .line 385
    :cond_4
    const-string p1, "EVENT_APN_DATABASE_CHANGED: updateCurrentCarrierInProvider"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 388
    const-string p1, "Update data profiles due to APN db updated."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles(Z)V

    return-void
.end method

.method public blacklist isBipDataProfile(Landroid/telephony/data/DataProfile;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1686
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1687
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BipApn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1688
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1690
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDataProfileCompatible(Landroid/telephony/data/DataProfile;)Z
    .locals 2

    .line 1716
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 1724
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)V

    .line 1728
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->areDataProfilesSharingApn(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public blacklist isTetheringDataProfileExisting(I)Z
    .locals 8

    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTetheringProfileDisabledForRoaming()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1480
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1484
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x2

    .line 1486
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1487
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1489
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v5

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 1490
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v6

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p1

    .line 1488
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist isValidApnId(Landroid/telephony/data/DataProfile;)Z
    .locals 1

    .line 2865
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2868
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/data/DataProfile;)V

    .line 2869
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/data/DataProfile;)V

    .line 2871
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isVzwSim()Z
    .locals 12

    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1859
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1860
    const-string v0, "isVzwSim: failed to get SIM operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return v2

    .line 1864
    :cond_0
    const-string v10, "246081"

    const-string v11, "311280"

    const-string v3, "311480"

    const-string v4, "311270"

    const-string v5, "312770"

    const-string v6, "311390"

    const-string v7, "310028"

    const-string v8, "310004"

    const-string v9, "24681"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    const/16 v5, 0x9

    if-ge v3, v5, :cond_2

    .line 1875
    aget-object v5, v1, v3

    .line 1876
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1882
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "VZW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1893
    const-string p0, "00101"

    const-string v1, "001010"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    move v1, v2

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    .line 1899
    aget-object v3, p0, v1

    .line 1900
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 0

    .line 1749
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setDataProfileEnabled(Ljava/lang/String;Z)V
    .locals 5

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataProfileEnabled with apnType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2879
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 2880
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2884
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2885
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->isCdmaApn(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 2889
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getAlwaysOnPdn()Lcom/android/internal/telephony/data/AlwaysOnPdn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->isAlwaysOnPdnRequiredByModem()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 2890
    invoke-virtual {v2, v3}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 2894
    :cond_3
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->createDataProfileEnabled(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2897
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2898
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2899
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    const/4 p2, 0x0

    .line 2898
    invoke-virtual {p1, v0, p0, p2}, Lcom/android/internal/telephony/data/DataServiceManager;->setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V

    :cond_5
    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 0

    .line 1758
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist updateApnForLteRoaming()Z
    .locals 11

    .line 2265
    const-string v1, "apn"

    const-string v0, "updateApnForLteRoaming"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2270
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->isLTEModeEnabled()Z

    move-result v3

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' and roaming=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE_ROAMING : isLteMode is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    const-string v4, " enabled "

    goto :goto_0

    :cond_0
    const-string v4, " disabled "

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2276
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_3

    .line 2279
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2280
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    move-object v6, v4

    .line 2282
    :cond_1
    :try_start_2
    const-string v0, "type"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2284
    const-string v7, "default"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2285
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v4, v5

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_4

    .line 2288
    :cond_2
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v4

    goto :goto_4

    .line 2292
    :cond_3
    :try_start_3
    const-string v0, "updateApnForLteRoaming: No record found."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_5

    .line 2298
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    .line 2295
    :goto_4
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateApnForLteRoaming: exception caught : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_5

    goto :goto_3

    .line 2301
    :cond_5
    :goto_5
    const-string v0, "numeric = \'%s\' AND apn =\'%s\'"

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LTE_ROAMING : current Apn is = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2304
    const-string v5, "45005"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    if-eqz v6, :cond_c

    .line 2305
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2306
    const-string v8, "lte.sktelecom.com"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "5g.sktelecom.com"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_7

    :cond_6
    const/4 v8, 0x0

    if-eqz v3, :cond_8

    .line 2311
    const-string v3, "lte-roaming.sktelecom.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    return v8

    .line 2314
    :cond_7
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2316
    :cond_8
    const-string v3, "roaming.sktelecom.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    return v8

    .line 2319
    :cond_9
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :goto_6
    const-string v1, "edited"

    const-string v3, "0"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND (edited!=2 and edited!=3 and edited!=5 and edited!=6)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND (roaming=1)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 2326
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    .line 2328
    const-string v0, "LTE_ROAMING : success to update apn in telephony.db (carriers table)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 2330
    :cond_a
    const-string v0, "LTE_ROAMING : fail to update apn in telephony.db (carriers table)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 2307
    :cond_b
    :goto_7
    const-string v0, "LTE_ROAMING : Skip update apn when domestic and oversea use same apn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    :cond_c
    :goto_8
    return v5

    :goto_9
    if-eqz v4, :cond_d

    .line 2298
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2299
    :cond_d
    throw p0
.end method

.method public blacklist updateProfileForRetry(Landroid/telephony/data/DataProfile;)Landroid/telephony/data/DataProfile;
    .locals 3

    if-eqz p1, :cond_1

    .line 526
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 530
    :cond_0
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 532
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 533
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 534
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 535
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 536
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    .line 537
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 538
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 539
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 540
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 541
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 542
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 543
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 544
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 545
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 546
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 547
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    const/4 v1, 0x2

    .line 548
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 549
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 550
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 551
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 552
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    .line 553
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 554
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 555
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 556
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 557
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 558
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 559
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 560
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 561
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 563
    new-instance p0, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p0}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 564
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 565
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 566
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public blacklist updateProfileId(Landroid/telephony/data/DataProfile;I)Landroid/telephony/data/DataProfile;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    .line 478
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    .line 481
    :cond_1
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 483
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 484
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 485
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 486
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 487
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    .line 488
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 489
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 490
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 491
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 492
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 493
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 494
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 495
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 496
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 497
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 499
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 500
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 501
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 502
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 503
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 504
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    .line 505
    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 506
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 507
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 508
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 509
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 510
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 511
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 512
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 513
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 515
    new-instance p0, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p0}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 516
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 517
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 518
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method
