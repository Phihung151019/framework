.class public Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ACTION_CREATE_LDAPACCOUNT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

.field public static final greylist ACTION_LDAP_CREATE_ACCT_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

.field public static final greylist ACTION_LDAP_CREATE_ACCT_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

.field public static final greylist ERROR_LDAP_ALREADY_EXISTS:I = -0x1

.field public static final greylist ERROR_LDAP_CONNECTION:I = -0x7

.field public static final greylist ERROR_LDAP_DOES_NOT_EXIST:I = -0x2

.field public static final greylist ERROR_LDAP_INVALID_CREDENTIALS:I = -0x3

.field public static final greylist ERROR_LDAP_NONE:I = 0x0

.field public static final greylist ERROR_LDAP_SERVER_BUSY:I = -0x4

.field public static final greylist ERROR_LDAP_SERVER_DOWN:I = -0x5

.field public static final greylist ERROR_LDAP_TIMEOUT:I = -0x6

.field public static final greylist ERROR_LDAP_UNKNOWN:I = -0x8

.field public static final greylist EXTRA_LDAP_ACCT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

.field public static final greylist EXTRA_LDAP_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_RESULT"

.field public static final greylist EXTRA_LDAP_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

.field public static greylist TAG:Ljava/lang/String; = "LDAPAccountPolicy"


# instance fields
.field public greylist lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

.field public final greylist mContext:Landroid/content/Context;

.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public greylist createLDAPAccount(Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LDAPAccountPolicy.createLDAPAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking to LDAP Settings service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public greylist deleteLDAPAccount(J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LDAPAccountPolicy.deleteLDAPAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to LDAP Settings service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getAllLDAPAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking to LDAP Settings service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLDAPAccount(J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LDAPAccountPolicy.getLDAPAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to LDAP Settings service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    if-nez v0, :cond_0

    const-string v0, "ldap_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    return-object p0
.end method
