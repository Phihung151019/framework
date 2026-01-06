.class public Lcom/samsung/android/knox/lockscreen/LSOInterface;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final greylist TAG:Ljava/lang/String; = "LSO_LSOInterface"

.field public static greylist gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field public static final greylist mSync:Ljava/lang/Object;


# instance fields
.field public final greylist mContext:Landroid/content/Context;

.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public greylist mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static greylist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static greylist getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public greylist canConfigure(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string p1, "Caller does not have required permissions"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string p1, "Failed talking with Lockscreen customization service"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v1
.end method

.method public greylist getData()Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0

    return-object p0
.end method

.method public greylist getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with Lockscreen customization service"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public greylist getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v0, "Unhandled exception"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string v0, "Failed talking with Lockscreen customization service"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1
.end method

.method public final greylist getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    if-nez v0, :cond_0

    const-string v0, "lockscreen_overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-object p0
.end method

.method public greylist isConfigured(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with Lockscreen customization service"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-void
.end method

.method public greylist reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData(I)V

    return-void
.end method

.method public greylist resetData()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData(I)V

    return-void
.end method

.method public greylist resetData(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const-string v1, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->canConfigure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->resetData(Lcom/samsung/android/knox/ContextInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with Lockscreen customization service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    new-instance p0, Ljava/security/AccessControlException;

    const-string p1, "Calling admin is not allowed to reset Lockscreen Overlay."

    invoke-direct {p0, p1}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist resetWallpaper()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const-string v1, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->canConfigure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->resetWallpaper(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Failed talking with Lockscreen customization service"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    new-instance p0, Ljava/security/AccessControlException;

    const-string v0, "Calling admin is not allowed to reset wallpaper"

    invoke-direct {p0, v0}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result p0

    return p0
.end method

.method public greylist setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const-string v1, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->setData(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with Lockscreen customization service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x2

    return p0
.end method

.method public greylist setPreferences(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const-string v1, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->setPreferences(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    const-string p1, "Unhandled exception"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    const-string p1, "SecurityException exception"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No Active Admins or MDM Permission to calling Package"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    const-string p1, "Failed talking with Lockscreen customization service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const/4 p0, -0x2

    return p0
.end method

.method public greylist setWallpaper(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const-string v1, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->setWallpaper(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with Lockscreen customization service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x2

    return p0
.end method
