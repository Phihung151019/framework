.class Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;
.super Landroid/telephony/PhoneStateListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->handleWifiApState(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "swlan0"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "wlan0"

    .line 19
    .line 20
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "onDataConnectionStateChanged state : "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", networktype : "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v1, "SemWifiApBroadcastReceiver"

    .line 43
    .line 44
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x2

    .line 48
    if-ne p1, p2, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 51
    .line 52
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 60
    .line 61
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 84
    .line 85
    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    if-nez p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    .line 102
    .line 103
    .line 104
    move-result-wide p1

    .line 105
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 112
    .line 113
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 122
    .line 123
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    sub-long/2addr v5, v7

    .line 128
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    sub-long/2addr v7, v9

    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 140
    .line 141
    add-long/2addr v1, v5

    .line 142
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 146
    .line 147
    add-long/2addr v3, v7

    .line 148
    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 156
    .line 157
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    sub-long/2addr v0, v2

    .line 162
    const-wide/32 v2, 0xea60

    .line 163
    .line 164
    .line 165
    div-long/2addr v0, v2

    .line 166
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 167
    .line 168
    add-long/2addr p1, v0

    .line 169
    invoke-static {v2, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 173
    .line 174
    const/4 p2, 0x0

    .line 175
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 179
    .line 180
    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    .line 181
    .line 182
    .line 183
    :cond_2
    return-void
.end method
