.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "McfMHSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Landroid/os/Looper;)V
    .locals 0
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

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const-string p0, "MHSMcf:MHS"

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "not handled"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p1, "MHSMcf:MHS"

    .line 28
    .line 29
    const-string v0, "CMD_MHS_ENABLED_TIMEOUT"

    .line 30
    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fputmWaitingToEnableSmartly(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$msendMHSConfigMessage(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Ljava/util/Set;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 81
    .line 82
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetmWaitingdeviceId(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    monitor-exit p1

    .line 93
    return-void

    .line 94
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->stopAdvertisement()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    const-string p1, "MHSMcf:MHS"

    .line 103
    .line 104
    const-string v0, "CMD_AH_STOP_ADVERTISE:return value:"

    .line 105
    .line 106
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    const-string p1, "MHSMcf:MHS"

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v1, "CMD_AH_START_ADVERTISE:isServiceBinded:"

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, "isEnabledAHSSettings():"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$misAutoHotspotDBEnabled(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$fgetisServiceBinded(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_4

    .line 149
    .line 150
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$misAutoHotspotDBEnabled(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$McfMHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->startAdvertisement()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    const-string p1, "MHSMcf:MHS"

    .line 165
    .line 166
    const-string v0, "CMD_AH_START_ADVERTISE, retValue:"

    .line 167
    .line 168
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    return-void
.end method
