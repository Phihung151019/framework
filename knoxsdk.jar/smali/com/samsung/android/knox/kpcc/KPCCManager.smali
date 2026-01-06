.class public Lcom/samsung/android/knox/kpcc/KPCCManager;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist DRX_1280_MSEC:I = 0x3

.field public static final greylist DRX_2560_MSEC:I = 0x4

.field public static final greylist DRX_320_MSEC:I = 0x1

.field public static final greylist DRX_640_MSEC:I = 0x2

.field public static final greylist DRX_DEFAULT:I = 0x0

.field public static final greylist DRX_EMPTY:I = -0x1

.field public static final greylist ERROR_ADMIN_ALREADY_SET:I = -0x3

.field public static final greylist ERROR_FAIL:I = -0x1

.field public static final greylist ERROR_INVALID_VALUE:I = -0x4

.field public static final greylist ERROR_NOT_SUPPORTED:I = -0x2

.field public static final greylist OFF:I = 0x0

.field public static final greylist ON:I = 0x1

.field public static final greylist SUCCESS:I = 0x0

.field public static final greylist TAG:Ljava/lang/String; = "KPCCManager"

.field public static final greylist mSync:Ljava/lang/Object;

.field public static volatile greylist sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;


# instance fields
.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public greylist mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static greylist getInstance()Lcom/samsung/android/knox/kpcc/KPCCManager;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/knox/kpcc/KPCCManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/kpcc/KPCCManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/kpcc/KPCCManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v2, Lcom/samsung/android/knox/kpcc/KPCCManager;->sKPCCManager:Lcom/samsung/android/knox/kpcc/KPCCManager;

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public greylist allowRestrictedNetworkCapability(ILjava/lang/String;I)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public greylist getDrxValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getPackagesAllowedOnRestrictedNetworks()Ljava/util/List;
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

.method public final greylist getService()Lcom/samsung/android/knox/kpcc/IKPCCManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    if-nez v0, :cond_0

    const-string v0, "kpcc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kpcc/IKPCCManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kpcc/IKPCCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mService:Lcom/samsung/android/knox/kpcc/IKPCCManager;

    return-object p0
.end method

.method public greylist getTelephonyDrxValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getUnrestrictedNetworkCapabilities(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist setDrxValue(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "KPCCManager.setDrxValue"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public greylist setPackageOnRestrictedNetworks(ILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/kpcc/KPCCManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "KPCCManager.setPackageOnRestrictedNetworks"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method
