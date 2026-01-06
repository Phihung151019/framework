.class Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/cmfa/AuthFactorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderDeathReceiver"
.end annotation


# instance fields
.field public greylist mReceiver:Landroid/os/IBinder;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    const-string v1, "Binder Death Detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public final greylist handleBinderDeath()V
    .locals 0

    return-void
.end method

.method public final greylist setReceiver(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    return-void
.end method
