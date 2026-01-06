.class public Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;
.super Ljava/lang/Object;
.source "TrafficStateDatabaseController.java"


# static fields
.field private static final blacklist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist DELETE_QUERY_VALUE:[Ljava/lang/String;

.field private static final blacklist ECHO_APP_SIG:Landroid/content/pm/Signature;

.field private static blacklist bandNumber:Ljava/lang/String;

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mFotaUpdated:I

.field private static volatile blacklist mInsertDb:Z

.field private static volatile blacklist mInsertList:Z

.field private static blacklist mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private static final blacklist mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private static blacklist mPreviousCellID:J

.field private static blacklist mShouldReport:Z

.field private static blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static blacklist objTrafficStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist primaryBandwidth:Ljava/lang/String;

.field private static blacklist sInstance:Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetbandNumber()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->bandNumber:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmFotaUpdated()I
    .locals 1

    .line 0
    sget v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mFotaUpdated:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmPreviousCellID()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mPreviousCellID:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetobjTrafficStats()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputbandNumber(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->bandNumber:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmPreviousCellID(J)V
    .locals 0

    .line 0
    sput-wide p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mPreviousCellID:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smbandFromCP()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->bandFromCP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCellId()J
    .locals 2

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getCellId()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetIPDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getIPDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNetworkDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getNetworkDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetRsrp()F
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getRsrp()F

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTechType()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sminsertValues()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->insertValues()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisTMONetworkCode()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->isTMONetworkCode()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisWifiConnected()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smismInsertDb()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->ismInsertDb()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smismInsertList()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->ismInsertList()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetmInsertDb(Z)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->setmInsertDb(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetmInsertList(Z)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->setmInsertList(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 95
    const-string v0, "content://com.tmobile.oem.echolocate.system.provider/trafficstats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->CONTENT_URI:Landroid/net/Uri;

    .line 97
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->DELETE_QUERY_VALUE:[Ljava/lang/String;

    .line 106
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .line 136
    sput-boolean v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mShouldReport:Z

    const/4 v1, 0x0

    .line 139
    sput-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->sInstance:Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;

    const/4 v1, 0x1

    .line 147
    sput-boolean v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertList:Z

    .line 148
    sput-boolean v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertDb:Z

    .line 149
    const-string v1, "-1"

    sput-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->bandNumber:Ljava/lang/String;

    .line 150
    sput-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 151
    sput-wide v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mPreviousCellID:J

    .line 152
    sput v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mFotaUpdated:I

    .line 335
    new-instance v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController$1;

    invoke-direct {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController$1;-><init>()V

    sput-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ShouldReport()Z
    .locals 4

    .line 196
    const-string v0, "TMB"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "TMK"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 197
    :goto_1
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->isEchoAppSigPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 199
    :goto_2
    sput-boolean v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mShouldReport:Z

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrafficState(): isTmoSalesCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEchoAppSigPresent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mShouldReport="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    .line 203
    sget-boolean v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mShouldReport:Z

    return v0
.end method

.method private static blacklist bandFromCP()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    .line 703
    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v1

    .line 704
    const-string v2, "-1"

    sput-object v2, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 706
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v2, v1, v2

    .line 707
    invoke-static {v2}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    :cond_0
    aget-object v0, v1, v0

    sput-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    .line 710
    :cond_1
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized blacklist disable()V
    .locals 4

    const-class v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;

    monitor-enter v0

    const/4 v1, 0x0

    .line 316
    :try_start_0
    sput-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->sInstance:Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;

    .line 317
    const-string v1, "disable()"

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 320
    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->setmInsertList(Z)V

    .line 321
    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->setmInsertDb(Z)V

    .line 322
    sget-boolean v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mShouldReport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 324
    :try_start_1
    sget-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "disable(): unregisterDnsCallback - removed"

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 328
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable(): unregisterDnsCallback - RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized blacklist enable(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->sInstance:Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;

    if-nez v1, :cond_0

    .line 169
    const-string v1, "TrafficStateDatabaseController enable"

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    .line 170
    sput-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    .line 171
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 172
    sget-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    sput-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 173
    new-instance p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;

    invoke-direct {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;-><init>()V

    sput-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->sInstance:Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;

    .line 174
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    .line 175
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->ShouldReport()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 176
    const-string p0, "connmetrics"

    .line 177
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object p0

    sput-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    sget-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const/4 v2, 0x4

    invoke-interface {p0, v2, v1}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 181
    const-string p0, "registerDnsCallback - added"

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 186
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiverException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 184
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDnsCallback - RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 190
    :cond_0
    const-string p0, "already enabled."

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static blacklist getCellId()J
    .locals 7

    .line 714
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellId(): techType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 717
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x2

    if-nez v1, :cond_7

    const-string v1, "-2"

    .line 718
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 719
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 720
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellId(): info.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 723
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    :goto_0
    move-wide v3, v1

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    .line 724
    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 725
    instance-of v3, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v3, :cond_1

    .line 726
    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 727
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    :goto_2
    int-to-long v3, v3

    goto :goto_1

    .line 728
    :cond_1
    instance-of v3, v5, Landroid/telephony/CellInfoNr;

    if-eqz v3, :cond_2

    .line 729
    check-cast v5, Landroid/telephony/CellInfoNr;

    invoke-virtual {v5}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentityNr;

    .line 730
    invoke-virtual {v3}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v3

    goto :goto_1

    .line 731
    :cond_2
    instance-of v3, v5, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_3

    .line 732
    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 733
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    goto :goto_2

    .line 734
    :cond_3
    instance-of v3, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v3, :cond_4

    .line 735
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 736
    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    goto :goto_2

    .line 739
    :cond_4
    const-string v3, "getCellId(): CellInfo is not one of GSM/LTE/WCDMA"

    invoke-static {v3}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-wide v3

    .line 745
    :cond_6
    const-string v0, "getCellId(): mTelephonyManager is null"

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-wide v2

    .line 749
    :cond_7
    const-string v0, "getCellId(): techType is not available"

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-wide v2
.end method

.method private static blacklist getCommandsToCp(I)[B
    .locals 4

    .line 634
    const-string v0, "getCommandToCp(): failed to close dos "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 635
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 638
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x92

    .line 639
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 640
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 641
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 649
    :catch_0
    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 643
    :catch_1
    :try_start_2
    const-string p0, "getCommandToCp(): "

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 653
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 647
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 649
    :catch_2
    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    .line 652
    :goto_3
    throw p0
.end method

.method private static blacklist getIPDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 486
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string p0, "AAAA"

    return-object p0

    .line 488
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 489
    const-string p0, "A"

    return-object p0

    .line 491
    :cond_1
    const-string p0, "-1"

    return-object p0
.end method

.method private static blacklist getMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 595
    :try_start_0
    const-string v0, "ip : "

    .line 596
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 597
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 598
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    .line 599
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 600
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 605
    :catch_0
    const-string v0, "getMD5Hash: NoSuchAlgorithmException"

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private static blacklist getNetworkDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    .line 556
    const-string v1, "LTE"

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v4, "-2"

    if-eqz v3, :cond_4

    .line 557
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "NR"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "-1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 562
    :pswitch_0
    sget-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 564
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_3

    .line 566
    const-string v1, "NSA"

    :cond_3
    move-object v4, v1

    goto :goto_1

    .line 560
    :pswitch_1
    const-string v4, "SA"

    goto :goto_1

    .line 573
    :pswitch_2
    sget-object p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 574
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 576
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 584
    :cond_4
    const-string p0, "getTechType(): mTelephonyManager is null"

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 586
    :cond_5
    :goto_1
    sget p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mFotaUpdated:I

    if-ge p0, v0, :cond_6

    add-int/2addr p0, v2

    .line 587
    sput p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mFotaUpdated:I

    .line 588
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTechType(): sNetworkDetail = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x5a4 -> :sswitch_2
        0x9c4 -> :sswitch_1
        0x127bd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getResultsFromBytes(I[B)[Ljava/lang/String;
    .locals 3

    if-gtz p0, :cond_0

    .line 661
    const-string p0, "getResultsFromBytes(): length is less than or equal to zero!"

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 666
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getResultsFromBytes(): resultString="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 668
    const-string p0, "\\|"

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 669
    :goto_0
    array-length p1, p0

    if-ge v2, p1, :cond_3

    .line 671
    aget-object p1, p0, v2

    if-eqz p1, :cond_1

    .line 672
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 674
    :cond_1
    const-string p1, "-2"

    aput-object p1, p0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static blacklist getRsrp()F
    .locals 7

    .line 760
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/high16 v1, -0x3cea0000    # -150.0f

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 761
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 763
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRsrp(): objStrengthList.size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 765
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, -0x3b864000    # -999.0f

    move-object v3, v1

    move-object v4, v3

    :goto_0
    move v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrength;

    .line 766
    instance-of v5, v1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v5, :cond_0

    .line 767
    move-object v3, v1

    check-cast v3, Landroid/telephony/CellSignalStrengthLte;

    .line 769
    :cond_0
    instance-of v5, v1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v5, :cond_1

    .line 770
    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    move-object v4, v1

    :cond_1
    if-eqz v3, :cond_2

    .line 772
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 773
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v1

    int-to-float v1, v1

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRsrp(): cellSignalLte.rsrp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 775
    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 776
    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v1

    int-to-float v1, v1

    .line 777
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRsrp(): cellSignalNR.rsrp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 780
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRsrp(): Default.rsrp= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_4
    const-string v0, " getRsrp(): objStrengthList is null "

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 789
    :cond_5
    const-string v0, " getRsrp(): telephonyManager is null "

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 791
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getRsrp(): rsrp= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return v1
.end method

.method private static blacklist getTechType()Ljava/lang/String;
    .locals 3

    .line 509
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "-2"

    if-eqz v0, :cond_6

    .line 510
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 512
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_4

    .line 514
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/4 v1, 0x1

    .line 515
    const-string v2, "2G"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTechType(): currNetwork= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    const-string v0, "-1"

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 518
    :cond_0
    const-string v0, "NR"

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 521
    :cond_2
    const-string v0, "LTE"

    goto :goto_0

    .line 524
    :cond_3
    const-string v0, "3G"

    goto :goto_0

    .line 540
    :cond_4
    const-string v0, "getTechType(): currServiceState is invalid"

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 544
    :cond_5
    const-string v0, "getTechType(): servicestate is null"

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 548
    :cond_6
    const-string v0, "getTechType(): mTelephonyManager is null"

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 550
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTechType(): techType= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method private static blacklist getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 615
    const-string v0, "getCurrentNetworkType(): ret="

    if-eqz p0, :cond_2

    .line 616
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cpTechType: ret="

    if-eqz v1, :cond_0

    .line 618
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object v0

    .line 619
    :cond_0
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 621
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object v0

    .line 623
    :cond_1
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object p0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object p0

    .line 627
    :cond_2
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object p0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method private static blacklist insertValues()V
    .locals 6

    const/4 v0, 0x1

    .line 432
    :try_start_0
    sget-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 433
    const-string v1, "insertValues()"

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    .line 434
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 435
    sget-object v2, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 436
    invoke-static {v1, v3}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->isDuplicate(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 437
    sget-object v4, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 438
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 441
    :cond_1
    sget-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 442
    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->setmInsertList(Z)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after Clear objTrafficStats.Size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInsertList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->ismInsertList()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    return-void

    .line 445
    :cond_2
    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->setmInsertList(Z)V

    .line 446
    const-string v1, "insertValues(): List is null can\'t insert."

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 449
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->setmInsertList(Z)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t insert exception ocuurred: message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist invokeOemRilRequestRaw(I)[Ljava/lang/String;
    .locals 5

    .line 686
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    .line 687
    new-array v0, v0, [B

    .line 688
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 689
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeOemRilRequestRaw: DefaultDataSubId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId= "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 691
    sget-object v1, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 692
    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getCommandsToCp(I)[B

    move-result-object v3

    .line 691
    invoke-virtual {v1, v2, v3, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v1

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeOemRilRequestRaw: resp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    .line 694
    invoke-static {v1, v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw: msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", resultFromCp= "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object v0

    .line 697
    :cond_0
    const-string p0, "invokeOemRilRequestRaw: mTelephonyManager= null & resultFromCp = null"

    invoke-static {p0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist isDuplicate(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 4

    .line 412
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 418
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    :goto_1
    return v3

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isEchoAppSigPresent()Z
    .locals 6

    .line 211
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    :try_start_0
    const-string v2, "com.tmobile.echolocate"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    .line 216
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 217
    sget-object v5, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    invoke-virtual {v5, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 224
    :catch_0
    const-string v0, "isEchoAppSigPresent(): package is not installed"

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private static blacklist isTMONetworkCode()Z
    .locals 4

    .line 233
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 234
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 237
    :goto_0
    const-string v1, "TMB"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TMK"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isWifiConnected()Z
    .locals 3

    .line 495
    sget-object v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 496
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private static blacklist ismInsertDb()Z
    .locals 1

    .line 466
    sget-boolean v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertDb:Z

    return v0
.end method

.method private static blacklist ismInsertList()Z
    .locals 1

    .line 456
    sget-boolean v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertList:Z

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    .line 799
    const-string v0, "TrafficStateDatabaseController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist logD(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private static blacklist setmInsertDb(Z)V
    .locals 1

    .line 470
    sget-boolean v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertDb:Z

    if-eq v0, p0, :cond_0

    .line 471
    sput-boolean p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertDb:Z

    :cond_0
    return-void
.end method

.method private static blacklist setmInsertList(Z)V
    .locals 1

    .line 460
    sget-boolean v0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertList:Z

    if-eq v0, p0, :cond_0

    .line 461
    sput-boolean p0, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->mInsertList:Z

    :cond_0
    return-void
.end method
