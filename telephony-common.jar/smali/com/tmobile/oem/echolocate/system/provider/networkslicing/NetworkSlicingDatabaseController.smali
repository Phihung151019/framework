.class public Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;
.super Ljava/lang/Object;
.source "NetworkSlicingDatabaseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;,
        Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;
    }
.end annotation


# static fields
.field private static final blacklist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist DELETE_QUERY_VALUE:[Ljava/lang/String;

.field private static final blacklist ECHO_APP_SIG:Landroid/content/pm/Signature;

.field private static blacklist mNetworkStateBandwidthCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private static blacklist mNetworkStateLatencyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private static blacklist mTypeNWSlicingConnection:Ljava/lang/String;

.field private static final blacklist outcomeReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/data/NetworkSlicingConfig;",
            "Landroid/telephony/TelephonyManager$NetworkSlicingException;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sBandNumber:Ljava/lang/String;

.field private static blacklist sBandwidthRequest:Landroid/net/NetworkRequest;

.field private static blacklist sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sHandler:Landroid/os/Handler;

.field private static volatile blacklist sInsertDb:Z

.field private static volatile blacklist sInsertList:Z

.field private static blacklist sInstance:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

.field private static blacklist sLatencyRequest:Landroid/net/NetworkRequest;

.field private static blacklist sNetworkSliceConfigChangedReceiver:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;

.field private static blacklist sObjNetworkSlicing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSD:Ljava/lang/String;

.field private static blacklist sSST:Ljava/lang/String;

.field private static blacklist sShouldReport:Z

.field private static blacklist sSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static blacklist sTelephonyCallback:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;

.field private static blacklist sTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static blacklist sUrspRules:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmTypeNWSlicingConnection()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mTypeNWSlicingConnection:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsContext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsHandler()Landroid/os/Handler;
    .locals 1

    .line 0
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSD()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sSD:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSST()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sSST:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmTypeNWSlicingConnection(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mTypeNWSlicingConnection:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBandNumber(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sBandNumber:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsSD(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sSD:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsSST(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sSST:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsUrspRules(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sUrspRules:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNetworkSlicingData()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->getNetworkSlicingData()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetValuesForDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->getValuesForDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sminsertValues()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->insertValues()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisTMONetworkCode()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->isTMONetworkCode()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 98
    const-string v0, "content://com.tmobile.oem.echolocate.system.provider.networkslicing.NetworkSlicingContentProvider/networkslicing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->DELETE_QUERY_VALUE:[Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .line 134
    sput-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sShouldReport:Z

    const/4 v0, 0x0

    .line 137
    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInstance:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    const/4 v0, 0x1

    .line 143
    sput-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInsertList:Z

    .line 144
    sput-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInsertDb:Z

    .line 145
    const-string v0, "-1"

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sBandNumber:Ljava/lang/String;

    .line 146
    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sSST:Ljava/lang/String;

    .line 147
    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sSD:Ljava/lang/String;

    .line 149
    const-string v0, "NONE"

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mTypeNWSlicingConnection:Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1;

    invoke-direct {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1;-><init>()V

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->outcomeReceiver:Landroid/os/OutcomeReceiver;

    .line 357
    new-instance v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$2;

    invoke-direct {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$2;-><init>()V

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mNetworkStateLatencyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 373
    new-instance v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$3;

    invoke-direct {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$3;-><init>()V

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mNetworkStateBandwidthCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ShouldReport()Z
    .locals 4

    .line 204
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

    .line 205
    :goto_1
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->isEchoAppSigPresent()Z

    move-result v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 207
    :goto_2
    sput-boolean v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sShouldReport:Z

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkSlicing(): isTmoSalesCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEchoAppSigPresent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sShouldReport="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sShouldReport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    .line 211
    sget-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sShouldReport:Z

    return v0
.end method

.method public static declared-synchronized blacklist disable()V
    .locals 3

    const-class v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    monitor-enter v0

    const/4 v1, 0x0

    .line 414
    :try_start_0
    sput-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInstance:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    .line 415
    const-string v1, "disable()"

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    .line 416
    sget-boolean v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sShouldReport:Z

    if-eqz v1, :cond_1

    .line 417
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->unregisterNetworkSliceConfigChangedReceiver()V

    .line 418
    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mNetworkStateLatencyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 419
    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mNetworkStateBandwidthCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 420
    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyCallback:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 423
    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->setmInsertList(Z)V

    .line 424
    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->setmInsertDb(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized blacklist enable(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInstance:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    if-nez v1, :cond_1

    .line 166
    const-string v1, "NetworkSlicingDatabaseController enable"

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    .line 167
    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    .line 168
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->ShouldReport()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 169
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 170
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 171
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 172
    new-instance p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;

    invoke-direct {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;-><init>()V

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyCallback:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;

    .line 173
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sHandler:Landroid/os/Handler;

    .line 175
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/16 v2, 0x22

    .line 177
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sLatencyRequest:Landroid/net/NetworkRequest;

    .line 180
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 181
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    const/16 v1, 0x23

    .line 182
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sBandwidthRequest:Landroid/net/NetworkRequest;

    .line 185
    new-instance p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    invoke-direct {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;-><init>()V

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInstance:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    .line 186
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sObjNetworkSlicing:Ljava/util/List;

    .line 187
    const-string p0, "registerNetworkSliceConfigChangedReceiver - added"

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    .line 188
    const-string p0, "android.intent.action.EcholocateSliceConfigChanged"

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->registerNetworkSliceConfigChangedReceiver(Ljava/lang/String;)V

    .line 189
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 190
    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sLatencyRequest:Landroid/net/NetworkRequest;

    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mNetworkStateLatencyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 191
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sBandwidthRequest:Landroid/net/NetworkRequest;

    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->mNetworkStateBandwidthCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 193
    :cond_0
    :goto_0
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    .line 194
    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyCallback:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSlicingTelephonyCallback;

    invoke-virtual {p0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_1

    .line 198
    :cond_1
    const-string p0, "already enabled."

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static blacklist getCellId()J
    .locals 7

    .line 556
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellId(): techType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    .line 559
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x2

    if-nez v1, :cond_7

    const-string v1, "-2"

    .line 560
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 561
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 562
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellId(): info.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    .line 565
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

    .line 566
    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 567
    instance-of v3, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v3, :cond_1

    .line 568
    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 569
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    :goto_2
    int-to-long v3, v3

    goto :goto_1

    .line 570
    :cond_1
    instance-of v3, v5, Landroid/telephony/CellInfoNr;

    if-eqz v3, :cond_2

    .line 571
    check-cast v5, Landroid/telephony/CellInfoNr;

    invoke-virtual {v5}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentityNr;

    .line 572
    invoke-virtual {v3}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v3

    goto :goto_1

    .line 573
    :cond_2
    instance-of v3, v5, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_3

    .line 574
    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 575
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    goto :goto_2

    .line 576
    :cond_3
    instance-of v3, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v3, :cond_4

    .line 577
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 578
    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    goto :goto_2

    .line 581
    :cond_4
    const-string v3, "getCellId(): CellInfo is not one of GSM/LTE/WCDMA"

    invoke-static {v3}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-wide v3

    .line 587
    :cond_6
    const-string v0, "getCellId(): sTelephonyManager is null"

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    return-wide v2

    .line 591
    :cond_7
    const-string v0, "getCellId(): techType is not available"

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    return-wide v2
.end method

.method private static blacklist getNetworkSlicingData()V
    .locals 3

    .line 351
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->isTMONetworkCode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 352
    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->setmInsertDb(Z)V

    .line 353
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->outcomeReceiver:Landroid/os/OutcomeReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :cond_0
    return-void
.end method

.method private static blacklist getRsrp()F
    .locals 7

    .line 602
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    const/high16 v1, -0x3cea0000    # -150.0f

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 603
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 605
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRsrp(): objStrengthList.size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    .line 607
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

    .line 608
    instance-of v5, v1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v5, :cond_0

    .line 609
    move-object v3, v1

    check-cast v3, Landroid/telephony/CellSignalStrengthLte;

    .line 611
    :cond_0
    instance-of v5, v1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v5, :cond_1

    .line 612
    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    move-object v4, v1

    :cond_1
    if-eqz v3, :cond_2

    .line 614
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v1

    int-to-float v1, v1

    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRsrp(): cellSignalLte.rsrp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 617
    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 618
    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v1

    int-to-float v1, v1

    .line 619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRsrp(): cellSignalNR.rsrp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 622
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRsrp(): Default.rsrp= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_4
    const-string v0, " getRsrp(): objStrengthList is null "

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 631
    :cond_5
    const-string v0, " getRsrp(): telephonyManager is null "

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    .line 633
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getRsrp(): rsrp= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    return v1
.end method

.method private static blacklist getTechType()Ljava/lang/String;
    .locals 3

    .line 514
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "-2"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 515
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_4

    .line 517
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/4 v1, 0x1

    .line 518
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

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTechType(): currNetwork= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    const-string v0, "-1"

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 521
    :cond_0
    const-string v0, "NR"

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 524
    :cond_2
    const-string v0, "LTE"

    goto :goto_0

    .line 527
    :cond_3
    const-string v0, "3G"

    goto :goto_0

    .line 545
    :cond_4
    const-string v0, "getTechType(): currServiceState is invalid"

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 549
    :cond_5
    const-string v0, "getTechType(): sTelephonyManager is null"

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    .line 551
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTechType(): techType= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method private static blacklist getValuesForDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 261
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->getCellId()J

    move-result-wide v0

    .line 262
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->getRsrp()F

    move-result v2

    .line 263
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 265
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cellId"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "rsrp"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 268
    const-string v0, "techType"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "bandNumber"

    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sBandNumber:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sST"

    invoke-virtual {v6, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sD"

    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sUrspRules:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "urspRule"

    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "timestamp"

    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string p0, "consumed"

    const-string p1, "0"

    invoke-virtual {v6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sObjNetworkSlicing:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static declared-synchronized blacklist insertValues()V
    .locals 6

    const-class v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;

    monitor-enter v0

    const/4 v1, 0x1

    .line 462
    :try_start_0
    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sObjNetworkSlicing:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 463
    const-string v2, "insertValues()"

    invoke-static {v2}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    .line 464
    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sObjNetworkSlicing:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 465
    sget-object v4, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    .line 467
    :cond_0
    sget-object v2, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sObjNetworkSlicing:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 468
    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->setmInsertList(Z)V

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after Clear sObjNetworkSlicing.Size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sObjNetworkSlicing:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sInsertList= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->ismInsertList()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 471
    :cond_1
    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->setmInsertList(Z)V

    .line 472
    const-string v2, "insertValues(): List is null can\'t insert."

    invoke-static {v2}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 475
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->setmInsertList(Z)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t insert exception ocuurred: message"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static blacklist isEchoAppSigPresent()Z
    .locals 6

    .line 219
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    :try_start_0
    const-string v2, "com.tmobile.echolocate"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    .line 224
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 225
    sget-object v5, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->ECHO_APP_SIG:Landroid/content/pm/Signature;

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

    .line 232
    :catch_0
    const-string v0, "isEchoAppSigPresent(): package is not installed"

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    return v1
.end method

.method private static blacklist isTMONetworkCode()Z
    .locals 4

    .line 241
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 242
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 245
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

.method private static blacklist ismInsertList()Z
    .locals 1

    .line 482
    sget-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInsertList:Z

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    .line 638
    const-string v0, "NetworkSlicingDatabaseController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist logD(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private static blacklist registerNetworkSliceConfigChangedReceiver(Ljava/lang/String;)V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerNetworkSliceConfigChangedReceiver(): for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;-><init>(Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController-IA;)V

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sNetworkSliceConfigChangedReceiver:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    sget-object p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sNetworkSliceConfigChangedReceiver:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist setmInsertDb(Z)V
    .locals 1

    .line 496
    sget-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInsertDb:Z

    if-eq v0, p0, :cond_0

    .line 497
    sput-boolean p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInsertDb:Z

    :cond_0
    return-void
.end method

.method private static blacklist setmInsertList(Z)V
    .locals 1

    .line 486
    sget-boolean v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInsertList:Z

    if-eq v0, p0, :cond_0

    .line 487
    sput-boolean p0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sInsertList:Z

    :cond_0
    return-void
.end method

.method private static blacklist unregisterNetworkSliceConfigChangedReceiver()V
    .locals 3

    .line 403
    :try_start_0
    sget-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sNetworkSliceConfigChangedReceiver:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 405
    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->sNetworkSliceConfigChangedReceiver:Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNetworkSliceConfigChangedReceiver(): Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
