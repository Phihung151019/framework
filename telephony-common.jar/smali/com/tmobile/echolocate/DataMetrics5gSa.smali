.class public Lcom/tmobile/echolocate/DataMetrics5gSa;
.super Ljava/lang/Object;
.source "DataMetrics5gSa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;,
        Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;
    }
.end annotation


# static fields
.field private static final greylist ECHO_APP_SIG:Landroid/content/pm/Signature;

.field private static final greylist MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

.field private static final greylist PHASE4_NOT_SUPPORT_LIST:[Ljava/lang/String;

.field private static final greylist TAG:Ljava/lang/String; = "DataMetrics5gSa"


# instance fields
.field private greylist CURRENT_API_VERSION:I

.field private greylist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private greylist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mShouldReport:Z

.field private greylist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private greylist mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

.field private greylist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private greylist overrideNetworkType:I


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetmTelephonyCallback(Lcom/tmobile/echolocate/DataMetrics5gSa;)Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmTelephonyManager(Lcom/tmobile/echolocate/DataMetrics5gSa;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$msetOverrideNetworkType(Lcom/tmobile/echolocate/DataMetrics5gSa;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->setOverrideNetworkType(I)V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$smlogD(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor greylist <clinit>()V
    .locals 2

    .line 158
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

    .line 188
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    .line 235
    const-string v0, "SM-A536U"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->PHASE4_NOT_SUPPORT_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 7

    .line 1797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 217
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->CURRENT_API_VERSION:I

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    .line 234
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    .line 1798
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    .line 1800
    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "DataMetrics5gSa()"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1803
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1804
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1805
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1806
    new-instance p1, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    invoke-direct {p1, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    .line 1808
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isTmoSim()Z

    move-result p1

    .line 1809
    const-string v1, "TMB"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "TMK"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 1810
    :goto_1
    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tmobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1811
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isMyAccountSigPresent()Z

    move-result v4

    .line 1812
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isEchoAppSigPresent()Z

    move-result v5

    if-eqz v1, :cond_4

    .line 1815
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isModelSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataMetrics5gSa(): isModelSupported() ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isModelSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isTmoSim="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTmoSalesCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isCalledFromTmo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isMyAccountSigPresent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isEchoAppSigPresent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 1827
    :cond_4
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    .line 1829
    :goto_2
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-eqz v0, :cond_5

    .line 1830
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyCallback:Lcom/tmobile/echolocate/DataMetrics5gSa$DataMetricsTelephonyCallback;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_5
    return-void
.end method

.method private greylist getAntennaBars()I
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    .line 1328
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getVendorLevel()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e7

    return p0
.end method

.method private greylist getCarrierConfigVersion()Ljava/lang/String;
    .locals 8

    .line 1615
    const-string v1, "getCarrierConfigVersion message"

    const-string v0, "getCarrierConfigVersion = IN"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1616
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 1617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1618
    const-string p0, "version"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    .line 1623
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierConfigVersion projection = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1624
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1626
    const-string v0, "getCarrierConfigVersion Cursor = IN"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1628
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1629
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierConfigVersion cursor= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1631
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    .line 1633
    :cond_0
    :try_start_1
    const-string v0, "getCarrierConfigVersion cursor= null"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 1645
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1640
    :goto_1
    :try_start_2
    const-string v2, "getCarrierConfigVersion Exception"

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    goto :goto_0

    .line 1636
    :goto_2
    const-string v2, "getCarrierConfigVersion SecurityException"

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 1648
    :cond_1
    :goto_3
    const-string p0, "-2"

    return-object p0

    :goto_4
    if-eqz p0, :cond_2

    .line 1645
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1647
    :cond_2
    throw v0
.end method

.method private greylist getCommandsToCp(I)[B
    .locals 3

    .line 1562
    const-string p0, "getCommandToCp(): failed to close dos "

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1563
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x11

    .line 1566
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x92

    .line 1567
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 1568
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1569
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1577
    invoke-static {p0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1571
    :try_start_2
    const-string v2, "getCommandToCp(): "

    invoke-static {v2, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1575
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1582
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 1575
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1577
    invoke-static {p0, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1580
    :goto_2
    throw p1
.end method

.method private greylist getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 906
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): default on dataSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_0

    .line 917
    :cond_0
    const-string p0, "ON"

    goto :goto_0

    .line 914
    :cond_1
    const-string p0, "OFF"

    goto :goto_0

    .line 911
    :cond_2
    const-string p0, "-1"

    .line 921
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for setting value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getCurrentNetworkType()Ljava/lang/String;
    .locals 3

    .line 1407
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 1410
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/16 v2, 0xd

    if-eq p0, v2, :cond_0

    const/16 v1, 0x14

    if-eq p0, v1, :cond_5

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    .line 1433
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1435
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist getCurrentTime()Ljava/lang/String;
    .locals 2

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist getDataActivityType()Ljava/lang/String;
    .locals 2

    .line 1294
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result p0

    .line 1296
    const-string v0, "BOTH_OFF"

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): default on currDataActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v0, "NA"

    goto :goto_0

    .line 1305
    :cond_0
    const-string v0, "BOTH_ON"

    goto :goto_0

    .line 1299
    :cond_1
    const-string v0, "UP_ON"

    goto :goto_0

    .line 1302
    :cond_2
    const-string v0, "DOWN_ON"

    .line 1316
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist getMccMnc()Ljava/lang/String;
    .locals 2

    .line 1534
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMccMnc(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getNetworkModeSetting()Ljava/lang/String;
    .locals 2

    .line 949
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 950
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 949
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_3

    const/16 v0, 0x12

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): default on networkModeSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_0

    .line 957
    :cond_0
    const-string p0, "5G"

    goto :goto_0

    .line 963
    :cond_1
    const-string p0, "4G"

    goto :goto_0

    .line 973
    :cond_2
    const-string p0, "2G"

    goto :goto_0

    .line 970
    :cond_3
    const-string p0, "3G"

    .line 977
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): ret= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getNetworkTypeWithENDC()I
    .locals 2

    .line 1361
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 1362
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1364
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 p0, 0x14

    if-eq v0, p0, :cond_0

    .line 1378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkTypeWithENDC(): default on currNetwork="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 p0, -0x2

    :goto_0
    move v1, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    .line 1370
    :cond_1
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    goto :goto_0

    .line 1383
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkTypeWithENDC(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return v1

    .line 1386
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkTypeWithENDC(): Service state null > ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return v1
.end method

.method private greylist getOverrideNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1853
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "5GUC"

    const/4 v1, 0x5

    const-string v2, "5G"

    const/4 v3, 0x3

    const-string v4, "NA"

    const-string v5, "1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1878
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getOverrideNetworkType(): default on networkType="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_0
    move-object v0, v4

    goto :goto_2

    .line 1865
    :cond_1
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ne p0, v3, :cond_4

    :cond_3
    :goto_0
    move-object v0, v2

    goto :goto_2

    :cond_4
    if-ne p0, v1, :cond_0

    goto :goto_2

    .line 1868
    :cond_5
    :goto_1
    const-string v0, "4G_LTE"

    goto :goto_2

    .line 1855
    :cond_6
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    if-eqz p0, :cond_3

    if-ne p0, v3, :cond_7

    goto :goto_0

    :cond_7
    if-ne p0, v1, :cond_0

    .line 1880
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getOverrideNetworkType(): networkType="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist getResultsFromBytes(I[B)[Ljava/lang/String;
    .locals 1

    if-gtz p1, :cond_0

    .line 1590
    const-string p0, "getResultsFromBytes(): length is less than or equal to zero!"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1594
    :cond_0
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Ljava/lang/String;-><init>([BII)V

    .line 1595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getResultsFromBytes(): resultString="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1597
    const-string p1, "\\|"

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1598
    :goto_0
    array-length p1, p0

    if-ge v0, p1, :cond_3

    .line 1600
    aget-object p1, p0, v0

    if-eqz p1, :cond_1

    .line 1601
    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1603
    :cond_1
    const-string p1, "-2"

    aput-object p1, p0, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private greylist getRttSetting()Ljava/lang/String;
    .locals 5

    .line 1065
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const-string v2, "CarrierFeature_VoiceCall_SupportRTT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    const-string v1, "-1"

    if-nez v0, :cond_0

    .line 1066
    const-string p0, "getRttSetting(): feature not supported"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v1

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_rtt_mode"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rttSetting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 1093
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRttSetting(): default on rttSetting="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v1, "-2"

    goto :goto_0

    .line 1078
    :cond_1
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "preferred_rtt_automatic_mode"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    .line 1082
    const-string v1, "MANUAL"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 1084
    const-string v1, "AUTOMATIC"

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 1086
    const-string v1, "CALL"

    goto :goto_0

    .line 1088
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRttSetting(): default on rttAutomaticMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_5
    const-string v1, "OFF"

    .line 1095
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRttSetting(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist getRttTranscriptSetting()Ljava/lang/String;
    .locals 3

    .line 1111
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    const-string v1, "CarrierFeature_VoiceCall_SupportRTT"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1112
    const-string p0, "getRttTranscriptSetting(): feature not supported"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1113
    const-string p0, "-1"

    return-object p0

    .line 1116
    :cond_0
    const-string p0, "getRttTranscriptSetting(): currently not supported"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 1118
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getTechType()Ljava/lang/String;
    .locals 2

    .line 1463
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1465
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x1

    .line 1466
    const-string v1, "2G"

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_4

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v1, "-2"

    goto :goto_0

    .line 1469
    :cond_0
    const-string v1, "NR"

    goto :goto_0

    .line 1472
    :cond_1
    const-string v1, "LTE"

    goto :goto_0

    .line 1475
    :cond_2
    const-string v1, "3G"

    goto :goto_0

    .line 1489
    :cond_3
    const-string v1, "-1"

    .line 1491
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentNetworkType(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1442
    const-string v0, "getCurrentNetworkType(): ret="

    if-eqz p1, :cond_2

    .line 1443
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cpTechType: ret="

    if-eqz v1, :cond_0

    .line 1445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "NR"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p1

    .line 1446
    :cond_0
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "LTE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p1

    .line 1450
    :cond_1
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechType()Ljava/lang/String;

    move-result-object p0

    .line 1451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0

    .line 1454
    :cond_2
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechType()Ljava/lang/String;

    move-result-object p0

    .line 1455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getUiLogNetworkType()Ljava/lang/String;
    .locals 2

    .line 1498
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_6

    .line 1500
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_0

    .line 1504
    :cond_0
    const-string p0, "NR"

    goto :goto_0

    .line 1513
    :cond_1
    const-string p0, "GSM"

    goto :goto_0

    .line 1507
    :cond_2
    const-string p0, "LTE"

    goto :goto_0

    .line 1510
    :cond_3
    const-string p0, "UMTS"

    goto :goto_0

    .line 1516
    :cond_4
    const-string p0, "EDGE"

    goto :goto_0

    .line 1519
    :cond_5
    const-string p0, "GPRS"

    goto :goto_0

    .line 1524
    :cond_6
    const-string p0, "-1"

    .line 1526
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getWfcSetting(I)Ljava/lang/String;
    .locals 4

    .line 994
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_call_enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 995
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi_call_preferred"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiCallingPreferred(): default on WifiCallingPreferred="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_0

    .line 1006
    :cond_0
    const-string p0, "CELLULAR"

    goto :goto_0

    .line 1003
    :cond_1
    const-string p0, "WIFI"

    goto :goto_0

    .line 1000
    :cond_2
    const-string p0, "-1"

    :goto_0
    if-nez v0, :cond_3

    .line 1012
    const-string p0, "OFF"

    .line 1013
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWifiCallingSettings(): ret="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist invokeOemRilRequestRaw(I)[Ljava/lang/String;
    .locals 4

    .line 1542
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    .line 1543
    new-array v0, v0, [B

    .line 1544
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeOemRilRequestRaw: DefaultDataSubId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1546
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1547
    invoke-direct {p0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommandsToCp(I)[B

    move-result-object v3

    .line 1546
    invoke-virtual {v2, v1, v3, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v1

    .line 1548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeOemRilRequestRaw: resp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1549
    invoke-direct {p0, v1, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeOemRilRequestRaw: msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultFromCp= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object p0

    .line 1553
    :cond_0
    const-string p0, "invokeOemRilRequestRaw: mTelephonyManager= null & resultFromCp = null"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist isEchoAppSigPresent()Z
    .locals 5

    .line 841
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 844
    :try_start_0
    const-string v1, "com.tmobile.echolocate"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    .line 848
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 849
    sget-object v4, Lcom/tmobile/echolocate/DataMetrics5gSa;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 856
    :catch_0
    const-string p0, "isEchoAppSigPresent(): package is not installed"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    return v0
.end method

.method private static greylist isModelSupported()Z
    .locals 7

    .line 1779
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->PHASE4_NOT_SUPPORT_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 1780
    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private greylist isMyAccountSigPresent()Z
    .locals 7

    .line 813
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 816
    :try_start_0
    const-string v1, "com.tmobile.pr.mytmobile"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_3

    .line 820
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    move v5, v0

    .line 821
    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_1

    .line 822
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics5gSa;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

    invoke-virtual {v4, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    return v0

    .line 830
    :catch_0
    const-string p0, "isMyAccountSigPresent(): package is not installed"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    return v0
.end method

.method private greylist isSatelliteConnected()Z
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method private greylist isTmoSim()Z
    .locals 14

    .line 801
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 802
    const-string v12, "310800"

    const-string v13, "00101"

    const-string v0, "310160"

    const-string v1, "310200"

    const-string v2, "310210"

    const-string v3, "310220"

    const-string v4, "310230"

    const-string v5, "310240"

    const-string v6, "310250"

    const-string v7, "310260"

    const-string v8, "310270"

    const-string v9, "310310"

    const-string v10, "310490"

    const-string v11, "310660"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private greylist isWifiConnected()Z
    .locals 1

    .line 783
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 784
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 785
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist logD(Ljava/lang/String;)V
    .locals 1

    .line 874
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static greylist logE(Ljava/lang/String;)V
    .locals 1

    .line 883
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static greylist logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 892
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private greylist setOverrideNetworkType(I)V
    .locals 0

    .line 1885
    iput p1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->overrideNetworkType:I

    return-void
.end method


# virtual methods
.method public greylist buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1728
    const-string p0, "content://com.samsung.ims.entitlementconfig.provider"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "config"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "xpath"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1729
    const-string v0, "tag_name"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1730
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public greylist fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;
    .locals 1

    .line 2695
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2696
    invoke-virtual {v0, p1}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setTechType(Ljava/lang/String;)V

    .line 2697
    invoke-virtual {v0, p2}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setArfcn(I)V

    .line 2698
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setBandWidth(F)V

    .line 2699
    invoke-virtual {v0, p4}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {v0, p5}, Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;->setIsPrimary(I)V

    .line 2702
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getUlCarrierLog(): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getAnchorLteCid()J
    .locals 4

    .line 1126
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1127
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    .line 1130
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x2

    if-nez v1, :cond_3

    const-string v1, "2"

    .line 1131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1132
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 1137
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    instance-of v1, v0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_0

    .line 1139
    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    .line 1140
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 1144
    :cond_0
    const-string v0, "getAnchorLteCid(): CellInfo is not one of LTE"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 1148
    :cond_1
    const-string v0, "getAnchorLteCid(): CellInfo.isRegistered()=false"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_1
    const-wide/16 v2, -0x3e7

    goto :goto_0

    :cond_2
    return-wide v2

    .line 1153
    :cond_3
    const-string p0, "getAnchorLteCid(): current network is not available"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-wide v2
.end method

.method public greylist getApiVersion()I
    .locals 3

    .line 1841
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getAPIversion()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 1846
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): CURRENT_API_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->CURRENT_API_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1848
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->CURRENT_API_VERSION:I

    return p0
.end method

.method public greylist getCarrierSa5gBandConfig()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1653
    const-string v2, "getCarrierSa5gBandConfig: "

    const-string v3, "-2"

    const-string v4, "ERROR"

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1654
    iget-object v0, v1, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 1655
    const-string v10, "//FT_NR_CA"

    const-string v11, "//TF_NR_CA"

    const-string v6, "//StandaloneBands5G_NRCA"

    const-string v7, "//StandaloneBands5G"

    const-string v8, "//TT_NR_CA"

    const-string v9, "//FF_NR_CA"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x6

    if-ge v9, v10, :cond_9

    .line 1660
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCarrierSa5gBandConfig : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v9

    invoke-virtual {v1, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    aget-object v11, v6, v9

    invoke-virtual {v1, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1662
    const-string v11, "-1"

    const-string v12, "NONE"

    if-eqz v8, :cond_7

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1663
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1664
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    .line 1665
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCarrierSa5gBandConfig rowNum=: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1666
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCarrierSa5gBandConfig columnNum=: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_6

    .line 1668
    new-instance v15, Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v15, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_5

    move-object/from16 v18, v6

    const/4 v6, 0x1

    if-le v14, v6, :cond_3

    .line 1671
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v0

    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v7

    const-string v7, "getCarrierSa5gBandConfig TagValue: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    if-nez v10, :cond_1

    .line 1673
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1674
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1676
    array-length v6, v0

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1677
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v0, v6

    move-object v15, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_8

    :cond_0
    move-object v15, v12

    .line 1681
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCarrierSa5gBandConfig Tag: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    const/4 v7, 0x1

    if-ne v10, v7, :cond_4

    .line 1684
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1685
    invoke-interface {v5, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCarrierSa5gBandConfig Value: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_4

    .line 1688
    :cond_2
    invoke-interface {v5, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    const-string v0, "getCarrierSa5gBandConfig Value: -1"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object/from16 v19, v0

    move/from16 v20, v7

    .line 1693
    invoke-virtual {v1, v5, v9, v12, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v0, "getCarrierSa5gBandConfig : columnNum > 1"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v18

    move-object/from16 v0, v19

    move/from16 v7, v20

    goto/16 :goto_2

    :cond_5
    move-object/from16 v19, v0

    move-object/from16 v18, v6

    move/from16 v20, v7

    .line 1697
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v6, v18

    move-object/from16 v0, v19

    goto/16 :goto_1

    :cond_6
    move-object/from16 v19, v0

    move-object/from16 v18, v6

    goto :goto_5

    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v18, v6

    .line 1700
    invoke-virtual {v1, v5, v9, v12, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string v0, "getCarrierSa5gBandConfig : cursor is null"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v18

    move-object/from16 v0, v19

    goto/16 :goto_0

    .line 1709
    :goto_6
    :try_start_2
    invoke-virtual {v1, v5, v6, v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_a

    .line 1714
    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 1705
    :goto_8
    :try_start_3
    invoke-virtual {v1, v5, v6, v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_a

    goto :goto_7

    :goto_9
    if-eqz v8, :cond_8

    .line 1714
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1716
    :cond_8
    throw v0

    :cond_9
    if-eqz v8, :cond_a

    goto :goto_7

    .line 1717
    :cond_a
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carrierSa5gBandConfig Size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v5
.end method

.method public greylist getCommonRFConfig(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    .line 1205
    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1206
    array-length v0, p0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    if-nez p1, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonRFConfig: Transmission mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1209
    aget-object p0, p0, p1

    return-object p0

    .line 1211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonRFConfig: RRC state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1212
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1220
    const-string p0, "INACTIVE"

    return-object p0

    .line 1214
    :cond_1
    const-string p0, "CONNECTED"

    return-object p0

    .line 1217
    :cond_2
    const-string p0, "IDLE"

    return-object p0

    .line 1224
    :cond_3
    const-string p0, "-1"

    return-object p0
.end method

.method public greylist getDlCarrierLog()Ljava/util/List;
    .locals 116
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1915
    const-string v1, "getDlCarrierLog(): Entered"

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 1917
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getDlCarrierLog()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDlCarrierLog(): mShouldReport="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    return-object v2

    .line 1922
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x4

    .line 1952
    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v10, 0xa

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x6

    const/4 v2, 0x5

    const/16 v17, 0xd

    .line 1953
    const-string v5, "-2"

    const/16 v18, 0xc

    const/4 v6, 0x2

    const/16 v19, -0x2

    const/16 v20, 0xb

    if-eqz v4, :cond_6

    array-length v8, v4

    if-lt v8, v10, :cond_6

    .line 1954
    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v21, 0x9

    .line 1955
    aget-object v9, v4, v14

    invoke-direct {v0, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1956
    aget-object v22, v4, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1957
    aget-object v23, v4, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1958
    aget-object v24, v4, v3

    if-ne v8, v14, :cond_1

    .line 1960
    const-string v4, "numAggChannels ==1 Data Feteched already"

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v32, v2

    move/from16 v33, v3

    move-object v2, v5

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object/from16 v45, v6

    move/from16 v25, v10

    move/from16 v29, v11

    move/from16 v28, v12

    move/from16 v38, v13

    move/from16 v42, v14

    move/from16 v49, v19

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move-object/from16 v10, v45

    move-object v11, v10

    :goto_0
    move-object v12, v11

    move-object v13, v12

    :goto_1
    move-object v14, v13

    goto/16 :goto_2

    :cond_1
    if-ne v8, v6, :cond_2

    move/from16 v25, v10

    .line 1962
    aget-object v10, v4, v2

    invoke-direct {v0, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1963
    aget-object v26, v4, v15

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1964
    aget-object v27, v4, v12

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1965
    aget-object v4, v4, v11

    move/from16 v32, v2

    move/from16 v33, v3

    move-object v2, v5

    move-object v3, v2

    move-object v6, v3

    move-object/from16 v45, v6

    move/from16 v29, v11

    move/from16 v28, v12

    move/from16 v38, v13

    move/from16 v42, v14

    move/from16 v51, v19

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move-object/from16 v11, v45

    goto :goto_0

    :cond_2
    move/from16 v25, v10

    if-ne v8, v13, :cond_3

    .line 1967
    aget-object v10, v4, v2

    invoke-direct {v0, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1968
    aget-object v26, v4, v15

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1969
    aget-object v27, v4, v12

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1970
    aget-object v28, v4, v11

    move/from16 v29, v11

    .line 1971
    aget-object v11, v4, v21

    invoke-direct {v0, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1972
    aget-object v30, v4, v25

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1973
    aget-object v31, v4, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 1974
    aget-object v4, v4, v18

    move v6, v12

    move-object v12, v4

    move-object/from16 v4, v28

    move/from16 v28, v6

    move/from16 v32, v2

    move/from16 v33, v3

    move-object v2, v5

    move-object v3, v2

    move-object v6, v3

    move-object/from16 v45, v6

    move/from16 v38, v13

    move/from16 v42, v14

    move/from16 v53, v19

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move/from16 v51, v30

    move/from16 v52, v31

    move-object/from16 v13, v45

    goto/16 :goto_1

    :cond_3
    move/from16 v29, v11

    if-ne v8, v3, :cond_4

    .line 1976
    aget-object v10, v4, v2

    invoke-direct {v0, v10}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1977
    aget-object v11, v4, v15

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1978
    aget-object v11, v4, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1979
    aget-object v11, v4, v29

    move/from16 v28, v12

    .line 1980
    aget-object v12, v4, v21

    invoke-direct {v0, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1981
    aget-object v30, v4, v25

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1982
    aget-object v31, v4, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 1983
    aget-object v32, v4, v18

    move/from16 v33, v3

    .line 1984
    aget-object v3, v4, v17

    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v34, 0xe

    .line 1985
    aget-object v34, v4, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0xf

    .line 1986
    aget-object v35, v4, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x10

    .line 1987
    aget-object v4, v4, v36

    move-object v6, v5

    move-object/from16 v45, v6

    move/from16 v38, v13

    move/from16 v42, v14

    move/from16 v55, v19

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move/from16 v51, v30

    move/from16 v52, v31

    move/from16 v53, v34

    move/from16 v54, v35

    move-object v13, v4

    move-object/from16 v14, v45

    move-object v4, v11

    move-object v11, v12

    move-object/from16 v12, v32

    move/from16 v32, v2

    move-object v2, v14

    goto/16 :goto_2

    :cond_4
    move/from16 v33, v3

    move/from16 v28, v12

    if-ne v8, v2, :cond_5

    .line 1989
    aget-object v3, v4, v2

    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1990
    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1991
    aget-object v3, v4, v28

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1992
    aget-object v3, v4, v29

    .line 1993
    aget-object v11, v4, v21

    invoke-direct {v0, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1994
    aget-object v12, v4, v25

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1995
    aget-object v12, v4, v20

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 1996
    aget-object v12, v4, v18

    move/from16 v32, v2

    .line 1997
    aget-object v2, v4, v17

    invoke-direct {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v34, 0xe

    .line 1998
    aget-object v34, v4, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0xf

    .line 1999
    aget-object v35, v4, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x10

    .line 2000
    aget-object v36, v4, v36

    const/16 v37, 0x11

    move/from16 v38, v13

    .line 2001
    aget-object v13, v4, v37

    invoke-direct {v0, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v37, 0x12

    .line 2002
    aget-object v37, v4, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/16 v39, 0x13

    .line 2003
    aget-object v39, v4, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    const/16 v40, 0x14

    .line 2004
    aget-object v4, v4, v40

    move-object v6, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v45, v6

    move/from16 v42, v14

    move/from16 v57, v19

    move/from16 v58, v57

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move/from16 v51, v30

    move/from16 v52, v31

    move/from16 v53, v34

    move/from16 v54, v35

    move/from16 v55, v37

    move/from16 v56, v39

    move-object v14, v13

    move-object/from16 v13, v36

    goto/16 :goto_2

    :cond_5
    move/from16 v32, v2

    move/from16 v38, v13

    .line 2006
    aget-object v2, v4, v32

    invoke-direct {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2007
    aget-object v2, v4, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2008
    aget-object v2, v4, v28

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2009
    aget-object v2, v4, v29

    .line 2010
    aget-object v3, v4, v21

    invoke-direct {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2011
    aget-object v3, v4, v25

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 2012
    aget-object v3, v4, v20

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 2013
    aget-object v3, v4, v18

    .line 2014
    aget-object v12, v4, v17

    invoke-direct {v0, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xe

    .line 2015
    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    const/16 v13, 0xf

    .line 2016
    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v13, 0x10

    .line 2017
    aget-object v13, v4, v13

    const/16 v36, 0x11

    .line 2018
    aget-object v6, v4, v36

    invoke-direct {v0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v36, 0x12

    .line 2019
    aget-object v36, v4, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    const/16 v39, 0x13

    .line 2020
    aget-object v39, v4, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    const/16 v40, 0x14

    .line 2021
    aget-object v40, v4, v40

    const/16 v41, 0x15

    move/from16 v42, v14

    .line 2022
    aget-object v14, v4, v41

    invoke-direct {v0, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v41, 0x16

    .line 2023
    aget-object v41, v4, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    const/16 v43, 0x17

    .line 2024
    aget-object v43, v4, v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    const/16 v44, 0x18

    .line 2025
    aget-object v4, v4, v44

    move-object/from16 v45, v12

    move-object v12, v3

    move-object/from16 v3, v45

    move-object/from16 v45, v14

    move/from16 v46, v22

    move/from16 v47, v23

    move-object/from16 v48, v24

    move/from16 v49, v26

    move/from16 v50, v27

    move/from16 v51, v30

    move/from16 v52, v31

    move/from16 v53, v34

    move/from16 v54, v35

    move/from16 v55, v36

    move/from16 v56, v39

    move/from16 v57, v41

    move/from16 v58, v43

    move-object v14, v6

    move-object v6, v4

    move-object v4, v2

    move-object/from16 v2, v40

    goto :goto_2

    :cond_6
    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v25, v10

    move/from16 v29, v11

    move/from16 v28, v12

    move/from16 v38, v13

    move/from16 v42, v14

    const/16 v21, 0x9

    move-object v2, v5

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v45, v14

    move-object/from16 v48, v45

    move v8, v7

    move/from16 v46, v19

    move/from16 v47, v46

    move/from16 v49, v47

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v53, v52

    move/from16 v54, v53

    move/from16 v55, v54

    move/from16 v56, v55

    move/from16 v57, v56

    move/from16 v58, v57

    .line 2031
    :goto_2
    iget-object v15, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v7, "WCDMA"

    move-object/from16 v24, v15

    const-string v15, "CDMA"

    move-object/from16 v26, v1

    const-string v1, "NR"

    move-object/from16 v27, v6

    const-string v6, "LTE"

    if-eqz v24, :cond_15

    .line 2032
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v24

    if-eqz v24, :cond_15

    move-object/from16 v24, v2

    .line 2042
    iget-object v2, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2044
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2045
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_e

    .line 2046
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v16, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    move-object/from16 v40, v2

    move-object/from16 v2, v39

    check-cast v2, Landroid/telephony/CellSignalStrength;

    move-object/from16 v39, v14

    .line 2047
    instance-of v14, v2, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v14, :cond_7

    .line 2048
    move-object v14, v2

    check-cast v14, Landroid/telephony/CellSignalStrengthLte;

    move-object/from16 v31, v14

    .line 2050
    :cond_7
    instance-of v14, v2, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v14, :cond_8

    .line 2051
    move-object v14, v2

    check-cast v14, Landroid/telephony/CellSignalStrengthNr;

    move-object/from16 v34, v14

    .line 2053
    :cond_8
    instance-of v14, v2, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v14, :cond_9

    .line 2054
    move-object v14, v2

    check-cast v14, Landroid/telephony/CellSignalStrengthCdma;

    move-object/from16 v16, v14

    .line 2056
    :cond_9
    instance-of v14, v2, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v14, :cond_a

    .line 2057
    move-object v14, v2

    check-cast v14, Landroid/telephony/CellSignalStrengthTdscdma;

    move-object/from16 v30, v14

    .line 2059
    :cond_a
    instance-of v14, v2, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v14, :cond_b

    .line 2060
    move-object v14, v2

    check-cast v14, Landroid/telephony/CellSignalStrengthWcdma;

    move-object/from16 v35, v14

    .line 2062
    :cond_b
    instance-of v14, v2, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v14, :cond_c

    .line 2063
    check-cast v2, Landroid/telephony/CellSignalStrengthGsm;

    move-object/from16 v36, v2

    :cond_c
    move-object/from16 v14, v39

    move-object/from16 v2, v40

    goto :goto_3

    :cond_d
    move-object/from16 v39, v14

    move-object/from16 v2, v34

    goto :goto_4

    :cond_e
    move-object/from16 v39, v14

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_4
    if-eqz v2, :cond_f

    .line 2073
    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v1

    goto :goto_5

    :cond_f
    move-object v2, v6

    :goto_5
    if-eqz v31, :cond_10

    .line 2074
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object v2, v6

    :cond_10
    if-eqz v16, :cond_11

    .line 2075
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v14

    if-eqz v14, :cond_11

    move-object v2, v15

    :cond_11
    if-eqz v30, :cond_12

    .line 2076
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v14

    if-eqz v14, :cond_12

    const-string v2, "TDSCDMA"

    :cond_12
    if-eqz v35, :cond_13

    .line 2077
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v14

    if-eqz v14, :cond_13

    move-object v2, v7

    :cond_13
    if-eqz v36, :cond_14

    .line 2078
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v14

    if-eqz v14, :cond_14

    const-string v2, "GSM"

    :cond_14
    :goto_6
    const/4 v14, 0x0

    goto :goto_7

    :cond_15
    move-object/from16 v24, v2

    move-object/from16 v39, v14

    move-object v2, v6

    goto :goto_6

    .line 2092
    :goto_7
    invoke-virtual {v0, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v23, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v30, v3

    move-object/from16 v16, v13

    const/4 v13, 0x6

    .line 2102
    invoke-direct {v0, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 2103
    array-length v13, v3

    move-object/from16 v34, v3

    const/4 v3, 0x6

    if-lt v13, v3, :cond_1b

    .line 2104
    aget-object v3, v34, v23

    .line 2105
    aget-object v13, v34, v42

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v35, v3

    move/from16 v3, v42

    if-ne v8, v3, :cond_16

    .line 2108
    const-string v3, "-1"

    move-object/from16 v62, v3

    move-object/from16 v67, v5

    move-object/from16 v68, v67

    move-object/from16 v69, v68

    move-object/from16 v34, v12

    move v12, v13

    move/from16 v64, v19

    move/from16 v65, v64

    move/from16 v66, v65

    const/16 v36, -0x1

    const/16 v63, -0x1

    move-object/from16 v13, v62

    :goto_8
    move-object/from16 v3, v35

    :goto_9
    move-object/from16 v35, v11

    goto/16 :goto_a

    :cond_16
    const/4 v3, 0x2

    if-ne v8, v3, :cond_17

    .line 2111
    aget-object v36, v34, v3

    .line 2112
    aget-object v34, v34, v38

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 2114
    const-string v37, "-1"

    move/from16 v3, v34

    move-object/from16 v34, v12

    move v12, v13

    move-object/from16 v13, v36

    move/from16 v36, v3

    move-object/from16 v67, v5

    move-object/from16 v68, v67

    move-object/from16 v69, v68

    move/from16 v64, v19

    move/from16 v65, v64

    move/from16 v66, v65

    move-object/from16 v3, v35

    move-object/from16 v62, v37

    const/16 v63, -0x1

    goto :goto_9

    :cond_17
    move/from16 v40, v3

    move/from16 v3, v38

    if-ne v8, v3, :cond_18

    .line 2116
    aget-object v36, v34, v40

    .line 2117
    aget-object v37, v34, v3

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 2118
    aget-object v38, v34, v33

    .line 2119
    aget-object v34, v34, v32

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v67, v5

    move-object/from16 v68, v67

    move-object/from16 v69, v68

    move/from16 v64, v19

    move/from16 v65, v64

    move/from16 v66, v65

    move/from16 v63, v34

    move-object/from16 v3, v35

    move-object/from16 v62, v38

    move-object/from16 v35, v11

    move-object/from16 v34, v12

    move v12, v13

    move-object/from16 v13, v36

    move/from16 v36, v37

    goto/16 :goto_a

    :cond_18
    move/from16 v41, v3

    move/from16 v3, v33

    if-ne v8, v3, :cond_19

    .line 2121
    aget-object v33, v34, v40

    .line 2122
    aget-object v36, v34, v41

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 2123
    aget-object v37, v34, v3

    .line 2124
    aget-object v38, v34, v32

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v22, 0x6

    .line 2125
    aget-object v43, v34, v22

    .line 2126
    aget-object v34, v34, v28

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v68, v5

    move-object/from16 v69, v68

    move/from16 v65, v19

    move/from16 v66, v65

    move/from16 v64, v34

    move-object/from16 v3, v35

    move-object/from16 v62, v37

    move/from16 v63, v38

    move-object/from16 v67, v43

    move-object/from16 v35, v11

    move-object/from16 v34, v12

    move v12, v13

    move-object/from16 v13, v33

    goto/16 :goto_a

    :cond_19
    move/from16 v44, v3

    move/from16 v3, v32

    const/16 v22, 0x6

    if-ne v8, v3, :cond_1a

    .line 2128
    aget-object v36, v34, v40

    .line 2129
    aget-object v32, v34, v41

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 2130
    aget-object v41, v34, v44

    .line 2131
    aget-object v43, v34, v3

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2132
    aget-object v43, v34, v22

    .line 2133
    aget-object v44, v34, v28

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .line 2134
    aget-object v59, v34, v29

    .line 2135
    aget-object v34, v34, v21

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v63, v3

    move-object/from16 v69, v5

    move/from16 v66, v19

    move/from16 v65, v34

    move-object/from16 v3, v35

    move-object/from16 v62, v41

    move-object/from16 v67, v43

    move/from16 v64, v44

    move-object/from16 v68, v59

    move-object/from16 v35, v11

    move-object/from16 v34, v12

    move v12, v13

    move-object/from16 v13, v36

    move/from16 v36, v40

    goto/16 :goto_a

    :cond_1a
    move/from16 v37, v40

    .line 2137
    aget-object v3, v34, v37

    const/16 v38, 0x3

    .line 2138
    aget-object v36, v34, v38

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    const/16 v33, 0x4

    .line 2139
    aget-object v40, v34, v33

    const/16 v32, 0x5

    .line 2140
    aget-object v41, v34, v32

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    const/16 v22, 0x6

    .line 2141
    aget-object v43, v34, v22

    .line 2142
    aget-object v44, v34, v28

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .line 2143
    aget-object v59, v34, v29

    .line 2144
    aget-object v60, v34, v21

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    .line 2145
    aget-object v61, v34, v25

    .line 2146
    aget-object v34, v34, v20

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v66, v34

    move-object/from16 v62, v40

    move/from16 v63, v41

    move-object/from16 v67, v43

    move/from16 v64, v44

    move-object/from16 v68, v59

    move/from16 v65, v60

    move-object/from16 v69, v61

    move-object/from16 v34, v12

    move v12, v13

    move-object v13, v3

    goto/16 :goto_8

    :cond_1b
    move-object v3, v5

    move-object v13, v3

    move-object/from16 v62, v13

    move-object/from16 v67, v62

    move-object/from16 v68, v67

    move-object/from16 v69, v68

    move-object/from16 v35, v11

    move-object/from16 v34, v12

    move/from16 v12, v19

    move/from16 v36, v12

    move/from16 v63, v36

    move/from16 v64, v63

    move/from16 v65, v64

    move/from16 v66, v65

    .line 2166
    :goto_a
    invoke-direct {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v40, v13

    .line 2167
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v4

    const-string v4, "CellInfo : currNetworkType: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2168
    const-string v4, "0"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v43, -0x2

    const-wide/16 v59, -0x2

    const-wide/16 v70, -0x2

    const-wide/16 v72, -0x2

    if-nez v4, :cond_23

    .line 2169
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 2170
    iget-object v4, v0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 2172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CellInfo : currNetworkType: info size: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2173
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v5, v19

    move v11, v5

    move v13, v11

    move/from16 v61, v13

    move/from16 v74, v61

    move/from16 v75, v74

    move/from16 v76, v75

    move/from16 v77, v76

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    move-object/from16 v79, v4

    move-object/from16 v4, v78

    check-cast v4, Landroid/telephony/CellInfo;

    .line 2176
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v78

    if-eqz v78, :cond_20

    move/from16 v78, v5

    .line 2177
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_1c

    .line 2178
    check-cast v4, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    .line 2179
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v5

    move-object/from16 v72, v4

    int-to-long v4, v5

    move/from16 v80, v11

    .line 2181
    invoke-virtual/range {v72 .. v72}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v11

    move/from16 v81, v13

    .line 2182
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v82, v10

    const-string v10, "CellInfo : CellInfoGsm > cellID: "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " tac "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " lac "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, -0x1

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move-wide/from16 v72, v4

    move/from16 v76, v11

    move-object/from16 v83, v15

    move/from16 v11, v80

    move/from16 v13, v81

    const/4 v5, -0x1

    goto/16 :goto_d

    :cond_1c
    move-object/from16 v82, v10

    move/from16 v80, v11

    move/from16 v81, v13

    .line 2183
    instance-of v5, v4, Landroid/telephony/CellInfoNr;

    if-eqz v5, :cond_1d

    .line 2184
    check-cast v4, Landroid/telephony/CellInfoNr;

    invoke-virtual {v4}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellIdentityNr;

    .line 2185
    invoke-virtual {v4}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v10

    .line 2186
    invoke-virtual {v4}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v13

    .line 2188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CellInfo : CellInfoNr > cellID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " tac "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lac "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move-wide/from16 v43, v10

    move/from16 v61, v13

    move-object/from16 v83, v15

    move/from16 v5, v78

    move/from16 v11, v80

    goto/16 :goto_d

    .line 2189
    :cond_1d
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_1e

    .line 2190
    check-cast v4, Landroid/telephony/CellInfoLte;

    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    .line 2191
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    int-to-long v10, v5

    .line 2192
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v5

    .line 2193
    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    .line 2194
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v83, v15

    const-string v15, "CellInfo : CellInfoLte > cellID: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " tac "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " lac "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v75, v4

    move/from16 v74, v5

    move-wide/from16 v59, v10

    :goto_c
    move/from16 v5, v78

    move/from16 v11, v80

    move/from16 v13, v81

    goto :goto_d

    :cond_1e
    move-object/from16 v83, v15

    .line 2195
    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_1f

    .line 2196
    check-cast v4, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v4}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    .line 2197
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v5

    int-to-long v10, v5

    .line 2199
    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    .line 2200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CellInfo : CellInfoWcdma > cellID: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " tac "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " lac "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v77, v4

    move-wide/from16 v70, v10

    move/from16 v5, v78

    move/from16 v13, v81

    const/4 v11, -0x1

    goto :goto_d

    .line 2202
    :cond_1f
    const-string v4, "CellInfo : CellInfo is not one of GSM/LTE/WCDMA"

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_c

    :cond_20
    move/from16 v78, v5

    move-object/from16 v82, v10

    move/from16 v80, v11

    move/from16 v81, v13

    move-object/from16 v83, v15

    .line 2205
    const-string v4, "CellInfo : CellInfo.isRegistered()=false"

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_c

    :goto_d
    move-object/from16 v4, v79

    move-object/from16 v10, v82

    move-object/from16 v15, v83

    goto/16 :goto_b

    :cond_21
    move/from16 v78, v5

    move/from16 v80, v11

    move/from16 v81, v13

    :goto_e
    move-object/from16 v82, v10

    move-object/from16 v83, v15

    goto :goto_f

    :cond_22
    move/from16 v5, v19

    move v11, v5

    move v13, v11

    move/from16 v61, v13

    move/from16 v74, v61

    move/from16 v75, v74

    move/from16 v76, v75

    move/from16 v77, v76

    goto :goto_e

    :goto_f
    move-wide/from16 v84, v43

    move/from16 v43, v11

    move-wide/from16 v10, v84

    move/from16 v44, v5

    move/from16 v15, v61

    move-wide/from16 v84, v70

    move/from16 v88, v75

    move/from16 v89, v76

    move/from16 v90, v77

    move-wide/from16 v70, v59

    move/from16 v60, v74

    :goto_10
    move-wide/from16 v86, v72

    move-object/from16 v59, v7

    const/4 v7, 0x2

    goto :goto_11

    :cond_23
    move-object/from16 v82, v10

    move-object/from16 v83, v15

    .line 2210
    const-string v4, "CellInfo : current network is not available"

    invoke-static {v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v13, v19

    move v15, v13

    move/from16 v88, v15

    move/from16 v89, v88

    move/from16 v90, v89

    move-wide/from16 v10, v43

    move-wide/from16 v84, v70

    move/from16 v43, v90

    move/from16 v44, v43

    move-wide/from16 v70, v59

    move/from16 v60, v44

    goto :goto_10

    .line 2246
    :goto_11
    invoke-direct {v0, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 2247
    array-length v5, v4

    move/from16 v37, v7

    const/16 v7, 0x19

    if-lt v5, v7, :cond_29

    const/16 v23, 0x0

    .line 2249
    aget-object v5, v4, v23

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    .line 2250
    aget-object v42, v4, v7

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    .line 2251
    aget-object v42, v4, v37

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    const/16 v38, 0x3

    .line 2252
    aget-object v42, v4, v38

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v73

    if-ne v8, v7, :cond_24

    move/from16 v28, v13

    move/from16 v25, v15

    move/from16 v17, v19

    move/from16 v18, v17

    move/from16 v20, v18

    move/from16 v100, v20

    move/from16 v101, v100

    move/from16 v103, v101

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v109, v108

    move/from16 v4, v61

    move/from16 v102, v73

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v94, -0x1

    const/16 v95, -0x1

    const/16 v96, -0x1

    const/16 v97, -0x1

    const/16 v98, -0x1

    const/16 v99, -0x1

    move v15, v7

    move/from16 v7, v72

    goto/16 :goto_16

    :cond_24
    move/from16 v7, v37

    if-ne v8, v7, :cond_25

    const/16 v33, 0x4

    .line 2258
    aget-object v7, v4, v33

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v32, 0x5

    .line 2259
    aget-object v17, v4, v32

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v22, 0x6

    .line 2260
    aget-object v18, v4, v22

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2261
    aget-object v4, v4, v28

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v98, v4

    move/from16 v22, v7

    move/from16 v28, v13

    move/from16 v25, v15

    move/from16 v21, v17

    move/from16 v94, v18

    move/from16 v17, v19

    move/from16 v18, v17

    move/from16 v20, v18

    move/from16 v100, v20

    move/from16 v101, v100

    move/from16 v103, v101

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v109, v108

    move/from16 v4, v61

    move/from16 v7, v72

    move/from16 v102, v73

    const/4 v15, 0x1

    const/16 v95, -0x1

    const/16 v96, -0x1

    const/16 v97, -0x1

    const/16 v99, -0x1

    goto/16 :goto_16

    :cond_25
    const/4 v7, 0x3

    const/16 v22, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    if-ne v8, v7, :cond_26

    .line 2265
    aget-object v7, v4, v33

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2266
    aget-object v17, v4, v32

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2267
    aget-object v18, v4, v22

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2268
    aget-object v22, v4, v28

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2269
    aget-object v28, v4, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2270
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2271
    aget-object v25, v4, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2272
    aget-object v4, v4, v20

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v99, v4

    move/from16 v94, v18

    move/from16 v18, v19

    move/from16 v20, v18

    move/from16 v100, v20

    move/from16 v101, v100

    move/from16 v103, v101

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v109, v108

    move/from16 v96, v21

    move/from16 v98, v22

    move/from16 v97, v25

    move/from16 v95, v28

    move/from16 v4, v61

    move/from16 v102, v73

    move/from16 v22, v7

    move/from16 v28, v13

    move/from16 v25, v15

    move/from16 v21, v17

    move/from16 v17, v109

    :goto_12
    move/from16 v7, v72

    :goto_13
    const/4 v15, 0x1

    goto/16 :goto_16

    :cond_26
    move/from16 v7, v33

    if-ne v8, v7, :cond_27

    .line 2274
    aget-object v74, v4, v7

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v32, 0x5

    .line 2275
    aget-object v74, v4, v32

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    const/16 v22, 0x6

    .line 2276
    aget-object v22, v4, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2277
    aget-object v28, v4, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2278
    aget-object v29, v4, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 2279
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2280
    aget-object v25, v4, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2281
    aget-object v20, v4, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2282
    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2283
    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v75, 0xe

    .line 2284
    aget-object v75, v4, v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v75

    const/16 v76, 0xf

    .line 2285
    aget-object v4, v4, v76

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v100, v17

    move/from16 v101, v18

    move/from16 v17, v19

    move/from16 v18, v17

    move/from16 v104, v18

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v109, v108

    move/from16 v99, v20

    move/from16 v96, v21

    move/from16 v94, v22

    move/from16 v97, v25

    move/from16 v98, v28

    move/from16 v95, v29

    move/from16 v102, v73

    move/from16 v21, v74

    move/from16 v103, v75

    move/from16 v20, v4

    :goto_14
    move/from16 v22, v7

    :goto_15
    move/from16 v28, v13

    move/from16 v25, v15

    move/from16 v4, v61

    goto/16 :goto_12

    :cond_27
    const/4 v7, 0x5

    if-ne v8, v7, :cond_28

    const/16 v33, 0x4

    .line 2287
    aget-object v32, v4, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    .line 2288
    aget-object v75, v4, v7

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v22, 0x6

    .line 2289
    aget-object v22, v4, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2290
    aget-object v28, v4, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2291
    aget-object v29, v4, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 2292
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2293
    aget-object v25, v4, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2294
    aget-object v20, v4, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2295
    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2296
    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v75, 0xe

    .line 2297
    aget-object v75, v4, v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v75

    const/16 v76, 0xf

    .line 2298
    aget-object v76, v4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    const/16 v77, 0x10

    .line 2299
    aget-object v77, v4, v77

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v77

    const/16 v78, 0x11

    .line 2300
    aget-object v78, v4, v78

    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v78

    const/16 v79, 0x12

    .line 2301
    aget-object v79, v4, v79

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v79

    const/16 v80, 0x13

    .line 2302
    aget-object v4, v4, v80

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v100, v17

    move/from16 v101, v18

    move/from16 v17, v19

    move/from16 v107, v17

    move/from16 v108, v107

    move/from16 v109, v108

    move/from16 v99, v20

    move/from16 v96, v21

    move/from16 v94, v22

    move/from16 v97, v25

    move/from16 v98, v28

    move/from16 v95, v29

    move/from16 v102, v73

    move/from16 v22, v74

    move/from16 v103, v75

    move/from16 v20, v76

    move/from16 v104, v77

    move/from16 v105, v78

    move/from16 v106, v79

    move/from16 v18, v4

    move/from16 v21, v7

    goto/16 :goto_15

    :cond_28
    const/16 v33, 0x4

    .line 2304
    aget-object v7, v4, v33

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v32, 0x5

    .line 2305
    aget-object v74, v4, v32

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    const/16 v22, 0x6

    .line 2306
    aget-object v22, v4, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2307
    aget-object v28, v4, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2308
    aget-object v29, v4, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 2309
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2310
    aget-object v25, v4, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2311
    aget-object v20, v4, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2312
    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2313
    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v75, 0xe

    .line 2314
    aget-object v75, v4, v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v75

    const/16 v76, 0xf

    .line 2315
    aget-object v76, v4, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    const/16 v77, 0x10

    .line 2316
    aget-object v77, v4, v77

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v77

    const/16 v78, 0x11

    .line 2317
    aget-object v78, v4, v78

    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v78

    const/16 v79, 0x12

    .line 2318
    aget-object v79, v4, v79

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v79

    const/16 v80, 0x13

    .line 2319
    aget-object v80, v4, v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v80

    const/16 v81, 0x14

    .line 2320
    aget-object v81, v4, v81

    invoke-static/range {v81 .. v81}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v81

    const/16 v91, 0x15

    .line 2321
    aget-object v91, v4, v91

    invoke-static/range {v91 .. v91}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v91

    const/16 v92, 0x16

    .line 2322
    aget-object v92, v4, v92

    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v92

    const/16 v93, 0x17

    .line 2323
    aget-object v4, v4, v93

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v100, v17

    move/from16 v101, v18

    move/from16 v99, v20

    move/from16 v96, v21

    move/from16 v94, v22

    move/from16 v97, v25

    move/from16 v98, v28

    move/from16 v95, v29

    move/from16 v102, v73

    move/from16 v21, v74

    move/from16 v103, v75

    move/from16 v20, v76

    move/from16 v104, v77

    move/from16 v105, v78

    move/from16 v106, v79

    move/from16 v18, v80

    move/from16 v107, v81

    move/from16 v108, v91

    move/from16 v109, v92

    move/from16 v17, v4

    goto/16 :goto_14

    :cond_29
    move/from16 v28, v13

    move/from16 v25, v15

    move/from16 v4, v19

    move v5, v4

    move v7, v5

    move/from16 v17, v7

    move/from16 v18, v17

    move/from16 v20, v18

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v94, v22

    move/from16 v95, v94

    move/from16 v96, v95

    move/from16 v97, v96

    move/from16 v98, v97

    move/from16 v99, v98

    move/from16 v100, v99

    move/from16 v101, v100

    move/from16 v102, v101

    move/from16 v103, v102

    move/from16 v104, v103

    move/from16 v105, v104

    move/from16 v106, v105

    move/from16 v107, v106

    move/from16 v108, v107

    move/from16 v109, v108

    goto/16 :goto_13

    .line 2337
    :goto_16
    invoke-direct {v0, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2a

    move/from16 v42, v15

    .line 2338
    array-length v15, v13

    move-object/from16 v29, v13

    const/4 v13, 0x3

    if-lt v15, v13, :cond_2a

    const/16 v23, 0x0

    .line 2339
    aget-object v15, v29, v23

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2340
    aget-object v15, v29, v42

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v37, 0x2

    .line 2341
    aget-object v38, v29, v37

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    .line 2342
    aget-object v72, v29, v13

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v33, 0x4

    .line 2343
    aget-object v72, v29, v33

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    const/16 v32, 0x5

    .line 2344
    aget-object v29, v29, v32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v111, v13

    move/from16 v13, v19

    move/from16 v113, v29

    move/from16 v110, v61

    move/from16 v112, v72

    goto :goto_17

    :cond_2a
    const/16 v23, 0x0

    move/from16 v13, v19

    move v15, v13

    move/from16 v110, v15

    move/from16 v111, v110

    move/from16 v112, v111

    move/from16 v113, v112

    :goto_17
    if-lez v8, :cond_4a

    move/from16 v19, v15

    move/from16 v15, v23

    :goto_18
    if-ge v15, v8, :cond_49

    move/from16 v29, v8

    .line 2354
    new-instance v8, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;

    invoke-direct {v8, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    if-nez v15, :cond_30

    .line 2356
    invoke-virtual {v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v0, v48

    .line 2357
    invoke-virtual {v8, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move-object/from16 v32, v0

    move/from16 v0, v46

    .line 2358
    invoke-virtual {v8, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v0, v47

    move/from16 v47, v15

    int-to-float v15, v0

    .line 2359
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v15, 0x1

    .line 2360
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    if-eqz v9, :cond_2b

    .line 2361
    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 2362
    invoke-virtual/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTelephonyEndcStatus()I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    goto :goto_19

    :cond_2b
    const/4 v15, 0x2

    .line 2364
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    .line 2366
    :goto_19
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2367
    invoke-virtual {v8, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    .line 2368
    invoke-virtual {v8, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    int-to-float v15, v5

    .line 2369
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    int-to-float v15, v4

    .line 2370
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    int-to-float v15, v7

    .line 2371
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    .line 2372
    invoke-virtual {v8, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2373
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2c

    .line 2374
    invoke-virtual {v8, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v15, v28

    .line 2375
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v28, v13

    move/from16 v13, v25

    .line 2376
    invoke-virtual {v8, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v48, v4

    move/from16 v25, v5

    move/from16 v61, v7

    move/from16 v78, v43

    move/from16 v5, v44

    move-object/from16 v73, v59

    move/from16 v7, v60

    move-wide/from16 v71, v70

    move-wide/from16 v76, v84

    move-wide/from16 v74, v86

    move/from16 v43, v90

    move/from16 v4, v102

    move/from16 v59, v0

    move-object/from16 v70, v3

    move-object/from16 v44, v9

    move/from16 v60, v12

    move-object/from16 v0, v83

    move/from16 v12, v88

    :goto_1a
    move/from16 v9, v89

    goto/16 :goto_1d

    :cond_2c
    move/from16 v15, v28

    move/from16 v28, v13

    move/from16 v13, v25

    .line 2377
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2d

    move/from16 v48, v4

    move/from16 v25, v5

    move-wide/from16 v4, v70

    .line 2378
    invoke-virtual {v8, v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v61, v7

    move/from16 v7, v60

    .line 2379
    invoke-virtual {v8, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v60, v12

    move/from16 v12, v88

    .line 2380
    invoke-virtual {v8, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move-object/from16 v70, v3

    move-wide/from16 v71, v4

    move/from16 v78, v43

    move/from16 v5, v44

    move-object/from16 v73, v59

    move-wide/from16 v76, v84

    move-wide/from16 v74, v86

    move/from16 v43, v90

    move/from16 v4, v102

    move/from16 v59, v0

    move-object/from16 v44, v9

    move-object/from16 v0, v83

    goto :goto_1a

    :cond_2d
    move/from16 v48, v4

    move/from16 v25, v5

    move/from16 v61, v7

    move/from16 v7, v60

    move-wide/from16 v4, v70

    move-object/from16 v70, v3

    move/from16 v60, v12

    move-object/from16 v3, v59

    move/from16 v12, v88

    .line 2381
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v59

    if-nez v59, :cond_2f

    move/from16 v59, v0

    move-object/from16 v0, v83

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v71

    if-eqz v71, :cond_2e

    move-object/from16 v73, v3

    move-wide/from16 v71, v4

    move/from16 v5, v44

    move-wide/from16 v3, v84

    move-wide/from16 v74, v86

    move-object/from16 v44, v9

    move/from16 v9, v89

    goto :goto_1c

    :cond_2e
    move-wide/from16 v71, v4

    move-object v5, v3

    move-wide/from16 v3, v86

    .line 2386
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-object/from16 v73, v5

    move/from16 v5, v44

    .line 2387
    invoke-virtual {v8, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move-object/from16 v44, v9

    move/from16 v9, v89

    .line 2388
    invoke-virtual {v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move-wide/from16 v74, v3

    move/from16 v78, v43

    move-wide/from16 v76, v84

    move/from16 v43, v90

    :goto_1b
    move/from16 v4, v102

    goto :goto_1d

    :cond_2f
    move/from16 v59, v0

    move-object/from16 v0, v83

    move-object/from16 v73, v3

    move-wide/from16 v71, v4

    move/from16 v5, v44

    move-object/from16 v44, v9

    move/from16 v9, v89

    move-wide/from16 v3, v84

    move-wide/from16 v74, v86

    .line 2382
    :goto_1c
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v76, v3

    move/from16 v3, v43

    .line 2383
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v4, v90

    .line 2384
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v78, v3

    move/from16 v43, v4

    goto :goto_1b

    :goto_1d
    int-to-float v3, v4

    .line 2390
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v79, v4

    const/4 v3, -0x1

    int-to-float v4, v3

    .line 2391
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2392
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2393
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2394
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2395
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v3, v50

    move/from16 v50, v21

    move/from16 v21, v22

    move-object/from16 v22, v40

    move/from16 v40, v3

    move/from16 v3, v57

    move-object/from16 v57, v27

    move-object/from16 v27, v45

    move/from16 v45, v3

    move/from16 v3, v55

    move/from16 v55, v47

    move/from16 v47, v49

    move/from16 v49, v51

    move/from16 v51, v53

    move/from16 v53, v3

    move/from16 v3, v63

    move-object/from16 v63, v62

    move/from16 v62, v3

    move/from16 v80, v19

    move-object/from16 v3, v26

    move-wide/from16 v87, v71

    move/from16 v19, v94

    move/from16 v83, v95

    move/from16 v84, v96

    move/from16 v85, v97

    move/from16 v81, v98

    move/from16 v71, v99

    move/from16 v89, v100

    move/from16 v90, v103

    move/from16 v92, v104

    move/from16 v93, v105

    move/from16 v94, v106

    move/from16 v96, v107

    move/from16 v97, v108

    move/from16 v98, v109

    move/from16 v86, v110

    move/from16 v91, v111

    move/from16 v95, v112

    move/from16 v99, v113

    move/from16 v72, v7

    move v7, v12

    move-object/from16 v12, v73

    move/from16 v73, v101

    goto/16 :goto_2f

    :cond_30
    move/from16 v61, v7

    move/from16 v78, v43

    move-object/from16 v32, v48

    move-object/from16 v73, v59

    move/from16 v7, v60

    move-wide/from16 v71, v70

    move-object/from16 v0, v83

    move-wide/from16 v76, v84

    move-wide/from16 v74, v86

    move/from16 v43, v90

    move/from16 v79, v102

    move-object/from16 v70, v3

    move/from16 v48, v4

    move/from16 v60, v12

    move v4, v15

    move/from16 v15, v28

    move/from16 v59, v47

    move/from16 v12, v88

    const/4 v3, 0x1

    move/from16 v28, v13

    move/from16 v13, v25

    move/from16 v25, v5

    move/from16 v5, v44

    move-object/from16 v44, v9

    move/from16 v9, v89

    if-ne v4, v3, :cond_35

    move-object/from16 v3, v82

    .line 2397
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v3, v41

    .line 2398
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v3, v49

    .line 2399
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v47, v3

    move/from16 v49, v4

    move/from16 v3, v50

    int-to-float v4, v3

    .line 2400
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v4, 0x2

    .line 2401
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2402
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v4, v40

    .line 2403
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {v8, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v40, v3

    move/from16 v3, v36

    .line 2405
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v3, v22

    move-object/from16 v22, v4

    int-to-float v4, v3

    .line 2406
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v4, v21

    move/from16 v21, v3

    int-to-float v3, v4

    .line 2407
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v50, v4

    move/from16 v3, v94

    int-to-float v4, v3

    .line 2408
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v4, v19

    .line 2409
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 2411
    invoke-virtual {v8, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2412
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2413
    invoke-virtual {v8, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move-wide/from16 v114, v71

    move/from16 v71, v12

    move-object/from16 v12, v73

    move-wide/from16 v72, v114

    move/from16 v19, v3

    move/from16 v80, v4

    :goto_1e
    move/from16 v4, v98

    goto :goto_20

    .line 2414
    :cond_31
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_32

    move/from16 v19, v3

    move/from16 v80, v4

    move-wide/from16 v3, v71

    .line 2415
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2416
    invoke-virtual {v8, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2417
    invoke-virtual {v8, v12}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v71, v12

    move-object/from16 v12, v73

    move-wide/from16 v72, v3

    goto :goto_1e

    :cond_32
    move/from16 v19, v3

    move/from16 v80, v4

    move-wide/from16 v3, v71

    move/from16 v71, v12

    move-object/from16 v12, v73

    .line 2418
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v72

    if-nez v72, :cond_33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_34

    :cond_33
    move-wide/from16 v72, v3

    move-wide/from16 v3, v76

    goto :goto_1f

    :cond_34
    move-wide/from16 v72, v3

    move-wide/from16 v3, v74

    .line 2423
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2424
    invoke-virtual {v8, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2425
    invoke-virtual {v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_1e

    .line 2419
    :goto_1f
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v76, v3

    move/from16 v3, v78

    .line 2420
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v4, v43

    .line 2421
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_1e

    :goto_20
    int-to-float v3, v4

    .line 2427
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v81, v4

    const/4 v3, -0x1

    int-to-float v4, v3

    .line 2428
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2429
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2430
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2431
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2432
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v3, v57

    move-object/from16 v57, v27

    move-object/from16 v27, v45

    move/from16 v45, v3

    move/from16 v3, v55

    move/from16 v55, v49

    move/from16 v49, v51

    move/from16 v51, v53

    move/from16 v53, v3

    move/from16 v3, v63

    move-object/from16 v63, v62

    move/from16 v62, v3

    move-object/from16 v3, v26

    move-wide/from16 v87, v72

    move/from16 v83, v95

    move/from16 v84, v96

    move/from16 v85, v97

    move/from16 v89, v100

    move/from16 v73, v101

    move/from16 v90, v103

    move/from16 v92, v104

    move/from16 v93, v105

    move/from16 v94, v106

    move/from16 v96, v107

    move/from16 v97, v108

    move/from16 v98, v109

    move/from16 v86, v110

    move/from16 v91, v111

    move/from16 v95, v112

    move/from16 v72, v7

    move/from16 v7, v71

    move/from16 v71, v99

    :goto_21
    move/from16 v99, v113

    goto/16 :goto_2f

    :cond_35
    move-wide/from16 v80, v71

    move/from16 v71, v12

    move-object/from16 v12, v73

    move-wide/from16 v72, v80

    move/from16 v3, v50

    move/from16 v50, v21

    move/from16 v21, v22

    move-object/from16 v22, v40

    move/from16 v40, v3

    move/from16 v80, v19

    move/from16 v47, v49

    move/from16 v19, v94

    move/from16 v81, v98

    const/4 v3, 0x2

    if-ne v4, v3, :cond_3a

    move-object/from16 v3, v35

    .line 2434
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v3, v34

    .line 2435
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v3, v51

    .line 2436
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v49, v3

    move/from16 v51, v4

    move/from16 v3, v52

    int-to-float v4, v3

    .line 2437
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v4, 0x2

    .line 2438
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2439
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v4, v62

    .line 2440
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v8, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v3, v63

    .line 2442
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v62, v3

    move-object/from16 v63, v4

    move/from16 v3, v95

    int-to-float v4, v3

    .line 2443
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v83, v3

    move/from16 v4, v96

    int-to-float v3, v4

    .line 2444
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v84, v4

    move/from16 v3, v97

    int-to-float v4, v3

    .line 2445
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v4, v110

    .line 2446
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2447
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v85

    if-eqz v85, :cond_36

    .line 2448
    invoke-virtual {v8, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2449
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2450
    invoke-virtual {v8, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v85, v3

    move/from16 v86, v4

    move-wide/from16 v87, v72

    move/from16 v4, v99

    move/from16 v72, v7

    move/from16 v7, v71

    goto :goto_24

    .line 2451
    :cond_36
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v85

    if-eqz v85, :cond_37

    move/from16 v85, v3

    move/from16 v86, v4

    move-wide/from16 v3, v72

    .line 2452
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2453
    invoke-virtual {v8, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v72, v7

    move/from16 v7, v71

    .line 2454
    invoke-virtual {v8, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move-wide/from16 v87, v3

    :goto_22
    move/from16 v4, v99

    goto :goto_24

    :cond_37
    move/from16 v85, v3

    move/from16 v86, v4

    move-wide/from16 v3, v72

    move/from16 v72, v7

    move/from16 v7, v71

    .line 2455
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v71

    if-nez v71, :cond_38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v71

    if-eqz v71, :cond_39

    :cond_38
    move-wide/from16 v87, v3

    move-wide/from16 v3, v76

    goto :goto_23

    :cond_39
    move-wide/from16 v87, v3

    move-wide/from16 v3, v74

    .line 2460
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2461
    invoke-virtual {v8, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2462
    invoke-virtual {v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_22

    .line 2456
    :goto_23
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v76, v3

    move/from16 v3, v78

    .line 2457
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v4, v43

    .line 2458
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_22

    :goto_24
    int-to-float v3, v4

    .line 2464
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v71, v4

    const/4 v3, -0x1

    int-to-float v4, v3

    .line 2465
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2466
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2467
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2468
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2469
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v3, v57

    move-object/from16 v57, v27

    move-object/from16 v27, v45

    move/from16 v45, v3

    move/from16 v3, v55

    move/from16 v55, v51

    move/from16 v51, v53

    move/from16 v53, v3

    move-object/from16 v3, v26

    move/from16 v89, v100

    move/from16 v73, v101

    move/from16 v90, v103

    move/from16 v92, v104

    move/from16 v93, v105

    move/from16 v94, v106

    move/from16 v96, v107

    move/from16 v97, v108

    move/from16 v98, v109

    move/from16 v91, v111

    :goto_25
    move/from16 v95, v112

    goto/16 :goto_21

    :cond_3a
    move/from16 v3, v63

    move-object/from16 v63, v62

    move/from16 v62, v3

    move/from16 v49, v51

    move-wide/from16 v87, v72

    move/from16 v83, v95

    move/from16 v84, v96

    move/from16 v85, v97

    move/from16 v86, v110

    const/4 v3, 0x3

    move/from16 v72, v7

    move/from16 v7, v71

    move/from16 v71, v99

    if-ne v4, v3, :cond_3f

    move-object/from16 v3, v30

    .line 2471
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 2472
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v3, v53

    .line 2473
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v51, v3

    move/from16 v53, v4

    move/from16 v3, v54

    int-to-float v4, v3

    .line 2474
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v4, 0x2

    .line 2475
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2476
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v4, v67

    .line 2477
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v8, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v3, v64

    .line 2479
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v3, v101

    int-to-float v4, v3

    .line 2480
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v73, v3

    move/from16 v4, v100

    int-to-float v3, v4

    .line 2481
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v89, v4

    move/from16 v3, v103

    int-to-float v4, v3

    .line 2482
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v4, v111

    .line 2483
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2484
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v90

    if-eqz v90, :cond_3b

    .line 2485
    invoke-virtual {v8, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2486
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2487
    invoke-virtual {v8, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v90, v3

    move/from16 v91, v4

    :goto_26
    move/from16 v4, v20

    goto :goto_28

    .line 2488
    :cond_3b
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v90

    if-eqz v90, :cond_3c

    move/from16 v90, v3

    move/from16 v91, v4

    move-wide/from16 v3, v87

    .line 2489
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v3, v72

    .line 2490
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2491
    invoke-virtual {v8, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_26

    :cond_3c
    move/from16 v90, v3

    move/from16 v91, v4

    move/from16 v3, v72

    .line 2492
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    :cond_3d
    move/from16 v72, v3

    move-wide/from16 v3, v76

    goto :goto_27

    :cond_3e
    move/from16 v72, v3

    move-wide/from16 v3, v74

    .line 2497
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2498
    invoke-virtual {v8, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2499
    invoke-virtual {v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_26

    .line 2493
    :goto_27
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v76, v3

    move/from16 v3, v78

    .line 2494
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v4, v43

    .line 2495
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_26

    :goto_28
    int-to-float v3, v4

    .line 2501
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v20, v4

    const/4 v3, -0x1

    int-to-float v4, v3

    .line 2502
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2503
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2504
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2505
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2506
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v3, v57

    move-object/from16 v57, v27

    move-object/from16 v27, v45

    move/from16 v45, v3

    move/from16 v3, v55

    move/from16 v55, v53

    move/from16 v53, v3

    move-object/from16 v3, v26

    move/from16 v92, v104

    move/from16 v93, v105

    move/from16 v94, v106

    move/from16 v96, v107

    move/from16 v97, v108

    move/from16 v98, v109

    goto/16 :goto_25

    :cond_3f
    move/from16 v51, v53

    move/from16 v89, v100

    move/from16 v73, v101

    move/from16 v90, v103

    move/from16 v91, v111

    const/4 v3, 0x4

    if-ne v4, v3, :cond_44

    move-object/from16 v3, v39

    .line 2508
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v3, v24

    .line 2509
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v3, v55

    .line 2510
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v53, v3

    move/from16 v55, v4

    move/from16 v3, v56

    int-to-float v4, v3

    .line 2511
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v4, 0x2

    .line 2512
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2513
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v4, v68

    .line 2514
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v8, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v3, v65

    .line 2516
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v3, v104

    int-to-float v4, v3

    .line 2517
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v92, v3

    move/from16 v4, v105

    int-to-float v3, v4

    .line 2518
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v93, v4

    move/from16 v3, v106

    int-to-float v4, v3

    .line 2519
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v4, v112

    .line 2520
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2521
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v94

    if-eqz v94, :cond_40

    .line 2522
    invoke-virtual {v8, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2523
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2524
    invoke-virtual {v8, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v94, v3

    move/from16 v95, v4

    :goto_29
    move/from16 v4, v18

    goto :goto_2b

    .line 2525
    :cond_40
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v94

    if-eqz v94, :cond_41

    move/from16 v94, v3

    move/from16 v95, v4

    move-wide/from16 v3, v87

    .line 2526
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v3, v72

    .line 2527
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2528
    invoke-virtual {v8, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_29

    :cond_41
    move/from16 v94, v3

    move/from16 v95, v4

    move/from16 v3, v72

    .line 2529
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    :cond_42
    move/from16 v72, v3

    move-wide/from16 v3, v76

    goto :goto_2a

    :cond_43
    move/from16 v72, v3

    move-wide/from16 v3, v74

    .line 2534
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2535
    invoke-virtual {v8, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2536
    invoke-virtual {v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_29

    .line 2530
    :goto_2a
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v76, v3

    move/from16 v3, v78

    .line 2531
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v4, v43

    .line 2532
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_29

    :goto_2b
    int-to-float v3, v4

    .line 2538
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v18, v4

    const/4 v3, -0x1

    int-to-float v4, v3

    .line 2539
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2540
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2541
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2542
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2543
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move/from16 v3, v57

    move-object/from16 v57, v27

    move-object/from16 v27, v45

    move/from16 v45, v3

    move-object/from16 v3, v26

    move/from16 v96, v107

    move/from16 v97, v108

    move/from16 v98, v109

    goto/16 :goto_21

    :cond_44
    move-object/from16 v3, v45

    move/from16 v53, v55

    move/from16 v92, v104

    move/from16 v93, v105

    move/from16 v94, v106

    move/from16 v95, v112

    move/from16 v55, v4

    .line 2545
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v4, v27

    .line 2546
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move-object/from16 v27, v3

    move/from16 v3, v57

    .line 2547
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v45, v3

    move-object/from16 v57, v4

    move/from16 v3, v58

    int-to-float v4, v3

    .line 2548
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v4, 0x2

    .line 2549
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    .line 2550
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    move-object/from16 v4, v69

    .line 2551
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {v8, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v3, v66

    .line 2553
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v3, v107

    int-to-float v4, v3

    .line 2554
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v96, v3

    move/from16 v4, v108

    int-to-float v3, v4

    .line 2555
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v97, v4

    move/from16 v3, v109

    int-to-float v4, v3

    .line 2556
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v4, v113

    .line 2557
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2558
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v98

    if-eqz v98, :cond_45

    .line 2559
    invoke-virtual {v8, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2560
    invoke-virtual {v8, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2561
    invoke-virtual {v8, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    move/from16 v98, v3

    move/from16 v99, v4

    :goto_2c
    move/from16 v4, v17

    goto :goto_2e

    .line 2562
    :cond_45
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v98

    if-eqz v98, :cond_46

    move/from16 v98, v3

    move/from16 v99, v4

    move-wide/from16 v3, v87

    .line 2563
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v3, v72

    .line 2564
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2565
    invoke-virtual {v8, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_2c

    :cond_46
    move/from16 v98, v3

    move/from16 v99, v4

    move/from16 v3, v72

    .line 2566
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    :cond_47
    move/from16 v72, v3

    move-wide/from16 v3, v76

    goto :goto_2d

    :cond_48
    move/from16 v72, v3

    move-wide/from16 v3, v74

    .line 2571
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2572
    invoke-virtual {v8, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2573
    invoke-virtual {v8, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_2c

    .line 2567
    :goto_2d
    invoke-virtual {v8, v3, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move-wide/from16 v76, v3

    move/from16 v3, v78

    .line 2568
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v4, v43

    .line 2569
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_2c

    :goto_2e
    int-to-float v3, v4

    .line 2575
    invoke-virtual {v8, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    move/from16 v17, v4

    const/4 v3, -0x1

    int-to-float v4, v3

    .line 2576
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2577
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2578
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2579
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2580
    invoke-virtual {v8, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move-object/from16 v3, v26

    .line 2582
    :goto_2f
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v55, 0x1

    move-object/from16 v8, v22

    move/from16 v22, v21

    move/from16 v21, v50

    move/from16 v50, v40

    move-object/from16 v40, v8

    move/from16 v8, v45

    move-object/from16 v45, v27

    move-object/from16 v27, v57

    move/from16 v57, v8

    move-object/from16 v8, v63

    move/from16 v63, v62

    move-object/from16 v62, v8

    move-object/from16 v26, v3

    move/from16 v8, v29

    move/from16 v55, v53

    move-object/from16 v3, v70

    move/from16 v101, v73

    move/from16 v102, v79

    move/from16 v110, v86

    move/from16 v100, v89

    move/from16 v103, v90

    move/from16 v111, v91

    move/from16 v104, v92

    move/from16 v105, v93

    move/from16 v106, v94

    move/from16 v112, v95

    move/from16 v107, v96

    move/from16 v108, v97

    move/from16 v109, v98

    move/from16 v113, v99

    move/from16 v89, v9

    move/from16 v94, v19

    move/from16 v90, v43

    move-object/from16 v9, v44

    move/from16 v53, v51

    move/from16 v99, v71

    move/from16 v43, v78

    move/from16 v19, v80

    move/from16 v98, v81

    move/from16 v95, v83

    move/from16 v96, v84

    move/from16 v97, v85

    move-wide/from16 v70, v87

    move-object/from16 v83, v0

    move/from16 v44, v5

    move/from16 v88, v7

    move/from16 v5, v25

    move/from16 v51, v49

    move/from16 v7, v61

    move-wide/from16 v86, v74

    move-wide/from16 v84, v76

    move-object/from16 v0, p0

    move/from16 v25, v13

    move/from16 v13, v28

    move/from16 v49, v47

    move/from16 v47, v59

    move-object/from16 v59, v12

    move/from16 v28, v15

    move/from16 v12, v60

    move/from16 v60, v72

    move v15, v4

    move/from16 v4, v48

    move-object/from16 v48, v32

    goto/16 :goto_18

    :cond_49
    move-object/from16 v3, v26

    goto/16 :goto_35

    :cond_4a
    move/from16 v61, v7

    move/from16 v15, v28

    move/from16 v78, v43

    move-object/from16 v32, v48

    move/from16 v72, v60

    move-object/from16 v0, v83

    move-wide/from16 v76, v84

    move-wide/from16 v74, v86

    move/from16 v7, v88

    move/from16 v43, v90

    move/from16 v79, v102

    move/from16 v48, v4

    move/from16 v60, v12

    move/from16 v28, v13

    move/from16 v13, v25

    move-object/from16 v12, v59

    move-wide/from16 v87, v70

    move-object/from16 v70, v3

    move/from16 v25, v5

    move-object/from16 v3, v26

    move/from16 v5, v44

    move/from16 v59, v47

    move-object/from16 v44, v9

    move/from16 v9, v89

    .line 2585
    new-instance v4, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;

    move-object/from16 v8, p0

    invoke-direct {v4, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    move-object/from16 v8, v44

    .line 2586
    invoke-virtual {v4, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTechType(Ljava/lang/String;)V

    move-object/from16 v3, v32

    .line 2587
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandNumber(Ljava/lang/String;)V

    move/from16 v3, v46

    .line 2588
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setArfcn(I)V

    move/from16 v3, v59

    int-to-float v3, v3

    .line 2589
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setBandWidth(F)V

    const/4 v3, 0x1

    .line 2590
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsPrimary(I)V

    if-eqz v8, :cond_4b

    .line 2591
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2592
    invoke-virtual/range {p0 .. p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTelephonyEndcStatus()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    :goto_30
    move-object/from16 v3, v70

    goto :goto_31

    :cond_4b
    const/4 v3, 0x2

    .line 2594
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setIsEndcAnchor(I)V

    goto :goto_30

    .line 2596
    :goto_31
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setModulationType(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {v4, v14}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTransmissionMode(I)V

    move/from16 v3, v60

    .line 2598
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setNumberLayers(I)V

    move/from16 v3, v25

    int-to-float v3, v3

    .line 2599
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrp(F)V

    move/from16 v3, v48

    int-to-float v3, v3

    .line 2600
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRsrq(F)V

    move/from16 v3, v61

    int-to-float v3, v3

    .line 2601
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setSinr(F)V

    move/from16 v3, v28

    .line 2602
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setPci(I)V

    .line 2603
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2604
    invoke-virtual {v4, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2605
    invoke-virtual {v4, v15}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2606
    invoke-virtual {v4, v13}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    :goto_32
    move/from16 v0, v79

    goto :goto_34

    .line 2607
    :cond_4c
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move-wide/from16 v10, v87

    .line 2608
    invoke-virtual {v4, v10, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v3, v72

    .line 2609
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2610
    invoke-virtual {v4, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_32

    .line 2611
    :cond_4d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4e
    move-wide/from16 v0, v76

    goto :goto_33

    :cond_4f
    move-wide/from16 v0, v74

    .line 2616
    invoke-virtual {v4, v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    .line 2617
    invoke-virtual {v4, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    .line 2618
    invoke-virtual {v4, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_32

    .line 2612
    :goto_33
    invoke-virtual {v4, v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCellId(J)V

    move/from16 v3, v78

    .line 2613
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setTac(I)V

    move/from16 v0, v43

    .line 2614
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setLac(I)V

    goto :goto_32

    :goto_34
    int-to-float v0, v0

    .line 2620
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRssi(F)V

    const/4 v3, -0x1

    int-to-float v0, v3

    .line 2621
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setRscp(F)V

    .line 2622
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrp(F)V

    .line 2623
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRsrq(F)V

    .line 2624
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiRssi(F)V

    .line 2625
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->setCsiSinr(F)V

    move-object/from16 v3, v26

    .line 2626
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2629
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDlCarrierLog(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move/from16 v7, v23

    .line 2630
    :goto_36
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_50

    .line 2631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDlCarrierLog(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;

    invoke-virtual {v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$DlCarrierLog;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_50
    return-object v3
.end method

.method public greylist getEndcCapability()I
    .locals 2

    .line 1247
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1248
    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcStatusInternal()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    :cond_0
    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getEndcStatus()I
    .locals 3

    .line 1261
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1262
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1265
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, -0x2

    return p0
.end method

.method public greylist getEndcStatusInternal()I
    .locals 3

    .line 1229
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1230
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 1234
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 1237
    :cond_1
    iget-boolean p0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    return p0

    :cond_2
    return v1
.end method

.method public greylist getNetworkLog()Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;
    .locals 5

    .line 2752
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getNetworkLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2758
    :cond_0
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2760
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2764
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    .line 2765
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2766
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2769
    :cond_1
    const-string v2, "-2"

    move-object v1, v2

    .line 2771
    :goto_0
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setMcc(Ljava/lang/String;)V

    .line 2772
    invoke-virtual {v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setMnc(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcCapability()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setEndcCapability(I)V

    .line 2774
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$NetworkLog;->setEndcConnectionStatus(I)V

    .line 2777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEndcUplinkLog(): mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mnc="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endcCapability="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcCapability()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endcConnectionStatus="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcStatus()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2777
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getRrcLog()Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;
    .locals 5

    .line 2716
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getRrcLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRrcLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2721
    :cond_0
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2722
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getNetworkTypeWithENDC()I

    move-result v1

    const/4 v2, 0x1

    .line 2723
    const-string v3, "-1"

    const/4 v4, 0x3

    if-ne v1, v2, :cond_1

    .line 2724
    invoke-virtual {p0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2727
    invoke-virtual {p0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    .line 2728
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v1, v4, :cond_3

    .line 2730
    invoke-virtual {p0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 2731
    invoke-virtual {p0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonRFConfig(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    goto :goto_0

    .line 2733
    :cond_3
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setNrRrcState(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->setLteRrcState(Ljava/lang/String;)V

    .line 2736
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRrcLog getNetworkTypeWithENDC(): ="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2738
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRrcLog():  lteRrcState="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->getLteRrcState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nrRrcState="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2740
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$RrcLog;->getNrRrcState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2738
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getSettingsLog()Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;
    .locals 11

    .line 2795
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "SettingsLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2800
    :cond_0
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2801
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getWfcSetting(I)Ljava/lang/String;

    move-result-object v1

    .line 2802
    const-string v2, "wifi_on"

    invoke-direct {p0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2803
    const-string v3, "data_roaming"

    invoke-direct {p0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2804
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getRttSetting()Ljava/lang/String;

    move-result-object v4

    .line 2805
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getRttTranscriptSetting()Ljava/lang/String;

    move-result-object v5

    .line 2806
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getNetworkModeSetting()Ljava/lang/String;

    move-result-object v6

    .line 2807
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierConfigVersion()Ljava/lang/String;

    move-result-object v7

    .line 2808
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getVonrSetting()Ljava/lang/String;

    move-result-object v8

    .line 2809
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getVonrStatus()Ljava/lang/String;

    move-result-object v9

    .line 2810
    invoke-virtual {v0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setWifiCalling(Ljava/lang/String;)V

    .line 2811
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setWifi(Ljava/lang/String;)V

    .line 2812
    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setRoaming(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {v0, v4}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setRtt(Ljava/lang/String;)V

    .line 2814
    invoke-virtual {v0, v5}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setRttTranscript(Ljava/lang/String;)V

    .line 2815
    invoke-virtual {v0, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setNetworkMode(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v0, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setCarrierConfigVersion(Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierSa5gBandConfig()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setCarrierSa5gBandConfig(Ljava/util/Map;)V

    .line 2818
    invoke-virtual {v0, v8}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setVonrSetting(Ljava/lang/String;)V

    .line 2819
    invoke-virtual {v0, v9}, Lcom/tmobile/echolocate/DataMetrics5gSa$SettingsLog;->setVonrStatus(Ljava/lang/String;)V

    .line 2821
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SettingsLog(): wifiCalling="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roaming="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rtt="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rttTranscript="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkMode="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierConfigVersion="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierSa5gBandConfig="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCarrierSa5gBandConfig()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", vonrSetting="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", vonrStatus="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2821
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getTelephonyEndcStatus()I
    .locals 2

    .line 1277
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getEndcStatusInternal()I

    move-result p0

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTelephonyEndcStatus()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return p0
.end method

.method public greylist getUiLog()Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;
    .locals 7

    .line 2845
    const-string v0, "2"

    const-string v1, "1"

    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v3, "diagandroid.phone.receiveDetailedCallState"

    const-string v4, "getUiLog()"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    iget-boolean v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v2, :cond_0

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUiLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2853
    :cond_0
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    .line 2854
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v2

    .line 2855
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getUiLogNetworkType()Ljava/lang/String;

    move-result-object v3

    .line 2857
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isSatelliteConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2859
    const-string v3, "SAT_MODE"

    move-object v0, v3

    goto/16 :goto_1

    .line 2860
    :cond_1
    const-string v4, "-1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2861
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :pswitch_1
    const-string v5, "4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_2
    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 2876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get5gUiLog(): default on uiNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 2874
    :pswitch_5
    const-string v0, "2G"

    goto :goto_1

    .line 2870
    :pswitch_6
    const-string v0, "3G"

    goto :goto_1

    .line 2866
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getOverrideNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2863
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getOverrideNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2878
    :cond_7
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2879
    const-string v0, "NO_SIGNAL"

    goto :goto_1

    .line 2881
    :cond_8
    const-string v0, "NO_ICON"

    .line 2883
    :goto_1
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getDataActivityType()Ljava/lang/String;

    move-result-object v1

    .line 2884
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getAntennaBars()I

    move-result v2

    .line 2886
    new-instance v4, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;

    invoke-direct {v4, p0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;-><init>(Lcom/tmobile/echolocate/DataMetrics5gSa;)V

    .line 2888
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentTime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setTimestamp(J)V

    .line 2889
    invoke-virtual {v4, v3}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setNetworkType(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {v4, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setUiNetworkType(Ljava/lang/String;)V

    .line 2891
    invoke-virtual {v4, v1}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setUiDataTransmission(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v4, v2}, Lcom/tmobile/echolocate/DataMetrics5gSa$UiLog;->setUiNumberOfAntennaBars(I)V

    .line 2894
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUiLog(): timestamp="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", networkType="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uiNetworkType="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uiDataTransmission="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uiNumberOfAntennaBars="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2894
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public greylist getUlCarrierLog()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;",
            ">;"
        }
    .end annotation

    .line 2647
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getUlCarrierLog()"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUlCarrierLog(): mShouldReport="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mShouldReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 2652
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2654
    const-string v2, "-2"

    .line 2657
    const-string v5, "-2"

    const/4 v0, 0x5

    .line 2660
    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, -0x2

    const/high16 v8, -0x40000000    # -2.0f

    const/4 v6, 0x1

    .line 2662
    :try_start_0
    array-length v4, v0

    const/4 v9, 0x7

    if-lt v4, v9, :cond_2

    const/4 v4, 0x0

    .line 2663
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v9, v4, 0x4

    if-lez v4, :cond_1

    .line 2665
    array-length v4, v0

    if-lt v4, v9, :cond_1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v9, :cond_2

    add-int/lit8 v10, v4, 0x1

    .line 2667
    aget-object v11, v0, v4

    invoke-direct {p0, v11}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v11, v4, 0x2

    .line 2668
    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v10, v4, 0x3

    .line 2669
    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    add-int/lit8 v11, v4, 0x4

    .line 2670
    aget-object v5, v0, v10

    .line 2671
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v10, v6, 0x1

    move-object v1, p0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v10

    move v4, v11

    goto :goto_0

    :catch_0
    move-exception v0

    move v6, v10

    goto :goto_1

    :catch_1
    move-exception v0

    move v6, v10

    goto :goto_2

    :catch_2
    move-exception v0

    move v6, v10

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 2674
    :cond_1
    :try_start_2
    const-string v0, "getUlCarrierLog(): Cant getValues, incorrect Array from CP!!"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    .line 2675
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v9, 0x2

    move-object v1, p0

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    return-object v7

    :catch_6
    move-exception v0

    move v6, v9

    goto :goto_1

    :catch_7
    move-exception v0

    move v6, v9

    goto :goto_2

    :catch_8
    move-exception v0

    move v6, v9

    goto :goto_3

    .line 2687
    :goto_1
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2688
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUlCarrierLog(): Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_4

    .line 2683
    :goto_2
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 2685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUlCarrierLog(): ArrayIndexOutOfBoundsException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_4

    .line 2679
    :goto_3
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tmobile/echolocate/DataMetrics5gSa;->fillUlCarrier(Ljava/lang/String;ILjava/lang/Float;Ljava/lang/String;I)Lcom/tmobile/echolocate/DataMetrics5gSa$UlCarrierLog;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2680
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUlCarrierLog(): NumberFormatException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-object v7
.end method

.method public greylist getVonrSetting()Ljava/lang/String;
    .locals 4

    .line 1735
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vonr_call_enable"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1737
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->semGetVoNRMode(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1739
    const-string v3, "ON"

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 1741
    const-string v3, "OFF"

    goto :goto_0

    .line 1740
    :cond_1
    const-string v3, "-2"

    :goto_0
    if-ne v0, v2, :cond_2

    if-eq p0, v1, :cond_2

    .line 1744
    const-string v3, "-1"

    .line 1746
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "userVonrSetting(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v3
.end method

.method public greylist getVonrStatus()Ljava/lang/String;
    .locals 5

    .line 1752
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semGetVoNRMode(I)I

    move-result v0

    const/4 v1, -0x1

    .line 1753
    const-string v2, "-1"

    const-string v3, "INCAPABLE"

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVonrStatus(): default on getVonrStatus ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    const-string v0, "-2"

    goto :goto_0

    .line 1762
    :cond_0
    const-string v0, "CAPABLE"

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 1767
    :goto_0
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getVonrSetting()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v0

    .line 1770
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVonrStatus(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return-object v3
.end method

.method public greylist getarfcn()I
    .locals 3

    .line 1163
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1165
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_5

    const-string v1, "1"

    .line 1166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1167
    :cond_0
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics5gSa;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1169
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 1172
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1173
    instance-of v1, v0, Landroid/telephony/CellInfoNr;

    if-eqz v1, :cond_1

    .line 1174
    check-cast v0, Landroid/telephony/CellInfoNr;

    invoke-virtual {v0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentityNr;

    .line 1175
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p0

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getarfcn(): CellInfo is one of CellIdentityNr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return p0

    .line 1178
    :cond_1
    instance-of v1, v0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_2

    .line 1179
    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    .line 1180
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p0

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getarfcn(): CellInfo is one of CellIdentityLte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return p0

    .line 1185
    :cond_2
    const-string v0, "getAnchorLteCid(): CellInfo is not one of LTE"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 1189
    :cond_3
    const-string v0, "getAnchorLteCid(): CellInfo.isRegistered()=false"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    :goto_1
    const/16 v2, -0x3e7

    goto :goto_0

    :cond_4
    return v2

    .line 1194
    :cond_5
    const-string p0, "getAnchorLteCid(): current network is not available"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics5gSa;->logD(Ljava/lang/String;)V

    return v2
.end method

.method public greylist putDefaultBandConfigValue(Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    .line 1722
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-gtz p0, :cond_0

    .line 1723
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
