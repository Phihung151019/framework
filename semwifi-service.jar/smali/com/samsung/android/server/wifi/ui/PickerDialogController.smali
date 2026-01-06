.class public Lcom/samsung/android/server/wifi/ui/PickerDialogController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ui/PickerDialogController$Adapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifi.PickerDialog"

.field private static final WIFI_PICKER_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.WifiPickerDialog"


# instance fields
.field private final context:Landroid/content/Context;

.field private isTracking:Z

.field private mAdapter:Lcom/samsung/android/server/wifi/ui/PickerDialogController$Adapter;

.field private final quickPanelPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vThFTxcTTlwhgVPqHptbAocgZfc(Lcom/samsung/android/server/wifi/ui/PickerDialogController;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->lambda$new$0(Ljava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->quickPanelPackages:Ljava/util/Set;

    .line 12
    .line 13
    const-string v0, "com.android.systemui"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v0, "com.sec.android.dexsystemui"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/samsung/android/server/wifi/ui/PickerDialogController$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ui/PickerDialogController;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->quickPanelPackages:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->setEnableTracking(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->mAdapter:Lcom/samsung/android/server/wifi/ui/PickerDialogController$Adapter;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController$Adapter;->checkAndStartScan()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method private startPickerDialog()V
    .locals 4

    .line 1
    const-string v0, "starting Wi-Fi picker dialog"

    .line 2
    .line 3
    const-string v1, "SemWifi.PickerDialog"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "com.android.settings"

    .line 14
    .line 15
    const-string v3, "com.samsung.android.settings.wifi.WifiPickerDialog"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const v2, 0x10008000

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->context:Landroid/content/Context;

    .line 27
    .line 28
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    const-string p0, "could not start Wi-Fi picker dialog"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public disableTracking()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->setEnableTracking(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public isTracking()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    .line 2
    .line 3
    return p0
.end method

.method public setAdapter(Lcom/samsung/android/server/wifi/ui/PickerDialogController$Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->mAdapter:Lcom/samsung/android/server/wifi/ui/PickerDialogController$Adapter;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableTracking(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "start"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "stop"

    .line 7
    .line 8
    :goto_0
    const-string v1, " tracking"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "SemWifi.PickerDialog"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    .line 20
    .line 21
    return-void
.end method

.method public showPickerDialogIfNecessary()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->startPickerDialog()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
