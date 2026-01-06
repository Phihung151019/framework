.class Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnectionPersonalizerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionPersonalizerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnectionPersonalizerReceiver;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "com.samsung.android.ConnectionPersonalizer.CHANGE_OPTION"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "Conn.Personalizer"

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const-string v0, "ConfigKey"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "OptionCommand"

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnectionPersonalizerReceiver;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const-string v2, "DisableBTM"

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer$ConnectionPersonalizerReceiver;->this$0:Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 51
    .line 52
    invoke-static {p0}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->-$$Nest$fgetmConfigManager(Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/connection/ConnectionConfigManager;->setBtmOptionEnabled(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string p0, "ConnectionPersonalizerReceiver.onReceive: action="

    .line 61
    .line 62
    const-string v2, ", optionCommand="

    .line 63
    .line 64
    const-string v3, ", configKey="

    .line 65
    .line 66
    invoke-static {p0, p1, v2, p2, v3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string p0, "ConnectionPersonalizerReceiver.onReceive: undefined case: action="

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Lcom/samsung/android/server/wifi/connection/Clog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
