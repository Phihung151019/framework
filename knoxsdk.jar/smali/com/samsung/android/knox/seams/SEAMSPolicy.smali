.class public Lcom/samsung/android/knox/seams/SEAMSPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist BBC_SECURED_APPTYPE:I = 0x5

.field public static final greylist CLIPBOARD_DISABLE_BIDIRECTIONAL:I = 0x1

.field public static final greylist CLIPBOARD_ENABLE_BIDIRECTIONAL:I = 0x0

.field public static final greylist DEBUG:Z = false

.field public static final greylist ERROR_ALREADY_CONTAINER_APP:I = -0x9

.field public static final greylist ERROR_CERTS_NOT_MATCHED:I = -0xd

.field public static final greylist ERROR_CONTAINER_COUNTS_OVERFLOW:I = -0x7

.field public static final greylist ERROR_CONTAINER_ID_MISMATCH:I = -0xc

.field public static final greylist ERROR_CONTAINER_NOT_EMPTY:I = -0xb

.field public static final greylist ERROR_NOT_SUPPORTED:I = -0x3

.field public static final greylist ERROR_NO_CERTS:I = -0xe

.field public static final greylist FALSE:I = 0x0

.field public static final greylist GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final greylist GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final greylist GET_SERVICE_ERROR:I = -0xa

.field public static final greylist IRM_PLATFORM_APPTYPE:I = 0x7

.field public static final greylist IRM_UNTRUST_APPTYPE:I = 0x8

.field public static final greylist NOT_INSTALLED:I = -0x4

.field public static final greylist POLICY_FAILED:I = -0x1

.field public static final greylist POLICY_OK:I = 0x0

.field public static final greylist POLICY_REFUSED:I = -0x2

.field public static final greylist RUNNING:I = -0x8

.field public static final greylist SET_DEFAULT_MASK:I = 0x0

.field public static final greylist TAG:Ljava/lang/String; = "SEAMS"

.field public static final greylist TRUE:I = 0x1

.field public static greylist mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

.field public static final greylist mSync:Ljava/lang/Object;


# instance fields
.field public greylist mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 0

    new-instance p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public static greylist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static greylist getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .locals 1

    sget-object p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public greylist activateDomain()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist activateDomain(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist createSEContainer()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist deActivateDomain()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist forceAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Service is null"

    const-string p2, "SEAMS"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "Process ID rejected."

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist getAMSLog()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getAMSLogLevel()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist getAMSMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist getAVCLog()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getActivationStatus()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist getDataType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDataType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDomain(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getSEAMSLog()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getSEContainerIDs()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getSELinuxMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist getSepolicyVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized greylist getService()Lcom/samsung/android/knox/seams/ISEAMS;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    if-nez v0, :cond_0

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist getSignatureFromCertificate([B)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist hasKnoxContainers()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist hasSEContainers()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    const-string v1, "SEAMS"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Failed to check the authenticity of the caller"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "SystemService null. Returning GET_SERVICE_ERROR."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0
.end method

.method public greylist isSEAndroidLogDumpStateInclude()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist isSEPolicyAutoUpdateEnabled()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist loadContainerSetting(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist relabelAppDir(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist relabelData()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist removeSEContainer(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist setAMSLogLevel(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist setSEAndroidLogDumpStateInclude(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
