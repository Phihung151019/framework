.class public Lcom/samsung/android/knox/dex/DexManager;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dex/DexManager$SetWallpaperFlags;
    }
.end annotation


# static fields
.field public static final greylist DEX_APP_ALREADY_SET_POLICY:I = 0x3

.field public static final greylist DEX_APP_NOT_INSTALLED:I = 0x2

.field public static final greylist DEX_APP_NOT_SET_POLICY:I = 0x4

.field public static final greylist DEX_POLICY_FAIL:I = 0x1

.field public static final greylist DEX_POLICY_SUCCESS:I = 0x0

.field public static final greylist FLAG_DEX:I = 0x8

.field public static final greylist FLAG_LOCK:I = 0x2

.field public static final greylist FLAG_PHONE:I = 0x4

.field public static final greylist FLAG_SYSTEM:I = 0x1

.field public static greylist TAG:Ljava/lang/String; = "DexPolicy"

.field public static greylist sDexManager:Lcom/samsung/android/knox/dex/DexManager;


# instance fields
.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public greylist mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

.field public greylist mService:Lcom/samsung/android/knox/dex/IDexPolicy;


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static declared-synchronized greylist getInstance()Lcom/samsung/android/knox/dex/DexManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/dex/DexManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/dex/DexManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/dex/DexManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;
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


# virtual methods
.method public greylist addPackageToDisableList(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addPackageToDisableList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Dex policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist addShortcut(IILandroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexShortcut(IILandroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist addURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addURLShortcut(int, int, String, String, ComponentName)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist addURLShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addURLShortcut(int, int, String, String, String, ComponentName, ParcelFileDescriptor)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface/range {p0 .. p7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcutExtend(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist allowAutoOpenLastApp(I)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public greylist allowScreenTimeoutChange(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.allowScreenTimeoutChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at dex policy API"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist clearLoadingLogo()I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public greylist enforceEthernetOnly(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.enforceEthernetOnly"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at dex policy API"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist enforceVirtualMacAddress(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getForegroundModePackageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public greylist getHDMIAutoEnterState()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getHomeAlignment()I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public final greylist getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public greylist getPackagesFromDisableList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Dex policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getScreenTimeout()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexScreenTimeout()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with KnoxCustomManager service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public final greylist getService()Lcom/samsung/android/knox/dex/IDexPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    if-nez v0, :cond_0

    const-string v0, "dex_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dex/IDexPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    return-object p0
.end method

.method public greylist getShowIMEWithHardKeyboard()I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public greylist getVirtualMacAddress()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public greylist isAutoOpenLastAppAllowed()I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public greylist isDexActivated()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isDexActivated()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isDexDisabled()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isDexDisabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isEthernetOnlyEnforced()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isEthernetOnlyEnforced()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isScreenTimeoutChangeAllowed()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed at dex policy API"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isVirtualMacAddressEnforced()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist removePackageFromDisableList(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removePackageFromDisableList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Dex policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist removeShortcut(Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexShortcut(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist removeURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removeURLShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist setDexDisabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setDexDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at dex policy API"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist setForegroundModePackageList(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p0, -0x6

    return p0
.end method

.method public greylist setHDMIAutoEnterState(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setHDMIAutoEnterState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHDMIAutoEnterState(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist setHomeAlignment(I)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public greylist setLoadingLogo(Landroid/os/ParcelFileDescriptor;)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public greylist setScreenTimeout(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setScreenTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexScreenTimeout(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with KnoxCustomManager service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist setShowIMEWithHardKeyboard(I)I
    .locals 0

    const/4 p0, -0x6

    return p0
.end method

.method public greylist setWallpaper(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "DexManager.setWallpaper"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x6

    return p0

    :cond_0
    and-int/lit8 p1, p5, 0x8

    if-nez p1, :cond_1

    const/16 p0, -0x32

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bitmapData"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p2, p3, p4, p5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWallpaper(Landroid/os/Bundle;Landroid/graphics/Rect;ZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with EnterpriseDeviceManager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string p2, "The calling process does not have the knox custom dex permission"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method
