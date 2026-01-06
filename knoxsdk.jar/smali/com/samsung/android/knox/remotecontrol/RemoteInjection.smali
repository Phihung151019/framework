.class public Lcom/samsung/android/knox/remotecontrol/RemoteInjection;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist TAG:Ljava/lang/String; = "RemoteInjection"


# instance fields
.field public greylist mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final greylist getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    if-nez v0, :cond_0

    const-string v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    return-object p0
.end method

.method public greylist injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "RemoteInjection.injectKeyEvent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error injecting key event : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteInjection"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist injectKeyEventDex(Landroid/view/KeyEvent;Z)Z
    .locals 0

    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string p1, "RemoteInjection.injectKeyEventDex"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error injecting pointer event : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteInjection"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist injectPointerEventDex(Landroid/view/MotionEvent;Z)Z
    .locals 0

    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string p1, "RemoteInjection.injectPointerEventDex"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "RemoteInjection.injectTrackballEvent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->getService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/remotecontrol/RemoteInjection;->mRemoteService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error injecting trackball event : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteInjection"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
