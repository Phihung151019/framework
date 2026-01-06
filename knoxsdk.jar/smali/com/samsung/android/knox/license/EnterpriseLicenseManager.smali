.class public Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ACTION_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_STATUS"

.field private static final greylist ACTIVATE_LICENSE_API_USAGE_NAME:Ljava/lang/String; = "EnterpriseLicenseManager.activateLicense"

.field private static final greylist API_MAX_LEN:I = 0x64

.field public static final greylist ERROR_INTERNAL:I = 0x12d

.field public static final greylist ERROR_INTERNAL_SERVER:I = 0x191

.field public static final greylist ERROR_INVALID_LICENSE:I = 0xc9

.field public static final greylist ERROR_INVALID_PACKAGE_NAME:I = 0xcc

.field public static final greylist ERROR_LICENSE_TERMINATED:I = 0xcb

.field public static final greylist ERROR_NETWORK_DISCONNECTED:I = 0x1f5

.field public static final greylist ERROR_NETWORK_GENERAL:I = 0x1f6

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist ERROR_NOT_CURRENT_DATE:I = 0xcd

.field public static final greylist ERROR_NO_MORE_REGISTRATION:I = 0xca

.field public static final greylist ERROR_NULL_PARAMS:I = 0x65

.field public static final greylist ERROR_SIGNATURE_MISMATCH:I = 0xce

.field public static final greylist ERROR_TOO_MANY_REQUESTS:I = 0xd1

.field public static final greylist ERROR_UNKNOWN:I = 0x66

.field public static final greylist ERROR_USER_DISAGREES_LICENSE_AGREEMENT:I = 0x259

.field public static final greylist ERROR_VERSION_CODE_MISMATCH:I = 0xcf

.field public static final greylist EXTRA_LICENSE_DATA_LICENSE_PERMISSIONS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

.field public static final greylist EXTRA_LICENSE_DATA_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

.field public static final greylist EXTRA_LICENSE_DATA_PACKAGEVERSION:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

.field public static final greylist EXTRA_LICENSE_DATA_REQUEST_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

.field public static final greylist EXTRA_LICENSE_DATA_TIME_REMAINING_UNTIL_NEXT_LICENSE_REQUEST:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_LICENSE_DATA_TIME_REMAINING_UNTIL_NEXT_LICENSE_REQUEST"

.field public static final greylist EXTRA_LICENSE_DATA_UUID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

.field public static final greylist EXTRA_LICENSE_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

.field public static final greylist EXTRA_LICENSE_GRANTED_PERMISSIONS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

.field public static final greylist EXTRA_LICENSE_KEY:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

.field public static final greylist EXTRA_LICENSE_PERM_GROUP:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

.field public static final greylist EXTRA_LICENSE_RESULT_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

.field public static final greylist EXTRA_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

.field public static final greylist LICENSE_LOG_API:Ljava/lang/String; = "api_call"

.field public static final greylist LICENSE_LOG_DATE:Ljava/lang/String; = "log_date"

.field public static final greylist LICENSE_PERMISSIONS:Ljava/lang/String; = "Permissions"

.field public static final greylist LICENSE_RESULT_TYPE_ACTIVATION:I = 0x320

.field public static final greylist LICENSE_RESULT_TYPE_DEACTIVATION:I = 0x322

.field public static final greylist LICENSE_RESULT_TYPE_VALIDATION:I = 0x321

.field public static final greylist SUCCESS_STATUS_RESULT:Ljava/lang/String; = "success"

.field private static final greylist TAG:Ljava/lang/String; = "EnterpriseLicenseManager"

.field private static greylist gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

.field private static greylist lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

.field private static final greylist mSync:Ljava/lang/Object;


# instance fields
.field private final greylist contextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->contextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static greylist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .locals 1

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->gLicenseMgrInst:Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static declared-synchronized greylist getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    if-nez v1, :cond_0

    const-string v1, "enterprise_license_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p0, p1, v0, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static greylist log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p0, p1, p2, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public greylist activateLicense(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->contextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "EnterpriseLicenseManager.activateLicense"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public greylist activateLicense(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$1;-><init>(Lcom/samsung/android/knox/license/EnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->contextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p2, "EnterpriseLicenseManager.activateLicense"

    invoke-static {p0, p2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1, v0, v1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public greylist activateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->contextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "EnterpriseLicenseManager.activateLicense"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public greylist activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$2;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$2;-><init>(Lcom/samsung/android/knox/license/EnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->contextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p3, "EnterpriseLicenseManager.activateLicense"

    invoke-static {p0, p3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1, p2, v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public greylist deleteAllApiCallData()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteAllApiCallData()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "EnterpriseLicenseManager"

    const-string v1, "deleteAllApiCallData(). Failed talking to License policy service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteApiCallDataByAdmin(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist deleteLicense(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteLicense(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->deleteLicenseByAdmin(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "EnterpriseLicenseManager"

    const-string v1, "Failed talking to License policy service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getApiCallData(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10

    const-string p0, "EnterpriseLicenseManager"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get Bundle using key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v6, "log_date"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "api_call"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :goto_2
    const-string v1, "Failed talking to License policy service "

    invoke-static {p0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    const-string v1, "JSONException"

    invoke-static {p0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-object v0
.end method

.method public greylist getApiCallDataByAdmin(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10

    const-string p0, "EnterpriseLicenseManager"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getApiCallDataByAdmin(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get Bundle using key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v6, "log_date"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "api_call"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :goto_2
    const-string v1, "Failed talking to License policy service "

    invoke-static {p0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    const-string v1, "JSONException"

    invoke-static {p0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-object v0
.end method

.method public greylist getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public greylist processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/license/RightsObject;",
            "Lcom/samsung/android/knox/license/Error;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist processLicenseValidationResult(Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/license/RightsObject;",
            "Lcom/samsung/android/knox/license/Error;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->processLicenseValidationResult(Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "EnterpriseLicenseManager"

    const-string p2, "Failed talking to License policy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist resetLicense(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->resetLicense(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getService()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->lService:Lcom/samsung/android/knox/license/IEnterpriseLicense;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->resetLicenseByAdmin(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "EnterpriseLicenseManager"

    const-string v0, "Failed talking to License policy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
