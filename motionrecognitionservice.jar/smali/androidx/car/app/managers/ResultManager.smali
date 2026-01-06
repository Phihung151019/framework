.class public interface abstract Landroidx/car/app/managers/ResultManager;
.super Ljava/lang/Object;
.source "ResultManager.java"

# interfaces
.implements Landroidx/car/app/managers/Manager;


# direct methods
.method public static create(Landroidx/car/app/CarContext;)Landroidx/car/app/managers/ResultManager;
    .locals 5
    .param p0, "context"    # Landroidx/car/app/CarContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-static {p0}, Landroidx/car/app/CarAppMetadataHolderService;->getServiceInfo(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 69
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    .line 70
    .local v1, "managerClassName":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "androidx.car.app.CarAppMetadataHolderService.RESULT_MANAGER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 74
    :cond_0
    if-eqz v1, :cond_1

    .line 78
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 79
    .local v2, "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/app/managers/ResultManager;

    return-object v3

    .line 75
    .end local v2    # "managerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v2, Ljava/lang/ClassNotFoundException;

    const-string v3, "ResultManager metadata could not be found"

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroidx/car/app/CarContext;
    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v1    # "managerClassName":Ljava/lang/String;
    .restart local p0    # "context":Landroidx/car/app/CarContext;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ResultManager not configured. Did you forget to add a dependency on the app-automotive artifact?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getCallingComponent()Landroid/content/ComponentName;
.end method

.method public abstract setCarAppResult(ILandroid/content/Intent;)V
.end method
