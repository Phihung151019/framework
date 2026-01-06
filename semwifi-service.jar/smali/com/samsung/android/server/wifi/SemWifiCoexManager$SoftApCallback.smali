.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    return-void
.end method


# virtual methods
.method public onInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/wifi/SoftApInfo;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "onInfoChanged:"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v2, "SemWifiCoexManager"

    .line 40
    .line 41
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsControllerActive(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiChannelInfoForAdaptiveMipi(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    return-void
.end method

.method public onStateChanged(II)V
    .locals 1

    .line 1
    const-string p2, "onStateChanged:"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "SemWifiCoexManager"

    .line 8
    .line 9
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 p2, 0xb

    .line 24
    .line 25
    if-eq p1, p2, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 p2, 0xe

    .line 34
    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/16 p1, 0xd

    .line 45
    .line 46
    if-ne p0, p1, :cond_1

    .line 47
    .line 48
    const-string p0, "onStateChanged: WIFI_AP_STATE_ENABLED"

    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    :goto_0
    const-string p1, "onStateChanged: WIFI_AP_STATE_DISABLED"

    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmSApFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsControllerActive(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 108
    .line 109
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiChannelInfoForAdaptiveMipi(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
