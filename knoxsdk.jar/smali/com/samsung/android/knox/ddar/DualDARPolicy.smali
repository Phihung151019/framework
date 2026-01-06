.class public Lcom/samsung/android/knox/ddar/DualDARPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/DualDARPolicy$DUAL_DAR_VERSION_CODES;
    }
.end annotation


# static fields
.field public static final greylist DD_POLICY_ENABLED:I = 0x1

.field public static final greylist DD_POLICY_GID_RESTRICTION:I = 0x8

.field public static final greylist DD_POLICY_KERNEL_CRYPTO:I = 0x4

.field public static final greylist DD_POLICY_USER_SPACE_CRYPTO:I = 0x2

.field public static final greylist DUAL_DAR_POLICY_SERVICE:Ljava/lang/String; = "DualDARPolicy"

.field private static final greylist DUAL_DAR_VERSION_1_3_0:Ljava/lang/String; = "1.3.0"

.field private static final greylist DUAL_DAR_VERSION_1_4_0:Ljava/lang/String; = "1.4.0"

.field private static final greylist DUAL_DAR_VERSION_1_4_1:Ljava/lang/String; = "1.4.1"

.field private static final greylist DUAL_DAR_VERSION_1_5_0:Ljava/lang/String; = "1.5.0"

.field private static final greylist DUAL_DAR_VERSION_1_5_1:Ljava/lang/String; = "1.5.1"

.field private static final greylist DUAL_DAR_VERSION_1_6_0:Ljava/lang/String; = "1.6.0"

.field private static final greylist DUAL_DAR_VERSION_1_7_0:Ljava/lang/String; = "1.7.0"

.field private static final greylist DUAL_DAR_VERSION_1_8_0:Ljava/lang/String; = "1.8.0"

.field public static final greylist ERROR_FAILURE_IN_SETTING_DATA_LOCK_TIMEOUT:I = -0x1

.field public static final greylist ERROR_FAILURE_IN_SETTING_DE_RESTRICTION:I = -0x3

.field public static final greylist ERROR_FAILURE_IN_SETTING_WHITELIST_PACKAGES:I = -0x2

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist KEY_CONFIG_CLIENT_LOCATION:Ljava/lang/String; = "dualdar-config-client-location"

.field public static final greylist KEY_CONFIG_CLIENT_PACKAGE:Ljava/lang/String; = "dualdar-config-client-package"

.field public static final greylist KEY_CONFIG_CLIENT_SIGNATURE:Ljava/lang/String; = "dualdar-config-client-signature"

.field public static final greylist KEY_CONFIG_DATA_LOCK_TIMEOUT:Ljava/lang/String; = "dualdar-config-datalock-timeout"

.field public static final greylist KEY_CONFIG_DE_RESTRICTION:Ljava/lang/String; = "dualdar-config-de-restriction"

.field public static final greylist KEY_CONFIG_WHITELISTED_DATA_LOCK_STATE_PACKAGES:Ljava/lang/String; = "dualdar-config-datalock-whitelistpackages"

.field public static final greylist KEY_DUAL_DAR_CONFIG:Ljava/lang/String; = "dualdar-config"

.field private static greylist TAG:Ljava/lang/String; = "DualDARPolicy"


# instance fields
.field private greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private greylist mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string p1, "DualDARPolicy Service is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static greylist getDualDARVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist getService()Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-nez v0, :cond_0

    const-string v0, "DualDARPolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    return-object p0
.end method

.method public static greylist isDualDarSupportedForManagedDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist clearPolicy()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "clearPolicy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v0, "getService() is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "clearPolicy Remote exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist clearResetPasswordTokenForInner()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.clearResetPasswordTokenForInner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->clearResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v2, "clearResetPasswordTokenForInner() Remote exception: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public greylist getConfig()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v0, "getService() is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getConfig Remote exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getPasswordMinimumLengthForInner()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getPasswordMinimumLengthForInner() Remote exception: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public greylist isActivePasswordSufficientForInner()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.isActivePasswordSufficientForInner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->isActivePasswordSufficientForInner(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isActivePasswordSufficientForInner() Remote exception: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public greylist isResetPasswordTokenActiveForInner()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.isResetPasswordTokenActiveForInner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->isResetPasswordTokenActiveForInner(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isResetPasswordTokenActive() Remote exception: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public greylist resetPasswordWithTokenForInner(Ljava/lang/String;[B)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.resetPasswordWithTokenForInner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->resetPasswordWithTokenForInner(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string p2, "resetPasswordWithTokenForInner() Remote exception: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public greylist setConfig(Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.setConfig"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getService() is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v0, "setConfig Remote exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist setPasswordMinimumLengthForInner(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.setPasswordMinimumLengthForInner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v0, "setPasswordMinimumLengthForInner() Remote exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public greylist setResetPasswordTokenForInner([B)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DualDARPolicy.setResetPasswordTokenForInner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;[B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/ddar/DualDARPolicy;->TAG:Ljava/lang/String;

    const-string v0, "setResetPasswordTokenForInner() Remote exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
