.class public Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleModeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceIdleModeReceiver"


# instance fields
.field private final mListener:Lcom/samsung/android/game/receiver/DeviceIdleModeListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/receiver/DeviceIdleModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/game/receiver/DeviceIdleModeListener;

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;->mListener:Lcom/samsung/android/game/receiver/DeviceIdleModeListener;

    .line 32
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceIdleModeReceiver"    # Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    const-string v1, "DeviceIdleModeReceiver"

    const-string v2, "registerReceiver()"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceIdleModeReceiver"    # Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    const-string v0, "DeviceIdleModeReceiver"

    const-string v1, "unregisterReceiver()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleModeReceiver"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 41
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-nez v1, :cond_0

    .line 42
    const-string v3, "onReceive() powerManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 46
    :cond_0
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    .line 47
    .local v3, "isDeviceIdleMode":Z
    iget-object v4, p0, Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;->mListener:Lcom/samsung/android/game/receiver/DeviceIdleModeListener;

    if-eqz v4, :cond_1

    .line 48
    iget-object v4, p0, Lcom/samsung/android/game/receiver/DeviceIdleModeReceiver;->mListener:Lcom/samsung/android/game/receiver/DeviceIdleModeListener;

    invoke-interface {v4, v3, p0}, Lcom/samsung/android/game/receiver/DeviceIdleModeListener;->onDeviceIdleModeChanged(ZLcom/samsung/android/game/receiver/DeviceIdleModeReceiver;)V

    .line 50
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() isDeviceIdleMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    .end local v3    # "isDeviceIdleMode":Z
    :cond_2
    return-void
.end method
