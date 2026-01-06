.class public Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;,
        Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;,
        Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedRegionException;
    }
.end annotation


# static fields
.field public static final greylist ACTION_NOTIFY_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_STATUS"

.field public static final greylist BUNDLE_EXTRA_CONFIG_VIEWER_KEY:Ljava/lang/String; = "ConfigViewer"

.field public static final greylist BUNDLE_EXTRA_UNENROLL_VIEWER_KEY:Ljava/lang/String; = "UnEnrollViewer"

.field public static final greylist ERROR_APP_LIMIT_REACHED:I = -0x11

.field public static final greylist ERROR_BAD_STATE:I = -0xa

.field public static final greylist ERROR_INTERNAL:I = -0x8

.field public static final greylist ERROR_INVALID_JSON_FORMAT:I = -0x3

.field public static final greylist ERROR_MANAGED_USER_NOT_SUPPORTED:I = -0xe

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist ERROR_NULL_PARAMETER:I = -0x7

.field public static final greylist ERROR_PACKAGE_NOT_REGISTERED:I = -0x5

.field public static final greylist ERROR_PROFILE_LIMIT_REACHED:I = -0x6

.field public static final greylist ERROR_PROFILE_NAME_EXISTS_DIFFERENT_OWNER:I = -0xc

.field public static final greylist ERROR_PROFILE_NOT_FOUND:I = -0x2

.field public static final greylist ERROR_PROFILE_RUNNING:I = -0x9

.field public static final greylist ERROR_REGION_NOT_SUPPORTED:I = -0xf

.field public static final greylist ERROR_USER_DISAGREE:I = -0xb

.field public static final greylist ERROR_USER_NOT_SUPPORTED:I = -0xd

.field public static final greylist ERROR_USER_REGISTERED:I = -0x10

.field public static final greylist EXTRA_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_CODE"

.field public static final greylist EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field public static final greylist EXTRA_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TYPE"

.field public static final greylist RESULT_API_PAUSE:I = 0x66

.field public static final greylist RESULT_API_REMOVED:I = 0x67

.field public static final greylist RESULT_API_START:I = 0x64

.field public static final greylist RESULT_API_STOP:I = 0x65

.field public static final greylist STATUS_PACKAGE_AUTHORIZED:I = 0x7

.field public static final greylist STATUS_PACKAGE_REGISTERED:I = 0x1

.field public static final greylist STATUS_PACKAGE_UNREGISTERED:I = 0x2

.field public static final greylist STATUS_PROFILE_IDLE:I = 0x6

.field public static final greylist STATUS_PROFILE_PAUSED:I = 0x4

.field public static final greylist STATUS_PROFILE_RUNNING:I = 0x3

.field public static final greylist STATUS_PROFILE_STOPPED:I = 0x5

.field public static final greylist TAG:Ljava/lang/String; = "knoxNwFilter-NetworkFilterService"

.field public static final greylist TYPE_BOOT_COMPLETED:I = 0x2

.field public static final greylist TYPE_LOCK_BOOT_COMPLETED:I = 0x1

.field public static greylist mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

.field public static greylist mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

.field public static final greylist mSync:Ljava/lang/Object;


# instance fields
.field public greylist mContext:Landroid/content/Context;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static greylist enforceCountryIsoCode()V
    .locals 3

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCountryIso  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "knoxNwFilter-NetworkFilterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static greylist enforceUser(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;,
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;
        }
    .end annotation

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const-string v1, "prepare filtering failed since device owner is configured for user "

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string v3, "vpn_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v3

    :try_start_0
    invoke-interface {v3, v2}, Landroid/net/IVpnManager;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;

    invoke-direct {v1}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RemoteException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    const-string v3, "prepare filtering failed since wpc configured for user "

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;-><init>()V

    throw p0

    :cond_2
    if-nez v1, :cond_5

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "prepare filtering failed since wpp configured for user "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "prepare filtering failed since user is unmanaged other than primary user "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "prepare filtering failed since user is secure folder user "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;-><init>()V

    throw p0
.end method

.method public static greylist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getInstanceValidation()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    if-nez v1, :cond_0

    const-string v1, "knoxNwFilter-NetworkFilterService"

    const-string v2, "getInstance API creating new object"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNfs:Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown error occured while fetching the instance "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "knoxNwFilter-NetworkFilterService"

    const-string v0, "getInstance API failed since service not started yet"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static greylist getIntentForConfirmation(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040387

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static greylist getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    if-nez v0, :cond_0

    const-string v0, "knox_nwFilterMgr_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    return-object v0
.end method

.method public static greylist getVersion(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.app.networkfilter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist prepare(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedUserException;,
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;,
            Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedRegionException;,
            Ljava/lang/SecurityException;,
            Landroid/os/LimitExceededException;
        }
    .end annotation

    const-string v0, "internal error"

    const-string v1, "prepare: packageName: "

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->enforceUser(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->enforceCountryIsoCode()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v3

    const-string v4, "knoxNwFilter-NetworkFilterService"

    if-eqz v3, :cond_5

    :try_start_1
    sget-object v3, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {v3}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->isAuthorized()Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    return-object v5

    :cond_1
    :try_start_2
    sget-object v3, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {v3, v2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->isUserLimitReached(Z)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    :try_start_3
    sget-object v2, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->prepareFiltering(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v1, -0x10

    if-eq p1, v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->showManagedUserDialog(Landroid/content/Context;)V

    return-object v5

    :cond_2
    :try_start_4
    const-string p0, "prepare filtering failed KSP/EMM has already configured the user"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService$UnSupportedManagedUserException;-><init>()V

    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-string p0, "Failed due to remote exception during prepareFiltering call"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getIntentForConfirmation(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    :try_start_5
    const-string p0, "prepare filtering failed since user limit reached"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/LimitExceededException;

    invoke-direct {p0}, Landroid/os/LimitExceededException;-><init>()V

    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    const-string p0, "Failed due to remote exception during isUserLimitReached call"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    const-string p0, "Failed due to remote exception during isAuthorized call"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "Failed due to service null during isAuthorized call"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "service not started"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist showManagedUserDialog(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040388

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x50800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startActivityAsUser  KnoxVpnPPDialog userId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "knoxNwFilter-NetworkFilterService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public greylist getAllProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getAllProfiles()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to getAllProfiles"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "getAllProfiles API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to getConfig"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "getConfig API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getProfileStatus(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const/4 v1, -0x8

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getProfileStatus(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at getProfileStatus"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p0, "getProfileStatus API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public greylist getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed at getRegisteredListeners"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "getRegisteredListeners API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist pause(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const/4 v1, -0x8

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->pause(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to pause"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p0, "pause API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public greylist registerListeners(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const/4 v1, -0x8

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->registerListeners(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed at registerListeners"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p0, "registerListeners API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public greylist setConfig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const/4 v1, -0x8

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to setConfig "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p0, "setConfig API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public greylist start(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const/4 v1, -0x8

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->start(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p0, "start API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public greylist stop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object p0

    const-string v0, "knoxNwFilter-NetworkFilterService"

    const/4 v1, -0x8

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/samsung/android/knox/zt/networktrust/filter/serviceprovider/NetworkFilterService;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->stop(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to stop"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p0, "stop API failed since service not started yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
