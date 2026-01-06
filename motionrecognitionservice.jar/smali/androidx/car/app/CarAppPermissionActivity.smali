.class public Landroidx/car/app/CarAppPermissionActivity;
.super Landroidx/activity/ComponentActivity;
.source "CarAppPermissionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method

.method private maybeSetCustomBackground()V
    .locals 7

    .line 59
    const/4 v0, 0x0

    .line 62
    .local v0, "themeId":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 68
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "androidx.car.app.theme"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/car/app/CarAppPermissionActivity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    .line 74
    .local v2, "themeableContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V

    .line 78
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 79
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string v5, "carPermissionActivityLayout"

    const-string v6, "attr"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, "layoutAttr":I
    if-nez v3, :cond_2

    .line 82
    return-void

    .line 85
    :cond_2
    filled-new-array {v3}, [I

    move-result-object v4

    .line 86
    .local v4, "attr":[I
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 87
    .local v5, "ta":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 89
    .local v6, "layoutId":I
    if-nez v6, :cond_3

    .line 90
    return-void

    .line 93
    :cond_3
    invoke-virtual {p0, v6}, Landroidx/car/app/CarAppPermissionActivity;->setContentView(I)V

    .line 94
    return-void

    .line 64
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "themeableContext":Landroid/content/Context;
    .end local v3    # "layoutAttr":I
    .end local v4    # "attr":[I
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    .end local v6    # "layoutId":I
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method

.method private processInternal(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 97
    if-eqz p1, :cond_0

    const-string v0, "androidx.car.app.action.REQUEST_PERMISSIONS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Landroidx/car/app/CarAppPermissionActivity;->requestPermissions(Landroid/content/Intent;)V

    goto :goto_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected intent action for CarAppPermissionActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    if-nez p1, :cond_1

    .line 102
    const-string v1, "null Intent"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "CarApp"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->finish()V

    .line 105
    :goto_1
    return-void
.end method

.method private requestPermissions(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "extras":Landroid/os/Bundle;
    nop

    .line 110
    const-string v1, "androidx.car.app.action.EXTRA_ON_REQUEST_PERMISSIONS_RESULT_LISTENER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 111
    .local v1, "binder":Landroid/os/IBinder;
    nop

    .line 112
    invoke-static {v1}, Landroidx/car/app/IOnRequestPermissionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IOnRequestPermissionsListener;

    move-result-object v2

    .line 113
    .local v2, "listener":Landroidx/car/app/IOnRequestPermissionsListener;
    const-string v3, "androidx.car.app.action.EXTRA_PERMISSIONS_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "permissions":[Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v4, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v4}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v5, Landroidx/car/app/CarAppPermissionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2}, Landroidx/car/app/CarAppPermissionActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/CarAppPermissionActivity;Landroidx/car/app/IOnRequestPermissionsListener;)V

    .line 122
    invoke-virtual {p0, v4, v5}, Landroidx/car/app/CarAppPermissionActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v4

    .line 146
    .local v4, "launcher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<[Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 147
    return-void

    .line 116
    .end local v4    # "launcher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<[Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const-string v4, "CarApp"

    const-string v5, "Intent to request permissions is missing the callback binder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->finish()V

    .line 118
    return-void
.end method


# virtual methods
.method synthetic lambda$requestPermissions$0$androidx-car-app-CarAppPermissionActivity(Landroidx/car/app/IOnRequestPermissionsListener;Ljava/util/Map;)V
    .locals 6
    .param p1, "listener"    # Landroidx/car/app/IOnRequestPermissionsListener;
    .param p2, "grantedMap"    # Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "granted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "rejected":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 128
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 129
    .local v4, "isGranted":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4    # "isGranted":Ljava/lang/Boolean;
    :goto_1
    goto :goto_0

    .line 137
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 137
    invoke-interface {p1, v3, v2}, Landroidx/car/app/IOnRequestPermissionsListener;->onRequestPermissionsResult([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_2

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarApp"

    const-string v4, "CarAppService dead when accepting/rejecting permissions"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->finish()V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Landroidx/car/app/CarAppPermissionActivity;->maybeSetCustomBackground()V

    .line 54
    invoke-virtual {p0}, Landroidx/car/app/CarAppPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/app/CarAppPermissionActivity;->processInternal(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
