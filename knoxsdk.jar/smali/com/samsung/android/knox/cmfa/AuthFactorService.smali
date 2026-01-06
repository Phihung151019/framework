.class public abstract Lcom/samsung/android/knox/cmfa/AuthFactorService;
.super Landroid/app/Service;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;
    }
.end annotation


# static fields
.field public static final greylist DETECT_DEATH_BINDER:Ljava/lang/String; = "detectDeathBinder"

.field public static final greylist TAG:Ljava/lang/String;


# instance fields
.field public final greylist mBinder:Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;

.field public greylist mBinderDeathReceiver:Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

.field public greylist mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

.field public greylist mScore:J

.field public greylist mStarted:Z


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;

    const-string v0, "AuthFactorService"

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinder:Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;

    return-void
.end method


# virtual methods
.method public final greylist getTrustScore()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    return-wide v0
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
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinderDeathReceiver:Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

    iput-object p1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinder:Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;

    return-object p0
.end method

.method public whitelist onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinderDeathReceiver:Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public abstract greylist onFactorInit()V
.end method

.method public abstract greylist onFactorStart(Ljava/util/Map;)V
.end method

.method public abstract greylist onFactorStop()V
.end method

.method public final greylist setTrustScore(J)Z
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    const-wide/16 v0, 0x64

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    iput-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/IAuthFactorListener;->onStateUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
