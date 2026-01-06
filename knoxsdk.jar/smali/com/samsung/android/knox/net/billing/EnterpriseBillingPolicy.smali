.class public Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ALL_APPS_IN_SCOPE:Ljava/lang/String; = "*"


# instance fields
.field public greylist billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public greylist policy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->policy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    iput-object p1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public greylist activateProfile(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.activateProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist allowRoaming(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.allowRoaming"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist bindAppsToProfile(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.bindAppsToProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist bindVpnToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.bindVpnToProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist createProfile(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.createProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getAppsBoundToProfile(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getAvailableProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getBoundedProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.getBoundedProfile"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized greylist getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist getProfileDetails(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist isProfileActive(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.isProfileActive"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist isRoamingAllowed(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.isRoamingAllowed"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist removeProfile(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.removeProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist unbindAppsFromProfile(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.unbindAppsFromProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist unbindVpnFromProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.unbindVpnFromProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist updateProfile(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "EnterpriseBillingPolicy.updateProfile"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
