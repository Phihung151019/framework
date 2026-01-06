.class final Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GosNotifyThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkReceiver"
.end annotation


# static fields
.field private static final NOTI_INTERVAL:J = 0x2710L


# instance fields
.field private mLastNotiTime:J

.field final synthetic this$0:Lcom/samsung/android/game/GosNotifyThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;->mLastNotiTime:J

    .line 307
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, p1

    .line 308
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string p1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p2

    .end local p2    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 310
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 314
    const-string v0, "NetworkReceiver, onReceive(), "

    .line 315
    .local v0, "MSG_PREFIX":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkReceiver, onReceive(), action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GosNotifyThread"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 319
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 320
    .local v4, "curTime":J
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;->mLastNotiTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 321
    const-string v6, "NetworkReceiver, onReceive(), Wi-Fi is available"

    invoke-static {v3, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-virtual {v3}, Lcom/samsung/android/game/GosNotifyThread;->sendWifiConnectedMessage()V

    .line 325
    iput-wide v4, p0, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;->mLastNotiTime:J

    .line 328
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "curTime":J
    :cond_0
    return-void
.end method
