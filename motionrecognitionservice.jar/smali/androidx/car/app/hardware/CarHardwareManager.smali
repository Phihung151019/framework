.class public interface abstract Landroidx/car/app/hardware/CarHardwareManager;
.super Ljava/lang/Object;
.source "CarHardwareManager.java"

# interfaces
.implements Landroidx/car/app/managers/Manager;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x3
.end annotation


# direct methods
.method public static create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)Landroidx/car/app/hardware/CarHardwareManager;
    .locals 6
    .param p0, "context"    # Landroidx/car/app/CarContext;
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;

    .line 85
    invoke-virtual {p0}, Landroidx/car/app/CarContext;->getCarAppApiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 92
    :try_start_0
    invoke-static {p0}, Landroidx/car/app/CarAppMetadataHolderService;->getServiceInfo(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 93
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    .line 94
    .local v1, "managerClassName":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "androidx.car.app.CarAppMetadataHolderService.CAR_HARDWARE_MANAGER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 98
    :cond_0
    if-eqz v1, :cond_1

    .line 102
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 103
    .local v2, "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroidx/car/app/CarContext;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroidx/car/app/HostDispatcher;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 105
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/car/app/hardware/CarHardwareManager;

    return-object v4

    .line 99
    .end local v2    # "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    new-instance v2, Ljava/lang/ClassNotFoundException;

    const-string v3, "CarHardwareManager metadata could not be found"

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroidx/car/app/CarContext;
    .end local p1    # "hostDispatcher":Landroidx/car/app/HostDispatcher;
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v1    # "managerClassName":Ljava/lang/String;
    .restart local p0    # "context":Landroidx/car/app/CarContext;
    .restart local p1    # "hostDispatcher":Landroidx/car/app/HostDispatcher;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CarHardwareManager not configured. Did you forget to add a dependency on app-automotive or app-projected artifacts?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Landroidx/car/app/HostException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempted to retrieve CarHardwareManager service, but the host is less than 3"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v2, "Create CarHardwareManager failed"

    invoke-direct {v0, v2, v1}, Landroidx/car/app/HostException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getCarClimate()Landroidx/car/app/hardware/climate/CarClimate;
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCarInfo()Landroidx/car/app/hardware/info/CarInfo;
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCarSensors()Landroidx/car/app/hardware/info/CarSensors;
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
