.class public Lcom/samsung/android/knox/hdm/HdmManager;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist CURRENT_HDM_VERSION:Ljava/lang/String; = "1.0"

.field public static final greylist ERROR_FAIL:I = -0x1

.field public static final greylist TAG:Ljava/lang/String; = "HDM - HdmManager"


# instance fields
.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public greylist mService:Lcom/samsung/android/knox/hdm/IHdmManager;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "HdmManager.java Started"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static greylist getHdmVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v1, "getHdmVersion() on HdmManager.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public greylist generateNonce()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v0, "generateNonce() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getHdmId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "getHdmId() on HdmManager.java"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getHdmIdB64()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v0, "getHdmIdB64() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "getHdmPolicy() on HdmManager.java"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getRevocationInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v0, "getRevocationInfo() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist getService()Lcom/samsung/android/knox/hdm/IHdmManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    if-nez v0, :cond_0

    const-string v0, "hdm_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/hdm/IHdmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/hdm/IHdmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    return-object p0
.end method

.method public greylist isNFCBlockedByHDM()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v0, "isNFCBlockedByHDM() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist isSwBlockEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v0, "isSwBlockEnabled() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist removeRevocationInfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v0, "removeRevocationInfo() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public greylist setHdmPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "setHdmPolicy() on HdmManager.java"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist setHdmTaCmd(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "setHdmTaCmd() on HdmManager.java"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public greylist setSwBlock(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "setSwBlock() on HdmManager.java"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist syncRevocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string p1, "syncRevocationInfo() on HdmManager.java"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist syncSwBlockFromBoot()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    const-string v0, "syncSwBlockFromBoot() on HdmManager.java"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method
