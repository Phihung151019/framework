.class public Lcom/tmobile/echolocate/DataMetrics;
.super Ljava/lang/Object;
.source "DataMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;,
        Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;,
        Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;,
        Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;,
        Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;
    }
.end annotation


# static fields
.field private static final greylist ECHO_APP_SIG:Landroid/content/pm/Signature;

.field private static final greylist MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

.field private static final greylist PHASE4_NOT_SUPPORT_LIST:[Ljava/lang/String;

.field private static final greylist TAG:Ljava/lang/String; = "DataMetrics"


# instance fields
.field private greylist CURRENT_API_VERSION:I

.field private greylist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mShouldReport:Z

.field private greylist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 2

    .line 131
    const-string v0, "SM-A536U"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->PHASE4_NOT_SUPPORT_LIST:[Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

    .line 164
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/echolocate/DataMetrics;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 6

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 193
    iput v0, p0, Lcom/tmobile/echolocate/DataMetrics;->CURRENT_API_VERSION:I

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    .line 1387
    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    .line 1389
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->isModelSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1390
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "DataMetrics()"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1393
    iget-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tmobile/echolocate/DataMetrics;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1394
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isTmoSim()Z

    move-result p1

    .line 1395
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

    .line 1396
    :goto_1
    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tmobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1397
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isMyAccountSigPresent()Z

    move-result v4

    .line 1398
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isEchoAppSigPresent()Z

    move-result v5

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    move v0, v2

    .line 1401
    :cond_3
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    .line 1405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DataMetrics(): isTmoSim="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTmoSalesCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isCalledFromTmo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isMyAccountSigPresent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isEchoAppSigPresent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-void

    .line 1411
    :cond_4
    iput-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    return-void

    .line 1415
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DataMetrics(): isModelSupported()="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->isModelSupported()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " DataMetric Disabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private greylist getAntennaBars()I
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e7

    return p0
.end method

.method private greylist getCommandsToCp(I)[B
    .locals 3

    .line 1313
    const-string p0, "getCommandToCp(): failed to close dos "

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1314
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x11

    .line 1317
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x92

    .line 1318
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 1319
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1320
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1328
    invoke-static {p0, p1}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1322
    :try_start_2
    const-string v2, "getCommandToCp(): "

    invoke-static {v2, p1}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1326
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1333
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 1326
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1328
    invoke-static {p0, v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1331
    :goto_2
    throw p1
.end method

.method private greylist getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 754
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): default on dataSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    add-int/2addr v0, p0

    .line 767
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonDataSettings(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for setting value="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 769
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getCurrentNetworkType()Ljava/lang/String;
    .locals 3

    .line 1271
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1274
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_4

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): default on currNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 1294
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentNetworkType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1296
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist getCurrentTime()Ljava/lang/String;
    .locals 2

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist getDataActivityType()Ljava/lang/String;
    .locals 2

    .line 1061
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result p0

    .line 1063
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

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): default on currDataActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string v0, "NA"

    goto :goto_0

    .line 1072
    :cond_0
    const-string v0, "BOTH_ON"

    goto :goto_0

    .line 1066
    :cond_1
    const-string v0, "UP_ON"

    goto :goto_0

    .line 1069
    :cond_2
    const-string v0, "DOWN_ON"

    .line 1083
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataActivityType(): ret="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist getMccMnc()Ljava/lang/String;
    .locals 2

    .line 1303
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMccMnc(): ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist getNetworkModeSetting()Ljava/lang/String;
    .locals 4

    .line 794
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 795
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 794
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x3

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_5

    const/16 v3, 0x9

    if-eq p0, v3, :cond_2

    const/16 v3, 0xe

    if-eq p0, v3, :cond_3

    const/16 v2, 0xb

    if-eq p0, v2, :cond_1

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): default on networkModeSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    :pswitch_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    .line 823
    :cond_5
    :goto_0
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkModeSetting(): ret= "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 825
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private greylist getNrPci()I
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 1117
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object p0

    .line 1118
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ril.signal.param"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1120
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1121
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1122
    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    .line 1123
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    goto :goto_0

    :cond_1
    const/16 p0, -0x3e7

    .line 1131
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nrPci(): nrpci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getNrRsrp()F
    .locals 3

    .line 1145
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1148
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1150
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1151
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1152
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrength;

    .line 1153
    instance-of v2, v1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v2, :cond_0

    .line 1154
    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1160
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result p0

    int-to-float p0, p0

    goto :goto_1

    :cond_2
    const/high16 p0, -0x3cea0000    # -150.0f

    .line 1163
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNrRsrp(): nrrsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getNrRsrq()F
    .locals 3

    .line 1207
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1210
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JYO signalStrength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1214
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1215
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrength;

    .line 1216
    instance-of v2, v1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v2, :cond_0

    .line 1217
    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1222
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1223
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrq()I

    move-result p0

    int-to-float p0, p0

    goto :goto_1

    :cond_2
    const/high16 p0, -0x3cea0000    # -150.0f

    .line 1226
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNrRsrq(): nrRsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getNrSnr()F
    .locals 3

    .line 1175
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1178
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JYO signalStrength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1182
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrength;

    .line 1184
    instance-of v2, v1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v2, :cond_0

    .line 1185
    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1190
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1191
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result p0

    int-to-float p0, p0

    goto :goto_1

    :cond_2
    const/high16 p0, -0x3cea0000    # -150.0f

    .line 1194
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNrSnr(): nrSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return p0
.end method

.method private greylist getPrimaryPci()I
    .locals 4

    const/16 v0, 0x200

    .line 1241
    new-array v0, v0, [B

    .line 1242
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1243
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1244
    invoke-direct {p0, v3}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v3

    .line 1242
    invoke-virtual {v1, v2, v3, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v1

    .line 1246
    invoke-direct {p0, v1, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1247
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1248
    aget-object p0, p0, v0

    goto :goto_0

    .line 1252
    :cond_0
    const-string p0, "-2"

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private greylist getResultsFromBytes(I[B)[Ljava/lang/String;
    .locals 1

    if-gtz p1, :cond_0

    .line 1341
    const-string p0, "getResultsFromBytes(): length is less than or equal to zero!"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1345
    :cond_0
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Ljava/lang/String;-><init>([BII)V

    .line 1346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getResultsFromBytes(): resultString="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1348
    const-string p1, "\\|"

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1349
    :goto_0
    array-length p1, p0

    if-ge v0, p1, :cond_3

    .line 1351
    aget-object p1, p0, v0

    if-eqz p1, :cond_1

    .line 1352
    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1354
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
    .locals 4

    .line 910
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

    if-nez v0, :cond_0

    .line 911
    const-string p0, "getRttSetting(): feature not supported"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 912
    const-string p0, "-1"

    return-object p0

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_rtt_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 936
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRttSetting(): default on rttSetting="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v2, -0x2

    goto :goto_0

    .line 923
    :cond_1
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "preferred_rtt_automatic_mode"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_3

    move v2, v3

    goto :goto_0

    .line 931
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRttSetting(): default on rttAutomaticMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 938
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRttSetting(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 940
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getRttTranscriptSetting()Ljava/lang/String;
    .locals 3

    .line 954
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

    .line 955
    const-string p0, "getRttTranscriptSetting(): feature not supported"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 956
    const-string p0, "-1"

    return-object p0

    .line 959
    :cond_0
    const-string p0, "getRttTranscriptSetting(): currently not supported"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 961
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getVolteSetting()Ljava/lang/String;
    .locals 2

    .line 877
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "voicecall_type"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolteSetting(): default on volteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v1, -0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 892
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVolteSetting(): ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 894
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getWfcSetting(I)Ljava/lang/String;
    .locals 4

    .line 840
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

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

    .line 841
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

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

    .line 854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiCallingPreferred(): default on WifiCallingPreferred="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const-string p0, "-2"

    goto :goto_0

    .line 852
    :cond_0
    const-string p0, "CELLULAR"

    goto :goto_0

    .line 849
    :cond_1
    const-string p0, "WIFI"

    goto :goto_0

    .line 846
    :cond_2
    const-string p0, "-1"

    :goto_0
    if-nez v0, :cond_3

    .line 858
    const-string p0, "OFF"

    .line 859
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWifiCallingSettings(): ret="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist isEchoAppSigPresent()Z
    .locals 5

    .line 689
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 692
    :try_start_0
    const-string v1, "com.tmobile.echolocate"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    .line 696
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 697
    sget-object v4, Lcom/tmobile/echolocate/DataMetrics;->ECHO_APP_SIG:Landroid/content/pm/Signature;

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

    .line 704
    :catch_0
    const-string p0, "isEchoAppSigPresent(): package is not installed"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    return v0
.end method

.method private static greylist isModelSupported()Z
    .locals 6

    .line 1369
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->PHASE4_NOT_SUPPORT_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 1370
    const-string v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private greylist isMyAccountSigPresent()Z
    .locals 7

    .line 661
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 664
    :try_start_0
    const-string v1, "com.tmobile.pr.mytmobile"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_3

    .line 668
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    move v5, v0

    .line 669
    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_1

    .line 670
    sget-object v6, Lcom/tmobile/echolocate/DataMetrics;->MY_ACCOUNT_SIG:Landroid/content/pm/Signature;

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

    .line 678
    :catch_0
    const-string p0, "isMyAccountSigPresent(): package is not installed"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    return v0
.end method

.method private greylist isTmoSim()Z
    .locals 14

    .line 649
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 650
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

    .line 653
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private greylist isWifiConnected()Z
    .locals 1

    .line 633
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 634
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 635
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

    .line 722
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static greylist logE(Ljava/lang/String;)V
    .locals 1

    .line 731
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static greylist logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 740
    sget-object v0, Lcom/tmobile/echolocate/DataMetrics;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public greylist get5gNrMmwCellLog()Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;
    .locals 5

    .line 1677
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "get5gNrMmwCellLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get5gNrMmwCellLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1683
    :cond_0
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1685
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 1686
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    .line 1687
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setTimeStamp(J)V

    .line 1688
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNetworkType(I)V

    .line 1690
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1692
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrPci()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNrPscellPci(I)V

    goto :goto_0

    .line 1694
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get5gNrMmwCellLog(): nrStatus NOT connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v2, -0x2

    .line 1695
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNrPscellPci(I)V

    goto :goto_0

    .line 1698
    :cond_2
    const-string v2, "get5gNrMmwCellLog(): Not LTE"

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/16 v2, -0x3e7

    .line 1699
    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setNrPscellPci(I)V

    .line 1701
    :goto_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setSsbBrsrp(F)V

    .line 1702
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrq()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setSsbBrsrq(F)V

    .line 1703
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrSnr()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->setSsbBsnr(F)V

    .line 1706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get5gNrMmwCellLog(): Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", NetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nrPscellPci="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics$NrMmwCellLog;->getNrPscellPci()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ssbBrsrp="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ssbBrsrq="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrq()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ssbSnr="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrSnr()F

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1706
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist get5gUiLog()Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;
    .locals 6

    const/4 v0, 0x3

    .line 1604
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "get5gUiLog()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-boolean v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_0

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get5gUiLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1610
    :cond_0
    new-instance v1, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;

    invoke-direct {v1, p0}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1615
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    .line 1616
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v3

    .line 1618
    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1619
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :pswitch_1
    const-string v5, "3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_2
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_3
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get5gUiLog(): default on uiNetworkType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 1635
    :pswitch_4
    const-string v2, "2G"

    goto :goto_2

    .line 1631
    :pswitch_5
    const-string v2, "3G"

    goto :goto_2

    .line 1622
    :pswitch_6
    iget-object v4, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1623
    const-string v4, "4G_LTE"

    goto :goto_1

    .line 1622
    :cond_5
    const-string v4, "4G"

    :goto_1
    if-ne v2, v0, :cond_6

    .line 1626
    const-string v2, "5G"

    goto :goto_2

    :cond_6
    move-object v2, v4

    goto :goto_2

    .line 1639
    :cond_7
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1640
    const-string v2, "NO_SIGNAL"

    goto :goto_2

    .line 1642
    :cond_8
    const-string v2, "NO_ICON"

    .line 1645
    :goto_2
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getDataActivityType()Ljava/lang/String;

    move-result-object v0

    .line 1646
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getAntennaBars()I

    move-result p0

    .line 1648
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setTimeStamp(J)V

    .line 1649
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setNetworkType(I)V

    .line 1650
    invoke-virtual {v1, v2}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setUiNetworkType(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v1, v0}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setUiDataTransmission(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {v1, p0}, Lcom/tmobile/echolocate/DataMetrics$Ui5gLog;->setUiNumberOfAntennaBars(I)V

    .line 1655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get5gUiLog(): Time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", NetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UiNetworkType="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", UiDataTransmission="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", UiNumberOfAntennaBars="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1655
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public greylist getAPIversion()I
    .locals 3

    .line 1426
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getAPIversion()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 1431
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPIversion(): CURRENT_API_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmobile/echolocate/DataMetrics;->CURRENT_API_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1433
    iget p0, p0, Lcom/tmobile/echolocate/DataMetrics;->CURRENT_API_VERSION:I

    return p0
.end method

.method public greylist getAnchorLteCid()J
    .locals 4

    .line 970
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 973
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x2

    if-nez v1, :cond_3

    const-string v1, "1"

    .line 974
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 977
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 980
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    instance-of v1, v0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_0

    .line 982
    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    .line 983
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 987
    :cond_0
    const-string v0, "getAnchorLteCid(): CellInfo is not one of LTE"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 991
    :cond_1
    const-string v0, "getAnchorLteCid(): CellInfo.isRegistered()=false"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    :goto_1
    const-wide/16 v2, -0x3e7

    goto :goto_0

    :cond_2
    return-wide v2

    .line 996
    :cond_3
    const-string p0, "getAnchorLteCid(): current network is not available"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-wide v2
.end method

.method public greylist getBearerConfiguration()Ljava/util/List;
    .locals 11

    .line 2327
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getBearerConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBearerConfiguration(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2333
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 2334
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2335
    const-string p0, "getBearerConfiguration(): not in LTE"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2337
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    const-string v9, "-999"

    const-string v10, "-999"

    const-string v2, "-999"

    const-string v3, "-999"

    const-string v4, "-999"

    const-string v5, "-999"

    const-string v6, "-999"

    const-string v7, "-999"

    const-string v8, "-999"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    .line 2336
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x200

    .line 2363
    new-array v0, v0, [B

    .line 2364
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2365
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const/16 v4, 0x8

    .line 2366
    invoke-direct {p0, v4}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v5

    .line 2364
    invoke-virtual {v2, v3, v5, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v2

    .line 2368
    invoke-direct {p0, v2, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2369
    array-length v0, p0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 2370
    aget-object v0, p0, v0

    const/4 v2, 0x1

    .line 2371
    aget-object v2, p0, v2

    const/4 v3, 0x2

    .line 2372
    aget-object v3, p0, v3

    const/4 v5, 0x3

    .line 2373
    aget-object v5, p0, v5

    const/4 v6, 0x4

    .line 2374
    aget-object v6, p0, v6

    const/4 v7, 0x5

    .line 2375
    aget-object v7, p0, v7

    const/4 v8, 0x6

    .line 2376
    aget-object v8, p0, v8

    const/4 v9, 0x7

    .line 2377
    aget-object v9, p0, v9

    .line 2378
    aget-object p0, p0, v4

    move-object v10, p0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 2382
    :cond_2
    const-string v0, "-2"

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUplinkRFConfiguration(): Time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Network="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Number of active bearers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 1 Type of QCI="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 1 APN name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 2 Type of QCI="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 2 APN name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 3 Type of QCI="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 3 APN name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 4 Type of QCI="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Bearer 4 APN name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2382
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2397
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    .line 2396
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCommonRFConfiguration()Ljava/util/List;
    .locals 8

    .line 1916
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getCommonRFConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonRFConfiguration(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1922
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 1923
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1924
    const-string p0, "getCommonRFConfiguration(): not in LTE"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1926
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    const-string v6, "-999"

    const-string v7, "-999"

    const-string v2, "-999"

    const-string v3, "-999"

    const-string v4, "-999"

    const-string v5, "-999"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    .line 1925
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x200

    .line 1946
    new-array v0, v0, [B

    .line 1947
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1948
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const/4 v4, 0x3

    .line 1949
    invoke-direct {p0, v4}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v5

    .line 1947
    invoke-virtual {v2, v3, v5, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v2

    .line 1951
    invoke-direct {p0, v2, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1952
    array-length v0, p0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 1953
    aget-object v0, p0, v0

    const/4 v2, 0x1

    .line 1954
    aget-object v2, p0, v2

    const/4 v3, 0x2

    .line 1955
    aget-object v3, p0, v3

    .line 1956
    aget-object v4, p0, v4

    const/4 v5, 0x4

    .line 1957
    aget-object v5, p0, v5

    const/4 v6, 0x5

    .line 1958
    aget-object p0, p0, v6

    move-object v7, p0

    move-object v6, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 1962
    :cond_2
    const-string v0, "-2"

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCommonRFConfiguration(): Time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Network="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Transmission Mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Antenna RX="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Antenna TX="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Receiver Diversity="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RRC State="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", LTE-U/LAA="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1962
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1974
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    .line 1973
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDataSetting()Ljava/util/List;
    .locals 10

    .line 2420
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getDataSetting()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataSetting(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2426
    :cond_0
    const-string v0, "mobile_data"

    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2427
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNetworkModeSetting()Ljava/lang/String;

    move-result-object v3

    .line 2428
    const-string v0, "wifi_on"

    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2429
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics;->getWfcSetting(I)Ljava/lang/String;

    move-result-object v5

    .line 2430
    const-string v0, "data_roaming"

    invoke-direct {p0, v0}, Lcom/tmobile/echolocate/DataMetrics;->getCommonDataSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2431
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getVolteSetting()Ljava/lang/String;

    move-result-object v7

    .line 2432
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getRttSetting()Ljava/lang/String;

    move-result-object v8

    .line 2433
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getRttTranscriptSetting()Ljava/lang/String;

    move-result-object v9

    .line 2436
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataSetting(): Time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", MobileData="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", NetworkMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", WiFi="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", WiFiCalling="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", DataRoaming="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", VoLte="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RttSetting="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RttTranscript="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2436
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2449
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object p0

    .line 2448
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDownlinkCarrierInfo()Ljava/util/List;
    .locals 12

    .line 1996
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getDownlinkCarrierInfo()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownlinkCarrierInfo(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2002
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 2003
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2004
    const-string p0, "getDownlinkCarrierInfo(): not in LTE"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2006
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    const-string v10, "-999"

    const-string v11, "-999"

    const-string v2, "-999"

    const-string v3, "-999"

    const-string v4, "-999"

    const-string v5, "-999"

    const-string v6, "-999"

    const-string v7, "-999"

    const-string v8, "-999"

    const-string v9, "-999"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p0

    .line 2005
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0x200

    .line 2034
    new-array v2, v2, [B

    .line 2035
    iget-object v3, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2036
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const/4 v5, 0x4

    .line 2037
    invoke-direct {p0, v5}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v6

    .line 2035
    invoke-virtual {v3, v4, v6, v2}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    .line 2039
    invoke-direct {p0, v3, v2}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    .line 2040
    const-string v2, "-2"

    if-eqz p0, :cond_5

    array-length v3, p0

    const/16 v4, 0xa

    if-lt v3, v4, :cond_5

    const/4 v3, 0x0

    .line 2041
    aget-object v3, p0, v3

    const/4 v4, 0x1

    .line 2042
    aget-object v4, p0, v4

    const/4 v6, 0x2

    .line 2043
    aget-object v6, p0, v6

    const/4 v7, 0x3

    .line 2044
    aget-object v7, p0, v7

    .line 2046
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "-1"

    if-eqz v0, :cond_2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v6

    move-object v9, v7

    :goto_0
    move-object v10, v9

    move-object v11, v10

    goto/16 :goto_2

    .line 2049
    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x6

    const/4 v10, 0x5

    if-eqz v0, :cond_3

    .line 2050
    aget-object v2, p0, v5

    .line 2051
    aget-object v0, p0, v10

    .line 2052
    aget-object p0, p0, v9

    move-object v5, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v8, p0

    :goto_1
    move-object v7, v0

    goto :goto_2

    .line 2054
    :cond_3
    const-string v0, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2055
    aget-object v2, p0, v5

    .line 2056
    aget-object v0, p0, v10

    .line 2057
    aget-object v5, p0, v9

    const/4 v8, 0x7

    .line 2058
    aget-object v8, p0, v8

    const/16 v9, 0x8

    .line 2059
    aget-object v9, p0, v9

    const/16 v10, 0x9

    .line 2060
    aget-object p0, p0, v10

    move-object v10, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v10

    move-object v11, p0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v5

    move-object v5, v7

    goto :goto_1

    :cond_4
    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v5, v7

    move-object v7, v11

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    goto :goto_2

    :cond_5
    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    goto :goto_0

    .line 2065
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDownlinkCarrierInfo(): Time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Network="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Num Channels="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary EARFCN="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary Bandwidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary Band Number="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second EARFCN="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second Bandwidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second Band Number="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Third EARFCN="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Third Bandwidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Third Band Number="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2065
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p0

    .line 2080
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDownlinkRFConfiguration()Ljava/util/List;
    .locals 8

    .line 2190
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getDownlinkRFConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownlinkRFConfiguration(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2196
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 2197
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2198
    const-string p0, "getDownlinkRFConfiguration(): not in LTE"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2200
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    const-string v6, "-999"

    const-string v7, "-999"

    const-string v2, "-999"

    const-string v3, "-999"

    const-string v4, "-999"

    const-string v5, "-999"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    .line 2199
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x200

    .line 2220
    new-array v0, v0, [B

    .line 2221
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2222
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const/4 v4, 0x6

    .line 2223
    invoke-direct {p0, v4}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v5

    .line 2221
    invoke-virtual {v2, v3, v5, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v2

    .line 2225
    invoke-direct {p0, v2, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2226
    array-length v0, p0

    if-lt v0, v4, :cond_2

    const/4 v0, 0x0

    .line 2227
    aget-object v0, p0, v0

    const/4 v2, 0x1

    .line 2228
    aget-object v2, p0, v2

    const/4 v3, 0x2

    .line 2229
    aget-object v3, p0, v3

    const/4 v4, 0x3

    .line 2230
    aget-object v4, p0, v4

    const/4 v5, 0x4

    .line 2231
    aget-object v5, p0, v5

    const/4 v6, 0x5

    .line 2232
    aget-object p0, p0, v6

    move-object v7, p0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 2236
    :cond_2
    const-string v0, "-2"

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDownlinkRFConfiguration(): Time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Network="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary Modulation Scheme="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary Num Layers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second Modulation Scheme="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second Num Layers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Third Modulation Scheme="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Third Num Layers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2236
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2248
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    .line 2247
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getEndcCapability()I
    .locals 0

    .line 1041
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getEndcStatusInternal()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    :cond_0
    return p0
.end method

.method public greylist getEndcLteLog()Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;
    .locals 5

    .line 1562
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getEndcLteLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEndcLteLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1568
    :cond_0
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1570
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 1573
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setTimeStamp(J)V

    .line 1574
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setNetworkType(I)V

    .line 1575
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getAnchorLteCid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setAnchorLteCid(J)V

    .line 1577
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getPrimaryPci()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setAnchorLtePci(I)V

    .line 1579
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getEndcCapability()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setEndcCapability(I)V

    .line 1580
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getLteRrcState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->setLteRrcState(I)V

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEndcLteLog(): Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", NetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AnchorLteCid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getAnchorLteCid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", AnchorLtePci="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {v0}, Lcom/tmobile/echolocate/DataMetrics$EndcLteLog;->getAnchorLtePci()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", EndcCapability="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getEndcCapability()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LteRrcState="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {p0}, Lcom/tmobile/echolocate/DataMetrics;->getLteRrcState()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1583
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getEndcStatusInternal()I
    .locals 3

    .line 1021
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1022
    iget-object p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 1026
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 1029
    :cond_1
    iget-boolean p0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    return p0

    :cond_2
    return v1
.end method

.method public greylist getEndcUplinkLog()Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;
    .locals 3

    .line 1726
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getEndcUplinkLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEndcUplinkLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1732
    :cond_0
    new-instance v0, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;

    invoke-direct {v0, p0}, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1734
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object p0

    .line 1736
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->setNetworkType(I)V

    .line 1737
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tmobile/echolocate/DataMetrics$EndcUplinkLog;->setTimeStamp(J)V

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEndcUplinkLog(): Time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", NetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1740
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getLteRrcState()I
    .locals 5

    const/16 v0, 0x200

    .line 1008
    new-array v0, v0, [B

    .line 1009
    iget-object v1, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1010
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const/4 v3, 0x3

    .line 1011
    invoke-direct {p0, v3}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v4

    .line 1009
    invoke-virtual {v1, v2, v4, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v1

    .line 1013
    invoke-direct {p0, v1, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1014
    array-length v0, p0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 1015
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist getNetworkIdentity()Ljava/util/List;
    .locals 15

    .line 1446
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getNetworkIdentity()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkIdentity(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1452
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getMccMnc()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 1459
    const-string v4, "-2"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 1460
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1461
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    move-object v5, v0

    .line 1469
    :goto_0
    const-string v6, "0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1470
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1471
    iget-object v6, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1473
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/CellInfo;

    .line 1476
    invoke-virtual {v10}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1477
    instance-of v11, v10, Landroid/telephony/CellInfoGsm;

    const-string v12, "-1"

    if-eqz v11, :cond_2

    .line 1478
    check-cast v10, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v10}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    .line 1480
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1481
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    move-object v7, v12

    goto :goto_1

    .line 1482
    :cond_2
    instance-of v11, v10, Landroid/telephony/CellInfoLte;

    if-eqz v11, :cond_3

    .line 1483
    check-cast v10, Landroid/telephony/CellInfoLte;

    invoke-virtual {v10}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    .line 1484
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1486
    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v8

    move-object v8, v12

    goto :goto_1

    .line 1487
    :cond_3
    instance-of v11, v10, Landroid/telephony/CellInfoWcdma;

    if-eqz v11, :cond_4

    .line 1488
    check-cast v10, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v10}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    .line 1490
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1491
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1493
    :cond_4
    const-string v10, "getNetworkIdentity(): CellInfo is not one of GSM/LTE/WCDMA"

    invoke-static {v10}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 1496
    :cond_5
    const-string v10, "getNetworkIdentity(): CellInfo.isRegistered()=false"

    invoke-static {v10}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    :cond_7
    move-object v6, v9

    goto :goto_3

    .line 1501
    :cond_8
    const-string v6, "getNetworkIdentity(): current network is not available"

    invoke-static {v6}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    :goto_3
    const/16 v9, 0x200

    .line 1510
    new-array v9, v9, [B

    .line 1511
    iget-object v10, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1512
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    const/4 v12, 0x1

    .line 1513
    invoke-direct {p0, v12}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v13

    .line 1511
    invoke-virtual {v10, v11, v13, v9}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v10

    .line 1515
    invoke-direct {p0, v10, v9}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1516
    array-length v9, p0

    if-lt v9, v3, :cond_9

    .line 1517
    aget-object v4, p0, v2

    .line 1518
    aget-object v2, p0, v12

    const/4 v3, 0x2

    .line 1519
    aget-object p0, p0, v3

    move-object v10, v8

    move-object v8, v2

    move-object v2, v5

    move-object v5, v10

    move-object v10, p0

    goto :goto_4

    :cond_9
    move-object v10, v4

    move-object v2, v5

    move-object v5, v8

    move-object v8, v10

    .line 1523
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkIdentity(): Time="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Network="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", MCC="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", MNC="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", TAC="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", LAC for PCell="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", CID for PCell="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", PCI for PCell="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", PCI for SCell="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", CID for SCell2="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NOT SUPPORTED"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", PCI for SCell2="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1523
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 1538
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    const-string v9, "-2"

    move-object v14, v7

    move-object v7, v4

    move-object v4, v14

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    .line 1537
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getSignalCondition()Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    .line 1798
    iget-object v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    const-string v3, "getSignalCondition()"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-boolean v1, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v1, :cond_0

    .line 1800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSignalCondition(): mShouldReport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1804
    :cond_0
    invoke-direct {v0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v2

    .line 1805
    const-string v1, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1806
    const-string v0, "getSignalCondition(): not in LTE"

    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 1808
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    const-string v15, "-999"

    const-string v16, "-999"

    const-string v3, "-999"

    const-string v4, "-999"

    const-string v5, "-999"

    const-string v6, "-999"

    const-string v7, "-999"

    const-string v8, "-999"

    const-string v9, "-999"

    const-string v10, "-999"

    const-string v11, "-999"

    const-string v12, "-999"

    const-string v13, "-999"

    const-string v14, "-999"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 1807
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x200

    .line 1843
    new-array v1, v1, [B

    .line 1844
    iget-object v3, v0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1845
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const/4 v5, 0x2

    .line 1846
    invoke-direct {v0, v5}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v6

    .line 1844
    invoke-virtual {v3, v4, v6, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    .line 1848
    invoke-direct {v0, v3, v1}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1849
    array-length v1, v0

    const/16 v3, 0x19

    if-lt v1, v3, :cond_2

    const/4 v1, 0x0

    .line 1850
    aget-object v1, v0, v1

    const/4 v3, 0x1

    .line 1851
    aget-object v3, v0, v3

    .line 1852
    aget-object v4, v0, v5

    const/4 v5, 0x3

    .line 1853
    aget-object v5, v0, v5

    const/4 v6, 0x4

    .line 1854
    aget-object v6, v0, v6

    const/4 v7, 0x5

    .line 1855
    aget-object v7, v0, v7

    const/4 v8, 0x6

    .line 1856
    aget-object v8, v0, v8

    const/4 v9, 0x7

    .line 1857
    aget-object v9, v0, v9

    const/16 v10, 0x8

    .line 1858
    aget-object v10, v0, v10

    const/16 v11, 0x9

    .line 1859
    aget-object v11, v0, v11

    const/16 v12, 0xa

    .line 1860
    aget-object v12, v0, v12

    const/16 v13, 0xb

    .line 1861
    aget-object v13, v0, v13

    const/16 v14, 0x18

    .line 1863
    aget-object v0, v0, v14

    move-object v14, v11

    move-object v15, v12

    move-object v11, v8

    move-object v12, v9

    move-object v9, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v13

    move-object v13, v10

    move-object v10, v7

    move-object v7, v0

    goto :goto_0

    .line 1867
    :cond_2
    const-string v3, "-50"

    const-string v1, "-150"

    move-object v6, v1

    move-object v7, v6

    move-object v9, v7

    move-object v12, v9

    move-object v13, v12

    move-object v4, v3

    move-object v5, v4

    move-object v10, v5

    move-object v11, v10

    move-object v14, v11

    move-object v15, v14

    move-object v3, v13

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSignalStrength(): Time="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Network="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSRP="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSRQ="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SINR="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSSI="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RACH Power="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", LTE UL headroom="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "NOT SUPPORTED"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSRP of SCell="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSRQ of SCell="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SINR of SCell="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSSI of SCell="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSRP of SCell2="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSRQ of SCell2="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SINR of SCell2="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", RSSI of SCell2="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    invoke-static {v0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    move-object/from16 v16, v1

    .line 1887
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    const-string v8, "-2"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 1886
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSsbBeamLog()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;",
            ">;"
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getSsbBeamLog()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSsbBeamLog(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1762
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1763
    new-instance v1, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;

    invoke-direct {v1, p0}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;-><init>(Lcom/tmobile/echolocate/DataMetrics;)V

    .line 1765
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSsbBeamLog(): nrStatus None"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    const/4 v2, -0x2

    .line 1768
    invoke-virtual {v1, v2}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setPci(I)V

    goto :goto_0

    .line 1770
    :cond_1
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrPci()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setPci(I)V

    .line 1772
    :goto_0
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setTimeStamp(J)V

    .line 1773
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->setSsbBrsrp(F)V

    .line 1774
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSsbBeamLog(): Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pci="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-virtual {v1}, Lcom/tmobile/echolocate/DataMetrics$SsbBeamLog;->getPci()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ssbBrsrp="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getNrRsrp()F

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1778
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getUplinkCarrierInfo()Ljava/util/List;
    .locals 9

    .line 2106
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getUplinkCarrierInfo()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUplinkCarrierInfo(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2112
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 2113
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2114
    const-string p0, "getUplinkCarrierInfo(): not in LTE"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2116
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    const-string v7, "-999"

    const-string v8, "-999"

    const-string v2, "-999"

    const-string v3, "-999"

    const-string v4, "-999"

    const-string v5, "-999"

    const-string v6, "-999"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    .line 2115
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x200

    .line 2138
    new-array v0, v0, [B

    .line 2139
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2140
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const/4 v4, 0x5

    .line 2141
    invoke-direct {p0, v4}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v5

    .line 2139
    invoke-virtual {v2, v3, v5, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v2

    .line 2143
    invoke-direct {p0, v2, v0}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2144
    array-length v0, p0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 2145
    aget-object v0, p0, v0

    const/4 v2, 0x1

    .line 2146
    aget-object v2, p0, v2

    const/4 v3, 0x2

    .line 2147
    aget-object v3, p0, v3

    const/4 v5, 0x3

    .line 2148
    aget-object v5, p0, v5

    const/4 v6, 0x4

    .line 2149
    aget-object v6, p0, v6

    .line 2150
    aget-object v4, p0, v4

    const/4 v7, 0x6

    .line 2151
    aget-object p0, p0, v7

    move-object v8, p0

    move-object v7, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 2155
    :cond_2
    const-string v0, "-2"

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUplinkCarrierInfo(): Time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Network="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Num Channels="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary EARFCN="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary Bandwidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Primary Band Number="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second EARFCN="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second Bandwidth="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Second Band Number="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2155
    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2168
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    .line 2167
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getUplinkRFConfiguration()Ljava/util/List;
    .locals 5

    .line 2267
    iget-object v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mContext:Landroid/content/Context;

    const-string v1, "diagandroid.phone.receiveDetailedCallState"

    const-string v2, "getUplinkRFConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    iget-boolean v0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    if-nez v0, :cond_0

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUplinkRFConfiguration(): mShouldReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tmobile/echolocate/DataMetrics;->mShouldReport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2273
    :cond_0
    invoke-direct {p0}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 2274
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2275
    const-string p0, "getUplinkRFConfiguration(): not in LTE"

    invoke-static {p0}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2277
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-999"

    filled-new-array {p0, v0, v1, v1}, [Ljava/lang/String;

    move-result-object p0

    .line 2276
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x200

    .line 2289
    new-array v1, v1, [B

    .line 2290
    iget-object v2, p0, Lcom/tmobile/echolocate/DataMetrics;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2291
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const/4 v4, 0x7

    .line 2292
    invoke-direct {p0, v4}, Lcom/tmobile/echolocate/DataMetrics;->getCommandsToCp(I)[B

    move-result-object v4

    .line 2290
    invoke-virtual {v2, v3, v4, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v2

    .line 2294
    invoke-direct {p0, v2, v1}, Lcom/tmobile/echolocate/DataMetrics;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2295
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 2296
    aget-object v1, p0, v1

    const/4 v2, 0x1

    .line 2297
    aget-object p0, p0, v2

    goto :goto_0

    .line 2301
    :cond_2
    const-string v1, "-2"

    move-object p0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUplinkRFConfiguration(): Time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Primary Modulation Scheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Second Modulation Scheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2301
    invoke-static {v2}, Lcom/tmobile/echolocate/DataMetrics;->logD(Ljava/lang/String;)V

    .line 2309
    invoke-static {}, Lcom/tmobile/echolocate/DataMetrics;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 2308
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
