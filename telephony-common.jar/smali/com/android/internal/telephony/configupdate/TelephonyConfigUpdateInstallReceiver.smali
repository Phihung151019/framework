.class public Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;
.super Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;
.source "TelephonyConfigUpdateInstallReceiver.java"

# interfaces
.implements Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor;


# static fields
.field public static final blacklist BACKUP_VERSION:Ljava/lang/String; = "backup_version"

.field protected static final blacklist NEW_CONFIG_CONTENT_PATH:Ljava/lang/String; = "new_telephony_config.pb"

.field protected static final blacklist UPDATE_DIR:Ljava/lang/String; = "/data/misc/telephonyconfig"

.field protected static final blacklist UPDATE_METADATA_PATH:Ljava/lang/String; = "metadata/"

.field protected static final blacklist VALID_CONFIG_CONTENT_PATH:Ljava/lang/String; = "valid_telephony_config.pb"

.field public static final blacklist VERSION:Ljava/lang/String; = "version"

.field public static blacklist sReceiverAdaptorInstance:Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;


# instance fields
.field private blacklist mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

.field private final blacklist mConfigParserLock:Ljava/lang/Object;

.field private final blacklist mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

.field private blacklist mOriginalVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->sReceiverAdaptorInstance:Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 84
    const-string v0, "metadata/"

    const-string v1, "version"

    const-string v2, "/data/misc/telephonyconfig"

    const-string v3, "new_telephony_config.pb"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    return-void
.end method

.method private blacklist backupContentData()Z
    .locals 5

    .line 438
    const-string v0, "valid_telephony_config.pb"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "TelephonyConfigUpdateInstallReceiver"

    if-nez v1, :cond_0

    .line 439
    const-string p0, "valid_telephony_config.pb is not exit, no need to backup"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 442
    :cond_0
    const-string v1, "backup_telephony_config.pb"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 443
    const-string p0, "backupContentData: fail to backup the config data"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 446
    :cond_1
    const-string v0, "metadata/version"

    const-string v4, "metadata/backup_version"

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 448
    const-string p0, "bakpuackupContentData: fail to backup the version"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 451
    :cond_2
    const-string p0, "backupContentData: backup success"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->sReceiverAdaptorInstance:Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    return-object v0
.end method

.method private blacklist isFileExists(Ljava/lang/String;)Z
    .locals 2

    .line 428
    const-string p0, "isFileExists"

    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 430
    const-string p1, "fileName cannot be null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 433
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/telephonyconfig"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private blacklist overrideVersion(I)Z
    .locals 6

    .line 412
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    int-to-long v4, p1

    .line 415
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 414
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    if-eqz p0, :cond_0

    .line 417
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->overrideVersion(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 423
    :try_start_1
    monitor-exit v0

    return p0

    .line 420
    :goto_1
    const-string p1, "TelephonyConfigUpdateInstallReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideVersion: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 424
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist postInstall()V
    .locals 7

    .line 183
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "Telephony config is updated in file partition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v0, "satellite"

    iget-object v1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getContentFromContentPath(Ljava/io/File;)[B

    move-result-object v1

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getNewConfigParser(Ljava/lang/String;[B)Lcom/android/internal/telephony/configupdate/ConfigParser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "newConfigParser is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->isValidSatelliteCarrierConfigData(Lcom/android/internal/telephony/configupdate/ConfigParser;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "received config data has invalid satellite carrier config data"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->isValidMaxAllowedDataMode(Lcom/android/internal/telephony/configupdate/ConfigParser;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "received config data has invalid max allowed data mode"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    if-eqz v2, :cond_3

    .line 205
    iget v2, v0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 206
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    iget v3, v3, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 207
    const-string v4, "TelephonyConfigUpdateInstallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previous proto version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " | updated proto version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v2, v3, :cond_3

    .line 211
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated proto Version ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is smaller than previous proto Version ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    .line 215
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 218
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v2

    iput-object v0, v2, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    invoke-virtual {v3}, Lcom/android/internal/telephony/configupdate/ConfigParser;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->setConfigVersion(I)Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    .line 220
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 226
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;->onChanged(Lcom/android/internal/telephony/configupdate/ConfigParser;)V

    goto :goto_0

    .line 230
    :cond_4
    const-string v0, "new_telephony_config.pb"

    const-string v1, "valid_telephony_config.pb"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 231
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "fail to copy to the valid satellite carrier config data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    :cond_5
    return-void

    .line 220
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist restoreContentData()Z
    .locals 5

    .line 456
    const-string v0, "backup_telephony_config.pb"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "TelephonyConfigUpdateInstallReceiver"

    if-nez v1, :cond_0

    .line 457
    const-string p0, "backup_telephony_config.pb is not exit, no need to restore"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 460
    :cond_0
    const-string v1, "new_telephony_config.pb"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 461
    const-string p0, "restoreContentData: fail to restore the config data"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 464
    :cond_1
    const-string v0, "metadata/backup_version"

    const-string v4, "metadata/version"

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    const-string p0, "restoreContentData: fail to restore the version"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 469
    :cond_2
    const-string v0, "restoreContentData: populate the data to SatelliteController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->postInstall()V

    .line 471
    const-string p0, "restoreContentData: success"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public blacklist cleanUpTelephonyConfigs()Z
    .locals 5

    .line 360
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "cleanTelephonyConfigs: resetting the telephony configs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 363
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v3, "metadata/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, -0x1

    .line 367
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 364
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 370
    iget-object v1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v0, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 373
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v3, "valid_telephony_config.pb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v0, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "cleanTelephonyConfigs: resetting the config parser"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter p0

    .line 382
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    .line 383
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception p0

    .line 376
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean telephony config files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist copySourceFileToTargetFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 332
    const-string p0, "/data/misc/telephonyconfig"

    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copy "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " >> "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 337
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 340
    :cond_0
    :goto_0
    invoke-static {v2, p1}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 341
    invoke-static {v2, p1}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "success to copy the file "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 350
    :cond_1
    const-string p0, "source file is not exist, no file to copy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 347
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copy error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public blacklist getConfigParser(Ljava/lang/String;)Lcom/android/internal/telephony/configupdate/ConfigParser;
    .locals 5

    .line 240
    const-string v0, "TelephonyConfigUpdateInstallReceiver"

    const-string v1, "getConfigParser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    if-nez v1, :cond_0

    .line 243
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateNewConfigParser with domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "valid_telephony_config.pb"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getContentFromContentPath(Ljava/io/File;)[B

    move-result-object v2

    .line 244
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getNewConfigParser(Ljava/lang/String;[B)Lcom/android/internal/telephony/configupdate/ConfigParser;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 248
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    monitor-exit v0

    return-object p0

    .line 249
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getContentFromContentPath(Ljava/io/File;)[B
    .locals 1

    .line 95
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 97
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read current content : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TelephonyConfigUpdateInstallReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getNewConfigParser(Ljava/lang/String;[B)Lcom/android/internal/telephony/configupdate/ConfigParser;
    .locals 3

    const/4 v0, 0x0

    .line 308
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    if-nez p2, :cond_0

    .line 309
    const-string p0, "content data is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "satellite"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 316
    const-string p1, "DOMAIN should be specified"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    return-object v0

    .line 314
    :cond_1
    new-instance p0, Lcom/android/internal/telephony/satellite/SatelliteConfigParser;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteConfigParser;-><init>([B)V

    return-object p0
.end method

.method public blacklist getUpdateContent()Ljava/io/File;
    .locals 0

    .line 288
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    return-object p0
.end method

.method public blacklist getUpdateDir()Ljava/io/File;
    .locals 0

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    return-object p0
.end method

.method public blacklist isValidMaxAllowedDataMode(Lcom/android/internal/telephony/configupdate/ConfigParser;)Z
    .locals 4

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->getConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteConfig;

    const/4 v0, 0x0

    .line 152
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    if-nez p1, :cond_0

    .line 153
    const-string p1, "satelliteConfig is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    return v0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->getSatelliteMaxAllowedDataMode()Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 161
    const-string p0, "maxAllowedDataMode is not set"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/data/DataUtils;->isValidDataMode(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found invalid maxAllowedDataMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportCarrierConfigError(I)V

    return v0

    .line 172
    :cond_2
    const-string p0, "maxAllowedDataMode is valid"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist isValidSatelliteCarrierConfigData(Lcom/android/internal/telephony/configupdate/ConfigParser;)Z
    .locals 8

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->getConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/satellite/SatelliteConfig;

    const/4 v0, 0x0

    .line 109
    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    if-nez p1, :cond_0

    .line 110
    const-string p1, "satelliteConfig is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportOemAndCarrierConfigError(I)V

    return v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->getAllSatelliteCarrierIds()Ljava/util/Set;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 120
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/satellite/SatelliteConfig;->getSupportedSatelliteServices(I)Ljava/util/Map;

    move-result-object v3

    .line 121
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 122
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    invoke-static {v5}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPlmn(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found invalid plmn : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportCarrierConfigError(I)V

    return v0

    .line 129
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 130
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 131
    invoke-static {v6}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidService(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found invalid service : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigUpdaterMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ConfigUpdaterMetricsStats;->reportCarrierConfigError(I)V

    return v0

    .line 140
    :cond_5
    const-string p0, "the config data is valid"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist overrideConfigParser(Lcom/android/internal/telephony/configupdate/ConfigParser;)V
    .locals 1

    .line 258
    const-string p0, "TelephonyConfigUpdateInstallReceiver"

    const-string v0, "overrideConfigParser"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParserLock:Ljava/lang/Object;

    monitor-enter p0

    .line 260
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mConfigParser:Lcom/android/internal/telephony/configupdate/ConfigParser;

    .line 261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist overrideVersion(ZI)Z
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideVersion: reset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyConfigUpdateInstallReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 398
    iget p2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mOriginalVersion:I

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->restoreContentData()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 403
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mOriginalVersion:I

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->backupContentData()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 408
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->overrideVersion(I)Z

    move-result p0

    return p0
.end method

.method public blacklist postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->postInstall()V

    return-void
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setCallbackMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;",
            ">;)V"
        }
    .end annotation

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->getInstance()Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;

    move-result-object p0

    iput-object p1, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/TelephonyConfigUpdateInstallReceiver;->mCallbackHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
