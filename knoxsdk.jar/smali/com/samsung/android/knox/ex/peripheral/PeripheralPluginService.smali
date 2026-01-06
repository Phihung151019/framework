.class public abstract Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;
.super Landroid/app/Service;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;
    }
.end annotation


# static fields
.field public static final greylist DETECT_DEATH_BINDER:Ljava/lang/String; = "detectDeathBinder"

.field public static final greylist TAG:Ljava/lang/String;


# instance fields
.field public final greylist mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

.field public greylist mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    const-string v0, "PeripheralPluginService"

    sput-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

    return-void
.end method


# virtual methods
.method public abstract greylist beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/IResultListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract greylist getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist isStarted()Z
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "detectDeathBinder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    iput-object p1, v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

    return-object p0
.end method

.method public whitelist onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    invoke-direct {v0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public abstract greylist resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract greylist vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method
