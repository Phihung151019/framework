.class public Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# instance fields
.field public greylist mWho:Landroid/content/ComponentName;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/app/admin/DeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method public greylist onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
