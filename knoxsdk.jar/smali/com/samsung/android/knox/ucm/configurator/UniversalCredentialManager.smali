.class public Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ACTION_UCM_CONFIG_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_CONFIG_STATUS"

.field public static final greylist ACTION_UCM_KEYGUARD_SET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

.field public static final greylist ACTION_UCM_KEYGUARD_UNSET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

.field public static final greylist ACTION_UCM_NOTIFY_EVENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

.field public static final greylist ACTION_UCM_REFRESH_AGENT_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

.field public static final greylist APPLET_FORM_FACTOR_ESE:Ljava/lang/String; = "eSE"

.field public static final greylist APPLET_FORM_FACTOR_ESE1:Ljava/lang/String; = "eSE1"

.field public static final greylist APPLET_FORM_FACTOR_SD:Ljava/lang/String; = "SD"

.field public static final greylist APPLET_FORM_FACTOR_SD1:Ljava/lang/String; = "SD1"

.field public static final greylist APPLET_FORM_FACTOR_SIM:Ljava/lang/String; = "SIM"

.field public static final greylist APPLET_FORM_FACTOR_SIM1:Ljava/lang/String; = "SIM1"

.field public static final greylist APPLET_FORM_FACTOR_SIM2:Ljava/lang/String; = "SIM2"

.field public static final greylist BUNDLE_CA_CERT_TYPE:Ljava/lang/String; = "cert_type"

.field public static final greylist BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final greylist BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final greylist BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final greylist BUNDLE_EXTRA_ALLOW_WIFI:Ljava/lang/String; = "allow_wifi"

.field public static final greylist BUNDLE_EXTRA_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final greylist BUNDLE_EXTRA_CREDENTIAL_STORAGE:Ljava/lang/String; = "credential_storage"

.field public static final greylist BUNDLE_EXTRA_ENFORCE_LOCK_TYPE_DIRECT_SET:Ljava/lang/String; = "enforce_lock_type_direct_set"

.field public static final greylist BUNDLE_EXTRA_ESE_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field public static final greylist BUNDLE_EXTRA_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final greylist BUNDLE_EXTRA_ODE_CA_CERT:Ljava/lang/String; = "ode_ca_cert"

.field public static final greylist BUNDLE_EXTRA_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final greylist BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final greylist BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final greylist BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final greylist BUNDLE_EXTRA_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final greylist BUNDLE_EXTRA_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final greylist BUNDLE_EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final greylist ERROR_UCM_ALIAS_ALREADY_EXIST:I = -0x14

.field public static final greylist ERROR_UCM_ALIAS_EMPTY:I = -0x10

.field public static final greylist ERROR_UCM_ALIAS_NOT_EXIST:I = -0xe

.field public static final greylist ERROR_UCM_APP_SIGNATURE_INVALID:I = -0x12

.field public static final greylist ERROR_UCM_CALLER_NOT_ALLOWED_TO_MANAGE_STORAGE:I = -0x17

.field public static final greylist ERROR_UCM_CALLER_NOT_CONTAINER_OWNER:I = -0x18

.field public static final greylist ERROR_UCM_FAILURE:I = -0x1

.field public static final greylist ERROR_UCM_INSTALL_DELEGATION_NOT_ALLOWED:I = -0x1d

.field public static final greylist ERROR_UCM_INVALID_ACCESS_TYPE:I = -0xf

.field public static final greylist ERROR_UCM_INVALID_AUTH_TYPE:I = -0x11

.field public static final greylist ERROR_UCM_INVALID_CERTIFICATE:I = -0x19

.field public static final greylist ERROR_UCM_INVALID_EXEMPT_TYPE:I = -0x15

.field public static final greylist ERROR_UCM_INVALID_STORAGE_OPTION:I = -0x13

.field public static final greylist ERROR_UCM_KEYGUARD_CONFIGURED:I = -0x1a

.field public static final greylist ERROR_UCM_MISSING_ARGUMENT:I = -0xb

.field public static final greylist ERROR_UCM_PASSWORD_QUALITY_NOT_UNSPECIFIED:I = -0x1c

.field public static final greylist ERROR_UCM_PASSWORD_UNSUPPORTED_STORAGE:I = -0x1b

.field public static final greylist ERROR_UCM_STORAGE_ALREADY_CONFIGURED:I = -0xa

.field public static final greylist ERROR_UCM_STORAGE_DELEGATION_NOT_ALLOWED:I = -0x1e

.field public static final greylist ERROR_UCM_STORAGE_NOT_ENABLED:I = -0xc

.field public static final greylist ERROR_UCM_STORAGE_NOT_MANAGEABLE:I = -0x16

.field public static final greylist ERROR_UCM_STORAGE_NOT_VALID:I = -0xd

.field public static greylist EVENT_PLUGIN_APPLET_DELETE_COMPLETED:I = 0x3f3

.field public static greylist EVENT_PLUGIN_APPLET_DELETE_FAILED:I = 0x3f4

.field public static greylist EVENT_PLUGIN_APPLET_INSTALL_COMPLETED:I = 0x3e9

.field public static greylist EVENT_PLUGIN_APPLET_INSTALL_FAILED:I = 0x3ea

.field public static greylist EVENT_PLUGIN_APPLET_UPDATE_COMPLETED:I = 0x3fd

.field public static greylist EVENT_PLUGIN_APPLET_UPDATE_FAILED:I = 0x3fe

.field public static final greylist EVENT_PLUGIN_LICENSE_EXPIRED:I = 0x2

.field public static final greylist EVENT_PLUGIN_UNINSTALLED:I = 0x1

.field public static greylist KEY_PLUGIN_EVENT:Ljava/lang/String; = "key_plugin_event"

.field public static final greylist PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final greylist PIN_CACHE_TIMEOUT:I = 0x1

.field public static final greylist RESET_APPLET_FORM_FACTOR:Ljava/lang/String; = "reset"

.field public static final greylist SCP_SD:Ljava/lang/String; = "SCP_SD"

.field public static greylist TAG:Ljava/lang/String; = "UniversalCredentialManager"

.field public static final greylist UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final greylist UCM_ACCESS_TYPE_INSTALL:I = 0x6b

.field public static final greylist UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final greylist UCM_APPLET_DELETE:Ljava/lang/String; = "DELETE_APPLET"

.field public static final greylist UCM_APPLET_ID:Ljava/lang/String; = "applet_id"

.field public static final greylist UCM_APPLET_INSTALL_LOCATION:Ljava/lang/String; = "applet_location"

.field public static final greylist UCM_APPLET_UPGRADE:Ljava/lang/String; = "UPGRADE_APPLET"

.field public static final greylist UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final greylist UCM_AUTH_TYPE_NONE:I = 0x69

.field public static final greylist UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final greylist UCM_STORAGE_OPTION_INSIDE:I = 0x65

.field public static final greylist UCM_STORAGE_OPTION_OUTSIDE:I = 0x66

.field public static final greylist UCM_SUCCESS:I = 0x0

.field public static final greylist UCM_SUCCESS_KEYGUARD_ALREADY_CONFIGURED:I = 0xa

.field public static final greylist WIFI_VIRTUAL_PACKAGE:Ljava/lang/String; = "com.samsung.knox.virtual.wifi"

.field public static greylist mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# instance fields
.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "UniversalCredentialStorageManager API ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized greylist getUCMManager(Landroid/content/Context;)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 5

    const-string v0, "getUCMManager : Invalid user request userId-"

    const-class v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized greylist getUCMManager(Landroid/content/Context;I)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 4

    const-string v0, "getUCMManager : Invalid user request userId-"

    const-class v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized greylist getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v1, :cond_0

    const-string v1, "knox_ucsm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
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

.method public static greylist isValidUser(Landroid/content/Context;I)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "isValidUser userId-"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/knox/cmfa/CmfaManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "persona"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    move v1, v0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isValidUser status-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public greylist addPackagesToExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.addPackagesToExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.addPackagesToExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "addPackagesToExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.addPackagesToExemptList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist addPackagesToWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.addPackagesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.addPackagesToWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "addPackagesToWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.addPackagesToWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "UniversalCredentialManager.addPackagesToWhiteListInternal"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialManager.addPackagesToWhiteListInternal is called...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    const/4 v1, -0x1

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "addPackagesToWhiteListInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.addPackagesToWhiteListInternal getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist changeKeyguardPin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.changeKeyguardPin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.changeKeyguardPin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->changeKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.changeKeyguardPin getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist clearWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.clearWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "clearWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.clearWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.configureCredentialStorageForODESettings is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.configureCredentialStorageForODESettings getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist configureCredentialStoragePlugin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.configureCredentialStoragePlugin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "configureCredentialStoragePlugin : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.configureCredentialStoragePlugin getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist deleteCACertificate(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.deleteCACertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.deleteCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.deleteCACertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist deleteCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.deleteCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.deleteCertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "UniversalCredentialManager.deleteCertificateInternal"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialManager.deleteCertificateInternal is called...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    const/4 v0, -0x1

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "deleteCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.deleteCertificateInternal getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public greylist enableCredentialStorageForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enableCredentialStorageForLockType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.enableCredentialStorageForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "enableCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enableCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.enableCredentialStorageForLockType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage) is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public greylist enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage, Bundle)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.enforceCredentialStorageAsLockType(CredentialStorage, Bundle) is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "enforceCredentialStorageAsLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.enforceCredentialStorageAsLockType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist generateKeyPair(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;)Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.generateKeyPair"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.generateKeyPair is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_12:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "keystoreAlias"

    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "keySize"

    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "blockModes"

    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "digests"

    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "signaturePaddings"

    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "purposes"

    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    if-eqz p3, :cond_1

    instance-of v2, p3, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v2, :cond_1

    check-cast p3, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p3}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ecCurveName"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p3, p0, p1, p2, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "generatedpublickey"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/security/PublicKey;

    new-instance p1, Ljava/security/KeyPair;

    invoke-direct {p1, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object p1

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "KeyPair is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.generateKeyPair getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method

.method public greylist getAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getAliases is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getAliases getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getAuthType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/16 v1, 0x69

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getStorageOption getAuthType is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist getAvailableCredentialStorages()[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getAvailableCredentialStorages is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getAvailableCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialStorageManager.getAvailableCredentialStorages getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The exception occurs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCACertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getCACertificateAliases(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCACertificateAliases"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCACertificateAliases is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCACertificateAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificateAliases(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCACertificateAliases getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCredentialStoragePluginConfiguration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCredentialStoragePluginConfiguration is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCredentialStoragePluginConfiguration : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCredentialStoragePluginConfiguration getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCredentialStorageProperty"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCredentialStorageProperty is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getStorageOption getCredentialStorageProperty is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getCredentialStorages(Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getCredentialStorages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getCredentialStorages is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getCredentialStorages getUCMService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getDefaultInstallStorage()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getDefaultInstallStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getDefaultInstallStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialStorageManager.getDefaultInstallStorage getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The exception occurs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getEnforcedCredentialStorageForLockType()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getEnforcedCredentialStorageForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "getEnforcedCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getEnforcedCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialStorageManager.getEnforcedCredentialStorageForLockType getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The exception occurs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinCurrentRetryCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinCurrentRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinCurrentRetryCount getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMaximumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumRetryCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMaximumRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMaximumRetryCount getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getKeyguardPinMinimumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getKeyguardPinMinimumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "IUniversalCredentialManager.getODESettingsConfiguration is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getODESettingsConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialManager.getODESettingsConfiguration getUCMService is null...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getPackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.getPackagesFromExemptList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getPackagesFromExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getPackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getPackagesFromExemptList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getPackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getPackagesFromWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getPackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getPackagesFromWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist getSupportedAlgorithms(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getSupportedAlgorithms is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "getSupportedAlgorithms : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getSupportedAlgorithms getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist initKeyguardPin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.initKeyguardPin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.initKeyguardPin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->initKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.initKeyguardPin getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist installCACertificate([BLjava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.installCACertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.installCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "installCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCACertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.installCACertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist installCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.installCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "installCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.installCertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I
    .locals 10

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "UniversalCredentialManager.installCertificateInternal"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v0, "UniversalCredentialManager.installCertificateInternal is called...."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    const/4 v1, -0x1

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "installCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I

    move-result p0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.installCertificateInternal getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.isCredentialStorageEnabledForLockType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.isCredentialStorageEnabledForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "isCredentialStorageEnabledForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.isCredentialStorageEnabledForLockType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist isCredentialStorageLocked(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.isCredentialStorageLocked"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.isCredentialStorageLocked is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "isCredentialStorageLocked : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLocked(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.getStorageOption isCredentialStorageLocked is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist isCredentialStorageManaged(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.isCredentialStorageManaged is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "isCredentialStorageManaged : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.isCredentialStorageManaged getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public final greylist isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkSdkVersion : support above "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist lockCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.lockCredentialStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.lockCredentialStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "lockCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->lockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.lockCredentialStorage getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist manageCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.manageCredentialStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "manageCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.manageCredentialStorage getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist removePackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.removePackagesFromExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.removePackagesFromExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "removePackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.removePackagesFromExemptList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist removePackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.removePackagesFromWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "removePackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.removePackagesFromWhiteList getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist setAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setAuthType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "setAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setAuthType getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist setCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setCredentialStorageProperty is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "setPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setCredentialStorageProperty getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public greylist setDefaultInstallStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setDefaultInstallStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setDefaultInstallStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "setDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setDefaultInstallStorage getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The exception occurs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist setKeyPairCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setKeyPairCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setKeyPairCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_12:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {p3, p0, p1, p2, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyPairCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;[B)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setKeyPairCertificate getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_3
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The exception occurs "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v1
.end method

.method public greylist setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMaximumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumRetryCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMaximumRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMaximumRetryCount getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public greylist setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.setKeyguardPinMinimumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_9:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isNotSupportKnoxSdk(Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string p1, "UniversalCredentialStorageManager.setKeyguardPinMinimumLength getUCMService is null...."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The exception occurs "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v1
.end method
