.class public Lcom/samsung/android/ibs/IntelligentBatterySaver;
.super Ljava/lang/Object;
.source "IntelligentBatterySaver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IntelligentBatterySaver"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIbsServices:Landroid/os/IIntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/ibs/IntelligentBatterySaver;->getIbsServices()V

    return-void
.end method


# virtual methods
.method public addBlockList(ILjava/lang/String;)Z
    .locals 0

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2}, Landroid/os/IIntelligentBatterySaverService;->addSqdBlockList(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 42
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call addSqdBlockList failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public addScreenQuickDimApp(Ljava/lang/String;I)Z
    .locals 0

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2}, Landroid/os/IIntelligentBatterySaverService;->addScreenQuickDimApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 58
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call addScreenQuickDimApp failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public dexoptPackage(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 304
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 305
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 307
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call dexoptPackage failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public dexoptPackages(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 289
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 291
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call dexoptPackages failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlockList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getSqdBlockList()Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 150
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getSqdBlockList failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGain()[J
    .locals 1

    .line 181
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getGain()[J

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 183
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getGain failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIbsServices()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    if-nez v0, :cond_0

    .line 331
    const-string v0, "IntelligentBatterySaverService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIntelligentBatterySaverService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIntelligentBatterySaverService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    .line 332
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "get Ibs services success"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getOperationHistory()Landroid/os/Bundle;
    .locals 1

    .line 261
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getOperationHistory()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 263
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getOperationHistory failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenQuickDimApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getScreenQuickDimApps()Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 166
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getScreenQuickDimApps failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSleepTime()Landroid/os/Bundle;
    .locals 1

    .line 274
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->getSleepTime()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 276
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call getSleepTime failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersionCode()I
    .locals 0

    .line 0
    const/16 p0, 0x78

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 316
    const-string p0, "1.2.0"

    return-object p0
.end method

.method public isEnableSerive()Z
    .locals 1

    .line 248
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->isEnableSerive()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 250
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call isEnableSerive failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSqdSupport()Z
    .locals 1

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->isSqdSupport()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 134
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call isSqdSupport failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isSqdUiControlEnabled()Z
    .locals 1

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0}, Landroid/os/IIntelligentBatterySaverService;->isSqdUiControlEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 121
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string v0, "call isSqdUiControlEnable failed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public removeBlockList(ILjava/lang/String;)Z
    .locals 0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2}, Landroid/os/IIntelligentBatterySaverService;->removeSqdBlockList(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 74
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call removeSqdBlockList failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public removeScreenQuickDimApp(Ljava/lang/String;I)Z
    .locals 0

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2}, Landroid/os/IIntelligentBatterySaverService;->removeScreenQuickDimApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 90
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call removeScreenQuickDimApp failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRubinEvent(Ljava/lang/String;)V
    .locals 0

    .line 235
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setRubinEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 237
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setRubinEvent failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSarrUiControlEnable(Z)V
    .locals 0

    .line 197
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setSarrUiControlEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 199
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSarrUiControlEnable failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSleepModeEnabled(Z)V
    .locals 0

    .line 210
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setSleepModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 212
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSleepModeEnabled failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSleepTime(JJ)V
    .locals 0

    .line 223
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IIntelligentBatterySaverService;->setSleepTime(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 225
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSleepTime failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSqdUiControlEnabled(Z)V
    .locals 0

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/ibs/IntelligentBatterySaver;->mIbsServices:Landroid/os/IIntelligentBatterySaverService;

    invoke-interface {p0, p1}, Landroid/os/IIntelligentBatterySaverService;->setSqdUiControlEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 106
    :catch_0
    const-string p0, "IntelligentBatterySaver"

    const-string p1, "call setSqdUiControlEnabled failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
