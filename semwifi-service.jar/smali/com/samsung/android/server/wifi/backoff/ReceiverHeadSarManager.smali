.class public Lcom/samsung/android/server/wifi/backoff/ReceiverHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "ReceiverHeadSarManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/ReceiverHeadSarManager;->checkAndSetListener(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method checkAndSetBackoff(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/ReceiverHeadSarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : checkAndSetBackoff "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "SemWifiBackOff.Sar"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mBackoffEnabled:Z

    .line 35
    .line 36
    if-ne v0, p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->setPowerBackoffEnabled(Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    const-string p0, "checkAndSetBackoff exit"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ReceiverHeadSarManager"

    .line 2
    .line 3
    return-object p0
.end method
