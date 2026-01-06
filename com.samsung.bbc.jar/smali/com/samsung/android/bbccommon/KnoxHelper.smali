.class public Lcom/samsung/android/bbccommon/KnoxHelper;
.super Ljava/lang/Object;
.source "KnoxHelper.java"


# static fields
.field private static final LIB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KnoxHelper"

.field private static final TIMA_VERSION_2_0:Ljava/lang/String; = "2.0"

.field private static final TIMA_VERSION_3_0:Ljava/lang/String; = "3.0"

.field private static final TIMA_VERSION_FIPS_3_0:Ljava/lang/String; = "FIPS3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPackageToExternalStorageWhiteList(Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->addPackageToExternalStorageWhiteList(Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method public static cancelCreateContainer(Lcom/samsung/android/bbccommon/ContainerParamsWrapper;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->getParams()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    return-void
.end method

.method public static createContainerInternal(Lcom/samsung/android/bbccommon/ContainerParamsWrapper;)I
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->getParams()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    move-result p0

    return p0
.end method

.method public static createContainerMarkSuccess(Lcom/samsung/android/bbccommon/ContainerParamsWrapper;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->getParams()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    return-void
.end method

.method public static disableKeyGuardTrust(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 63
    const-string p0, "KnoxHelper"

    const-string p1, "disableKeyGuardTrust() deprecated"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDpm(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 118
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method private static getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public static getKnoxKeys(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public static getKnoxKeysToSecure(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method private static getPersonaManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    .line 110
    const-string v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public static getPrivateKeyFromEngine(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTIMAStatus()I
    .locals 1

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public static getTimaVersion()Ljava/lang/String;
    .locals 1

    .line 173
    const-string v0, "N/A"

    return-object v0
.end method

.method public static isAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 0

    .line 198
    invoke-static {p0}, Lcom/samsung/android/bbccommon/KnoxHelper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static isAdminActiveAsUser(Landroid/content/Context;Landroid/content/ComponentName;I)Z
    .locals 0

    .line 203
    invoke-static {p0}, Lcom/samsung/android/bbccommon/KnoxHelper;->getDpm(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public static isAdminRemovable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 0

    .line 207
    invoke-static {p0}, Lcom/samsung/android/bbccommon/KnoxHelper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static isDeviceCompromised(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static isKnoxVersionSupportedInt(I)Z
    .locals 0

    .line 281
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result p0

    return p0
.end method

.method public static removeActiveAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/samsung/android/bbccommon/KnoxHelper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static removePackageFromExternalStorageWhiteList(Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;Ljava/lang/String;)Z
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->removePackageFromExternalStorageWhiteList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setActiveAdmin(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 0

    .line 221
    invoke-static {p0}, Lcom/samsung/android/bbccommon/KnoxHelper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static setActiveAdmin(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .locals 0

    .line 226
    invoke-static {p0}, Lcom/samsung/android/bbccommon/KnoxHelper;->getDpm(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    return-void
.end method

.method public static setAdminRemovable(Landroid/content/Context;Z)Z
    .locals 0

    .line 230
    invoke-static {p0}, Lcom/samsung/android/bbccommon/KnoxHelper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setAdminRemovable(Z)Z

    move-result p0

    return p0
.end method

.method public static syncSettings(Landroid/content/Context;II)V
    .locals 0

    .line 0
    return-void
.end method
