.class public Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ACTION_NOTIFY_NETWORK_FILTER_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_NETWORK_FILTER_STATUS"

.field public static final greylist ERROR_INTERNAL:I = -0x8

.field public static final greylist ERROR_INVALID_CALLER:I = -0x7

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist ERROR_NULL_PARAMETER:I = -0xa

.field public static final greylist ERROR_PACKAGE_ALREADY_REGISTERED:I = -0x9

.field public static final greylist ERROR_PACKAGE_NOT_INSTALLED:I = -0x6

.field public static final greylist ERROR_PACKAGE_NOT_REGISTERED:I = -0x2

.field public static final greylist ERROR_PACKAGE_SIGNATURE_MISMATCH:I = -0x3

.field public static final greylist ERROR_PROFILE_LIMIT_REACHED:I = -0x4

.field public static final greylist ERROR_PROFILE_NOT_FOUND:I = -0x5

.field public static final greylist ERROR_UNKNOWN:I = -0x1

.field public static final greylist ERROR_USER_AUTHORIZED:I = -0xb

.field public static final greylist EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field public static final greylist STATUS_PROFILE_PAUSED:I = 0x2

.field public static final greylist STATUS_PROFILE_RUNNING:I = 0x1

.field public static final greylist STATUS_PROFILE_STOPPED:I = 0x3

.field public static final greylist TAG:Ljava/lang/String; = "knoxNwFilter-NetworkFilterManager"


# instance fields
.field public greylist mContext:Landroid/content/Context;

.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public greylist mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static greylist getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public greylist getRegisteredPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getRegisteredPackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterManager"

    const-string v0, "Failed to getRegisteredPackageList"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    if-nez v0, :cond_0

    const-string v0, "knox_nwFilterMgr_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    return-object p0
.end method

.method public greylist registerNetworkFilter(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "knoxNwFilter-NetworkFilterManager"

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    iget-object v3, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->registerApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to registerNetworkFilter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const-string p3, "com.android.vpndialogs"

    const-string v1, "com.android.vpndialogs.KnoxVpnPPDialog"

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x50800000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p3, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "startActivityAsUser  KnoxVpnPPDialog userId = "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return v2
.end method

.method public greylist unregisterNetworkFilter(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->unregisterApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterManager"

    const-string p1, "Failed to unregisterNetworkFilter"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
