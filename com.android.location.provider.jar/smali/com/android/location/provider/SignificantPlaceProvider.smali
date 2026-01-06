.class public abstract Lcom/android/location/provider/SignificantPlaceProvider;
.super Ljava/lang/Object;
.source "SignificantPlaceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/SignificantPlaceProvider$Service;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.trust.provider.SignificantPlaceProvider.BIND"

.field private static final TAG:Ljava/lang/String; = "SignificantPlaceProvider"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mInSignificantPlace:Z

.field private volatile mManager:Landroid/hardware/location/ISignificantPlaceProviderManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBinder(Lcom/android/location/provider/SignificantPlaceProvider;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInSignificantPlace(Lcom/android/location/provider/SignificantPlaceProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mInSignificantPlace:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmManager(Lcom/android/location/provider/SignificantPlaceProvider;Landroid/hardware/location/ISignificantPlaceProviderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mManager:Landroid/hardware/location/ISignificantPlaceProviderManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mInSignificantPlace:Z

    .line 49
    new-instance v0, Lcom/android/location/provider/SignificantPlaceProvider$Service;

    invoke-direct {v0, p0}, Lcom/android/location/provider/SignificantPlaceProvider$Service;-><init>(Lcom/android/location/provider/SignificantPlaceProvider;)V

    iput-object v0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mBinder:Landroid/os/IBinder;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mManager:Landroid/hardware/location/ISignificantPlaceProviderManager;

    .line 51
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract onSignificantPlaceCheck()V
.end method

.method public setInSignificantPlace(Z)V
    .locals 3
    .param p1, "inSignificantPlace"    # Z

    .line 59
    iget-object v0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-boolean v1, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mInSignificantPlace:Z

    if-ne p1, v1, :cond_0

    .line 61
    monitor-exit v0

    return-void

    .line 64
    :cond_0
    iput-boolean p1, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mInSignificantPlace:Z

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/android/location/provider/SignificantPlaceProvider;->mManager:Landroid/hardware/location/ISignificantPlaceProviderManager;

    .line 68
    .local v0, "manager":Landroid/hardware/location/ISignificantPlaceProviderManager;
    if-eqz v0, :cond_1

    .line 70
    :try_start_1
    invoke-interface {v0, p1}, Landroid/hardware/location/ISignificantPlaceProviderManager;->setInSignificantPlace(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 75
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 65
    .end local v0    # "manager":Landroid/hardware/location/ISignificantPlaceProviderManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
