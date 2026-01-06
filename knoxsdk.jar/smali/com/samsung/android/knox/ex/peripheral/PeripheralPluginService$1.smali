.class Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;
.super Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/IResultListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist isStarted()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->isStarted()Z

    move-result p0

    return p0
.end method

.method public greylist resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method
