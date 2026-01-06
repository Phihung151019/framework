.class public Landroidx/car/app/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Landroidx/car/app/managers/Manager;


# static fields
.field private static final LOCATION_UPDATE_MIN_DISTANCE_METER:I = 0x1

.field private static final LOCATION_UPDATE_MIN_INTERVAL_MILLIS:I = 0x3e8


# instance fields
.field private final mAppManager:Landroidx/car/app/IAppManager$Stub;

.field private final mCarContext:Landroidx/car/app/CarContext;

.field private final mHostDispatcher:Landroidx/car/app/HostDispatcher;

.field private final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mLocationListener:Landroidx/core/location/LocationListenerCompat;

.field final mLocationUpdateHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "carContext"    # Landroidx/car/app/CarContext;
    .param p2, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p3, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Landroidx/car/app/AppManager;->mCarContext:Landroidx/car/app/CarContext;

    .line 272
    iput-object p2, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    .line 273
    iput-object p3, p0, Landroidx/car/app/AppManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 274
    new-instance v0, Landroidx/car/app/AppManager$1;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/AppManager$1;-><init>(Landroidx/car/app/AppManager;Landroidx/car/app/CarContext;)V

    iput-object v0, p0, Landroidx/car/app/AppManager;->mAppManager:Landroidx/car/app/IAppManager$Stub;

    .line 326
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationUpdateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/car/app/AppManager;->mLocationUpdateHandlerThread:Landroid/os/HandlerThread;

    .line 327
    new-instance v0, Landroidx/car/app/AppManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda5;-><init>(Landroidx/car/app/AppManager;)V

    iput-object v0, p0, Landroidx/car/app/AppManager;->mLocationListener:Landroidx/core/location/LocationListenerCompat;

    .line 334
    return-void
.end method

.method static create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/AppManager;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 261
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v0, Landroidx/car/app/AppManager;

    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/AppManager;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method static synthetic lambda$dismissAlert$4(ILandroidx/car/app/IAppHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "alertId"    # I
    .param p1, "host"    # Landroidx/car/app/IAppHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-interface {p1, p0}, Landroidx/car/app/IAppHost;->dismissAlert(I)V

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$invalidate$1(Landroidx/car/app/IAppHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "host"    # Landroidx/car/app/IAppHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Landroidx/car/app/IAppHost;->invalidate()V

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$6(Landroid/location/Location;Landroidx/car/app/IAppHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "host"    # Landroidx/car/app/IAppHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-interface {p1, p0}, Landroidx/car/app/IAppHost;->sendLocation(Landroid/location/Location;)V

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$openMicrophone$5(Landroidx/car/app/media/OpenMicrophoneRequest;Landroidx/car/app/IAppHost;)Landroidx/car/app/media/OpenMicrophoneResponse;
    .locals 4
    .param p0, "request"    # Landroidx/car/app/media/OpenMicrophoneRequest;
    .param p1, "host"    # Landroidx/car/app/IAppHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroidx/car/app/serialization/Bundleable;->create(Ljava/lang/Object;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/car/app/IAppHost;->openMicrophone(Landroidx/car/app/serialization/Bundleable;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v1

    .line 206
    .local v1, "bundleable":Landroidx/car/app/serialization/Bundleable;
    if-nez v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundleable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/media/OpenMicrophoneResponse;
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 206
    :goto_0
    return-object v0

    .line 208
    .end local v1    # "bundleable":Landroidx/car/app/serialization/Bundleable;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroidx/car/app/serialization/BundlerException;
    const-string v2, "CarApp"

    const-string v3, "Cannot open microphone"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    return-object v0
.end method

.method static synthetic lambda$showAlert$3(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/IAppHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "bundle"    # Landroidx/car/app/serialization/Bundleable;
    .param p1, "host"    # Landroidx/car/app/IAppHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-interface {p1, p0}, Landroidx/car/app/IAppHost;->showAlert(Landroidx/car/app/serialization/Bundleable;)V

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$showToast$2(Ljava/lang/CharSequence;ILandroidx/car/app/IAppHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I
    .param p2, "host"    # Landroidx/car/app/IAppHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-interface {p2, p0, p1}, Landroidx/car/app/IAppHost;->showToast(Ljava/lang/CharSequence;I)V

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dismissAlert(I)V
    .locals 4
    .param p1, "alertId"    # I
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 187
    iget-object v0, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/AppManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda2;-><init>(I)V

    const-string v2, "app"

    const-string v3, "dismissAlert"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 194
    return-void
.end method

.method getIInterface()Landroidx/car/app/IAppManager$Stub;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/car/app/AppManager;->mAppManager:Landroidx/car/app/IAppManager$Stub;

    return-object v0
.end method

.method getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/car/app/AppManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public invalidate()V
    .locals 4

    .line 113
    iget-object v0, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/AppManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "app"

    const-string v3, "invalidate"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 120
    return-void
.end method

.method synthetic lambda$new$7$androidx-car-app-AppManager(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 327
    iget-object v0, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/AppManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda4;-><init>(Landroid/location/Location;)V

    const-string v2, "app"

    const-string v3, "sendLocation"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    return-void
.end method

.method synthetic lambda$setSurfaceCallback$0$androidx-car-app-AppManager(Landroidx/car/app/SurfaceCallback;Landroidx/car/app/IAppHost;)Ljava/lang/Object;
    .locals 1
    .param p1, "surfaceCallback"    # Landroidx/car/app/SurfaceCallback;
    .param p2, "host"    # Landroidx/car/app/IAppHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/car/app/AppManager;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 100
    invoke-static {v0, p1}, Landroidx/car/app/utils/RemoteUtils;->stubSurfaceCallback(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/SurfaceCallback;)Landroidx/car/app/ISurfaceCallback;

    move-result-object v0

    .line 99
    invoke-interface {p2, v0}, Landroidx/car/app/IAppHost;->setSurfaceCallback(Landroidx/car/app/ISurfaceCallback;)V

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public openMicrophone(Landroidx/car/app/media/OpenMicrophoneRequest;)Landroidx/car/app/media/OpenMicrophoneResponse;
    .locals 4
    .param p1, "request"    # Landroidx/car/app/media/OpenMicrophoneRequest;

    .line 200
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    const-string v1, "app"

    const-string v2, "openMicrophone"

    new-instance v3, Landroidx/car/app/AppManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/media/OpenMicrophoneRequest;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/car/app/HostDispatcher;->dispatchForResult(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/media/OpenMicrophoneResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarApp"

    const-string v2, "Error getting microphone bytes from host"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x0

    return-object v1
.end method

.method public setSurfaceCallback(Landroidx/car/app/SurfaceCallback;)V
    .locals 4
    .param p1, "surfaceCallback"    # Landroidx/car/app/SurfaceCallback;

    .line 96
    iget-object v0, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/AppManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/AppManager;Landroidx/car/app/SurfaceCallback;)V

    const-string v2, "app"

    const-string v3, "setSurfaceListener"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 104
    return-void
.end method

.method public showAlert(Landroidx/car/app/model/Alert;)V
    .locals 5
    .param p1, "alert"    # Landroidx/car/app/model/Alert;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :try_start_0
    invoke-static {p1}, Landroidx/car/app/serialization/Bundleable;->create(Ljava/lang/Object;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v0
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v0, "bundle":Landroidx/car/app/serialization/Bundleable;
    nop

    .line 168
    iget-object v1, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v2, Landroidx/car/app/AppManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda7;-><init>(Landroidx/car/app/serialization/Bundleable;)V

    const-string v3, "app"

    const-string v4, "showAlert"

    invoke-virtual {v1, v3, v4, v2}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 175
    return-void

    .line 164
    .end local v0    # "bundle":Landroidx/car/app/serialization/Bundleable;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroidx/car/app/serialization/BundlerException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Serialization failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showToast(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Landroidx/car/app/AppManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/AppManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Landroidx/car/app/AppManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/CharSequence;I)V

    const-string v2, "app"

    const-string v3, "showToast"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 139
    return-void
.end method

.method startLocationUpdates()V
    .locals 8

    .line 239
    invoke-virtual {p0}, Landroidx/car/app/AppManager;->stopLocationUpdates()V

    .line 240
    iget-object v0, p0, Landroidx/car/app/AppManager;->mCarContext:Landroidx/car/app/CarContext;

    .line 241
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroidx/car/app/CarContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    .line 242
    .local v1, "locationManager":Landroid/location/LocationManager;
    iget-object v6, p0, Landroidx/car/app/AppManager;->mLocationListener:Landroidx/core/location/LocationListenerCompat;

    iget-object v0, p0, Landroidx/car/app/AppManager;->mLocationUpdateHandlerThread:Landroid/os/HandlerThread;

    .line 246
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 242
    const-string v2, "fused"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 247
    return-void
.end method

.method stopLocationUpdates()V
    .locals 2

    .line 253
    iget-object v0, p0, Landroidx/car/app/AppManager;->mCarContext:Landroidx/car/app/CarContext;

    .line 254
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroidx/car/app/CarContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 255
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Landroidx/car/app/AppManager;->mLocationListener:Landroidx/core/location/LocationListenerCompat;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 256
    return-void
.end method
