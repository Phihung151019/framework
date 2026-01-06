.class Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.samsung.media.action.receiver_sar"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "SemWifiBackOff.Sar"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;

    .line 17
    .line 18
    const-string v2, "android.samsung.media.extra.receiver"

    .line 19
    .line 20
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput-boolean p2, p1, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiverEnabled:Z

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "received android.samsung.media.action.receiver_sar, mCallReceiverEnabled="

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;

    .line 34
    .line 35
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiverEnabled:Z

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, ", mWifiEnabled="

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;

    .line 46
    .line 47
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;

    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiverEnabled:Z

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->triggerReceiverRoutine(Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v2, "android.intent.action.PHONE_STATE"

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    const-string p1, "state"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p2, "received android.intent.action.PHONE_STATE, phoneState="

    .line 86
    .line 87
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;

    .line 103
    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiverEnabled:Z

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->triggerReceiverRoutine(Z)V

    .line 107
    .line 108
    .line 109
    :cond_1
    return-void
.end method
