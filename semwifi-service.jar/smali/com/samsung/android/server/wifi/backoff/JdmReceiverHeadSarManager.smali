.class public Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "JdmReceiverHeadSarManager"


# instance fields
.field private mIsBodySar:Z

.field private mIsReceiverListenerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method checkAndSetBackoff(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->getName()Ljava/lang/String;

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
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string p0, "checkAndSetBackoff exit"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->setPowerBackoffEnabled(Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " : Receiver stopped at : "

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " : checkAndSetBackoff : mIsBodySar:"

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->mIsBodySar:Z

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->mIsBodySar:Z

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->setPowerBackoffEnabled(Z)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JdmReceiverHeadSarManager"

    .line 2
    .line 3
    return-object p0
.end method

.method public onBroadcastBackoffState(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->onBroadcastBackoffState(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    const-string v0, "JdmProximityHeadSarManager"

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "JdmReceiverHeadSarManager"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->mIsBodySar:Z

    .line 21
    .line 22
    or-int/2addr p1, p2

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;->mIsBodySar:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method
