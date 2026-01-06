.class public Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;
.super Ljava/lang/Object;
.source "UwbScpmManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "UwbScpmManger"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

.field private mIsWritten:Z

.field private mPackageName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

.field private final mScpmReader:Lcom/samsung/android/server/uwb/scpm/ScpmReader;

.field private mScpmToken:Ljava/lang/String;

.field private mScpmUpdater:Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;

.field private final mScpmWriter:Lcom/samsung/android/server/uwb/scpm/ScpmWriter;

.field private scpmVersion:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScpmUpdater(Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmUpdater:Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendorExtension"    # Lcom/samsung/android/server/uwb/IVendorExtension;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmToken:Ljava/lang/String;

    .line 43
    const-string v0, "01"

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->scpmVersion:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIsWritten:Z

    .line 46
    new-instance v0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;-><init>(Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    const-string v0, "UwbScpmManger"

    const-string v1, "UwbScpmManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->registerIntent()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->registerAppToScpm()V

    .line 82
    iput-object p2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    .line 83
    new-instance v0, Lcom/samsung/android/server/uwb/scpm/ScpmReader;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/scpm/ScpmReader;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmReader:Lcom/samsung/android/server/uwb/scpm/ScpmReader;

    .line 84
    new-instance v0, Lcom/samsung/android/server/uwb/scpm/ScpmWriter;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/scpm/ScpmWriter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmWriter:Lcom/samsung/android/server/uwb/scpm/ScpmWriter;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmReader:Lcom/samsung/android/server/uwb/scpm/ScpmReader;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/scpm/ScpmReader;->readCountryCodeVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->scpmVersion:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private addLength([B)[B
    .locals 3
    .param p1, "policy"    # [B

    .line 89
    array-length v0, p1

    int-to-short v0, v0

    .line 91
    .local v0, "policyLength":S
    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    .local v1, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private registerIntent()V
    .locals 9

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 100
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.scpm.policy.UPDATE.UWB_REGULATION"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private writeRegulationForHal([B)V
    .locals 5
    .param p1, "policy"    # [B

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsWritten : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIsWritten:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UwbScpmManger"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/WriteCountryCodeCommand;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->addLength([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/uwb/support/uci/cmd/WriteCountryCodeCommand;-><init>([B)V

    .line 153
    .local v0, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v2

    .line 154
    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v4

    .line 153
    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    .line 155
    return-void
.end method


# virtual methods
.method public getScpmToken()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmToken:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteResult()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIsWritten:Z

    return v0
.end method

.method public isScpmAvailable()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public registerAppToScpm()V
    .locals 9

    .line 112
    sget-boolean v0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->DBG:Z

    const-string v1, "UwbScpmManger"

    if-eqz v0, :cond_0

    const-string v0, "registerAppToScpm"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    new-instance v0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/scloud/lib/platform/api/Scpm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    .line 114
    new-instance v0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;-><init>(Lcom/samsung/android/scloud/lib/platform/api/Scpm;Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmUpdater:Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "installedSig":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mPackageName:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    iget-object v2, v2, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->registration:Lcom/samsung/android/scloud/lib/platform/api/Registration;

    .line 118
    .local v2, "registration":Lcom/samsung/android/scloud/lib/platform/api/Registration;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 120
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->isScpmAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mPackageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 123
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "installedSig":Ljava/lang/String;
    .local v1, "installedSig":Ljava/lang/String;
    move-object v0, v1

    goto :goto_0

    .line 124
    .end local v1    # "installedSig":Ljava/lang/String;
    .restart local v0    # "installedSig":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mPackageName:Ljava/lang/String;

    const-string v4, "qmovny2fm5"

    invoke-virtual {v2, v1, v4, v0}, Lcom/samsung/android/scloud/lib/platform/api/Registration;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    move-result-object v1

    .line 129
    .local v1, "scpmDataSet":Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    iget-object v5, v1, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->token:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmToken:Ljava/lang/String;

    .line 131
    new-instance v5, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;

    iget-object v6, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->scpmVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmToken:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mPackageName:Ljava/lang/String;

    invoke-direct {v5, v4, v6, v7, v8}, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v5, "configurationVo":Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;
    iget-object v4, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    iget-object v4, v4, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    invoke-virtual {v4, v5}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->initialize(Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    .line 135
    .end local v1    # "scpmDataSet":Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    .end local v5    # "configurationVo":Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;
    goto :goto_1

    .line 136
    :cond_1
    const-string v4, "scpm is not available"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_1
    return-void
.end method

.method public setWriteResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIsWritten:Z

    .line 168
    return-void
.end method

.method public writeSCPMPolicyWithoutLength()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mScpmReader:Lcom/samsung/android/server/uwb/scpm/ScpmReader;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/scpm/ScpmReader;->readPolicyContents()[B

    move-result-object v0

    .line 142
    .local v0, "contents":[B
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIsWritten:Z

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsWritten : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->mIsWritten:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UwbScpmManger"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez v0, :cond_0

    .line 145
    const-string v1, "There is no policy file."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->writeRegulationForHal([B)V

    .line 149
    return-void
.end method
