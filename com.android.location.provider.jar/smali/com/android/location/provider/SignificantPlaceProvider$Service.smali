.class final Lcom/android/location/provider/SignificantPlaceProvider$Service;
.super Landroid/hardware/location/ISignificantPlaceProvider$Stub;
.source "SignificantPlaceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/SignificantPlaceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Service"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/SignificantPlaceProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/SignificantPlaceProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/android/location/provider/SignificantPlaceProvider$Service;->this$0:Lcom/android/location/provider/SignificantPlaceProvider;

    invoke-direct {p0}, Landroid/hardware/location/ISignificantPlaceProvider$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSignificantPlaceCheck$0(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 115
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public onSignificantPlaceCheck()V
    .locals 3

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/location/provider/SignificantPlaceProvider$Service;->this$0:Lcom/android/location/provider/SignificantPlaceProvider;

    invoke-virtual {v0}, Lcom/android/location/provider/SignificantPlaceProvider;->onSignificantPlaceCheck()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SignificantPlaceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/location/provider/SignificantPlaceProvider$Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/location/provider/SignificantPlaceProvider$Service$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public setSignificantPlaceProviderManager(Landroid/hardware/location/ISignificantPlaceProviderManager;)V
    .locals 3
    .param p1, "manager"    # Landroid/hardware/location/ISignificantPlaceProviderManager;

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/location/provider/SignificantPlaceProvider$Service;->this$0:Lcom/android/location/provider/SignificantPlaceProvider;

    invoke-static {v0}, Lcom/android/location/provider/SignificantPlaceProvider;->-$$Nest$fgetmBinder(Lcom/android/location/provider/SignificantPlaceProvider;)Landroid/os/IBinder;

    move-result-object v0

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/SignificantPlaceProvider$Service;->this$0:Lcom/android/location/provider/SignificantPlaceProvider;

    invoke-static {v1}, Lcom/android/location/provider/SignificantPlaceProvider;->-$$Nest$fgetmInSignificantPlace(Lcom/android/location/provider/SignificantPlaceProvider;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {p1, v1}, Landroid/hardware/location/ISignificantPlaceProviderManager;->setInSignificantPlace(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/location/provider/SignificantPlaceProvider$Service;
    .end local p1    # "manager":Landroid/hardware/location/ISignificantPlaceProviderManager;
    throw v2

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/location/provider/SignificantPlaceProvider$Service;
    .restart local p1    # "manager":Landroid/hardware/location/ISignificantPlaceProviderManager;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/location/provider/SignificantPlaceProvider$Service;->this$0:Lcom/android/location/provider/SignificantPlaceProvider;

    invoke-static {v1, p1}, Lcom/android/location/provider/SignificantPlaceProvider;->-$$Nest$fputmManager(Lcom/android/location/provider/SignificantPlaceProvider;Landroid/hardware/location/ISignificantPlaceProviderManager;)V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method
