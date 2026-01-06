.class Landroidx/car/app/AppManager$1;
.super Landroidx/car/app/IAppManager$Stub;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/car/app/AppManager;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/app/AppManager;

.field final synthetic val$carContext:Landroidx/car/app/CarContext;


# direct methods
.method constructor <init>(Landroidx/car/app/AppManager;Landroidx/car/app/CarContext;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/car/app/AppManager;

    .line 274
    iput-object p1, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/AppManager;

    iput-object p2, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    invoke-direct {p0}, Landroidx/car/app/IAppManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBackPressed$0(Landroidx/car/app/CarContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Landroidx/car/app/CarContext;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$startLocationUpdates$1(Landroidx/car/app/CarContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 310
    const-class v0, Landroidx/car/app/AppManager;

    invoke-virtual {p0, v0}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/AppManager;

    invoke-virtual {v0}, Landroidx/car/app/AppManager;->startLocationUpdates()V

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$stopLocationUpdates$2(Landroidx/car/app/CarContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 320
    const-class v0, Landroidx/car/app/AppManager;

    invoke-virtual {p0, v0}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/AppManager;

    invoke-virtual {v0}, Landroidx/car/app/AppManager;->stopLocationUpdates()V

    .line 321
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getTemplate(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 277
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/AppManager;

    invoke-virtual {v0}, Landroidx/car/app/AppManager;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    const-class v2, Landroidx/car/app/ScreenManager;

    .line 278
    invoke-virtual {v1, v2}, Landroidx/car/app/CarContext;->getCarService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/ScreenManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/ScreenManager;)V

    .line 277
    const-string v1, "getTemplate"

    invoke-static {v0, p1, v1, v2}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 279
    return-void
.end method

.method public onBackPressed(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 283
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/AppManager;

    invoke-virtual {v0}, Landroidx/car/app/AppManager;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    new-instance v2, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/CarContext;)V

    const-string v1, "onBackPressed"

    invoke-static {v0, p1, v1, v2}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 289
    return-void
.end method

.method public startLocationUpdates(Landroidx/car/app/IOnDoneCallback;)V
    .locals 7
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 293
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    invoke-virtual {v0}, Landroidx/car/app/CarContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 294
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    .line 296
    invoke-virtual {v1}, Landroidx/car/app/CarContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 297
    .local v1, "accessFineDenied":Z
    :goto_0
    iget-object v5, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    .line 299
    invoke-virtual {v5}, Landroidx/car/app/CarContext;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 298
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 301
    .local v2, "accessCoarseDenied":Z
    :goto_1
    const-string v3, "startLocationUpdates"

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 302
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Location permission(s) not granted."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v4}, Landroidx/car/app/utils/RemoteUtils;->sendFailureResponseToHost(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :cond_2
    iget-object v4, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/AppManager;

    invoke-virtual {v4}, Landroidx/car/app/AppManager;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    iget-object v5, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    new-instance v6, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda3;

    invoke-direct {v6, v5}, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/CarContext;)V

    invoke-static {v4, p1, v3, v6}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 313
    return-void
.end method

.method public stopLocationUpdates(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/car/app/IOnDoneCallback;

    .line 317
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/AppManager;

    invoke-virtual {v0}, Landroidx/car/app/AppManager;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/CarContext;

    new-instance v2, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroidx/car/app/AppManager$1$$ExternalSyntheticLambda2;-><init>(Landroidx/car/app/CarContext;)V

    const-string v1, "stopLocationUpdates"

    invoke-static {v0, p1, v1, v2}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallFromHost(Landroidx/lifecycle/Lifecycle;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$HostCall;)V

    .line 323
    return-void
.end method
