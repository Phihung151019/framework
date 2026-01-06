.class public Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;
.super Ljava/lang/Object;
.source "DeviceReportingSecurityChecker.java"


# static fields
.field public static final blacklist SIGNATURES:Landroid/content/pm/Signature;

.field public static final blacklist SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

.field private static final blacklist SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

.field private static final blacklist SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

.field private static final blacklist SYSSCOPE_RESULT_FILTER:Landroid/content/IntentFilter;

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mIsEchoAppSignature:Z

.field private static blacklist mIsICDStatus:Z

.field private static blacklist mIsMyAccountSignature:Z

.field private static blacklist mIsSim:Z

.field private static blacklist mIsSprintHubSignature:Z

.field private static blacklist mIsTrafficStatsEnable:Z

.field private static final blacklist mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private static blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmIsSim()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmIsSim(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisSPRSIM()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->isSPRSIM()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisTMOSIM()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->isTMOSIM()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SYSSCOPE_RESULT_FILTER:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    .line 32
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    .line 33
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    .line 34
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    .line 35
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    .line 36
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsTrafficStatsEnable:Z

    .line 47
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES:Landroid/content/pm/Signature;

    .line 77
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    .line 107
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    .line 162
    new-instance v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker$1;

    invoke-direct {v0}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker$1;-><init>()V

    sput-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static blacklist disable()V
    .locals 2

    .line 154
    const-string v0, "DeviceReportingSecurityChecker"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 156
    sput-boolean v1, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsTrafficStatsEnable:Z

    .line 157
    sget-object v1, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-static {}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->disable()V

    :cond_0
    return-void
.end method

.method public static blacklist enable(Landroid/content/Context;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceReportingSecurityChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sput-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 141
    const-string p0, "DBG == true"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string p0, "init"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 143
    sput-boolean p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsTrafficStatsEnable:Z

    .line 144
    sget-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    sget-object p0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getSignatureUsingSalesCode()V

    .line 147
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getICDStatus()Z

    return-void

    .line 149
    :cond_0
    const-string p0, "Context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist getEchoAppSignature()Z
    .locals 8

    .line 259
    const-string v0, "getEchoAppSignature"

    const-string v1, "DeviceReportingSecurityChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 263
    :try_start_0
    const-string v3, "com.tmobile.echolocate"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    .line 265
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    move v6, v2

    .line 266
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 267
    sget-object v7, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    .line 268
    sput-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 276
    :catch_0
    const-string v0, "Package is not installed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 280
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEchoAppSignature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    return v0
.end method

.method private static blacklist getICDStatus()Z
    .locals 4

    .line 220
    const-string v0, "getICDStatus"

    const-string v1, "DeviceReportingSecurityChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "ro.boot.flash.locked"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "ICD check passed OK - ro.boot.flash.locked = 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 223
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICD check not passed : NOK - ro.boot.flash.locked = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.boot.verifiedbootstate"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 226
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    .line 228
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsICDStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    return v0
.end method

.method private static blacklist getMyaccountSignature()Z
    .locals 8

    .line 233
    const-string v0, "getMyaccountSignature"

    const-string v1, "DeviceReportingSecurityChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 237
    :try_start_0
    const-string v3, "com.tmobile.pr.mytmobile"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    .line 239
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    move v6, v2

    .line 240
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 241
    sget-object v7, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    .line 242
    sput-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 250
    :catch_0
    const-string v0, "Package is not installed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 254
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMyAccountSignature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    return v0
.end method

.method private static blacklist getSignatureUsingSalesCode()V
    .locals 4

    .line 185
    const-string v0, "DeviceReportingSecurityChecker"

    const-string v1, ""

    .line 187
    :try_start_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    const-string v2, "Problem getting sales code!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    .line 194
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sales_code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 198
    :cond_1
    const-string v0, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getSprintHubSignature()Z

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 201
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    .line 202
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    .line 203
    sput-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    goto :goto_3

    .line 196
    :cond_3
    :goto_2
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getMyaccountSignature()Z

    .line 197
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getEchoAppSignature()Z

    :goto_3
    return-void
.end method

.method private static blacklist getSprintHubSignature()Z
    .locals 8

    .line 285
    const-string v0, "getSprintHubSignature"

    const-string v1, "DeviceReportingSecurityChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 289
    :try_start_0
    const-string v3, "com.sprint.ms.smf.services"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    .line 291
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    move v6, v2

    .line 292
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 293
    sget-object v7, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    .line 294
    sput-boolean v5, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 302
    :catch_0
    const-string v0, "Package is not installed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 306
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSprintHubSignature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    return v0
.end method

.method public static blacklist getStatus()Z
    .locals 4

    .line 311
    const-string v0, "getStatus"

    const-string v1, "DeviceReportingSecurityChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "mIsICDStatus is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_0
    const-string v0, "mIsICDStatus is false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    if-eqz v0, :cond_1

    const-string v0, "mIsSim is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    if-eqz v0, :cond_2

    const-string v0, "mIsMyAccountSignature is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_2
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    if-eqz v0, :cond_3

    const-string v0, "mIsEchoAppSignature is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_3
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    if-eqz v0, :cond_4

    const-string v0, "mIsSprintHubSignature is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_4
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    if-eqz v0, :cond_6

    .line 322
    :cond_5
    const-string v0, "security check passed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    :cond_6
    const-string v0, "security check NOT passed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_1
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsTrafficStatsEnable:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 328
    :cond_7
    sput-boolean v2, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsTrafficStatsEnable:Z

    .line 329
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/tmodiagnostics/TrafficStateDatabaseController;->enable(Landroid/content/Context;)V

    .line 332
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsICDStatus === "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsSim == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsMyAccountSignature== "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsEchoAppSignature== "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsSprintHubSignature== "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsICDStatus:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSim:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsEchoAppSignature:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mIsSprintHubSignature:Z

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_a
    return v2
.end method

.method private static blacklist isSPRSIM()Z
    .locals 7

    .line 368
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.sim.operator.numeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceReportingSecurityChecker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    .line 372
    new-array v3, v3, [Ljava/lang/String;

    .line 373
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 374
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 376
    :cond_0
    aput-object v0, v3, v1

    .line 378
    :goto_0
    array-length v0, v3

    if-lez v0, :cond_3

    move v0, v1

    .line 379
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 380
    aget-object v4, v3, v0

    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 381
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.operator.numeric Arr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v5, "310120"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "312530"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310028"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "311390"

    .line 384
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310332"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "311328"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimFound= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static blacklist isTMOSIM()Z
    .locals 7

    .line 337
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.sim.operator.numeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceReportingSecurityChecker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    .line 341
    new-array v3, v3, [Ljava/lang/String;

    .line 342
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 345
    :cond_0
    aput-object v0, v3, v1

    .line 347
    :goto_0
    array-length v0, v3

    if-lez v0, :cond_3

    move v0, v1

    .line 348
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 349
    aget-object v4, v3, v0

    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 350
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.operator.numeric Arr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v5, "310160"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310200"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310210"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310220"

    .line 353
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310230"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310240"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310250"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310260"

    .line 354
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310270"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310310"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310490"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310660"

    .line 355
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "310800"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 363
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimFound= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static blacklist isWifiConnected()Z
    .locals 3

    .line 208
    sget-object v0, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method
