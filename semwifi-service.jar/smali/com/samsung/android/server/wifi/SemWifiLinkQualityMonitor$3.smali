.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 8

    .line 1
    const-string v0, " / "

    .line 2
    .line 3
    const-string v1, "Context change: "

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/16 v4, 0x1b

    .line 13
    .line 14
    if-ne v3, v4, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityNotificationContext()Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->getTimeStamp()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->getAccuracy()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 33
    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {v6, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    if-eq v5, v2, :cond_2

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    if-eq v5, p1, :cond_0

    .line 68
    .line 69
    const/4 p1, 0x3

    .line 70
    if-eq v5, p1, :cond_0

    .line 71
    .line 72
    const/4 p1, 0x4

    .line 73
    if-eq v5, p1, :cond_2

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmInsSensorUnregistrationPending(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmInsSensorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/os/Handler;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmINSSensorUnregisterTask(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/Runnable;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 101
    .line 102
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmInsSensorUnregistrationPending(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception p1

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIsSensorEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mregisterSensorListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmInsSensorUnregistrationPending(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_3

    .line 133
    .line 134
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIsSensorEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmInsSensorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/os/Handler;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmINSSensorUnregisterTask(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/Runnable;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 159
    .line 160
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetINS_SENSOR_UNREGISTRATION_TIME(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 168
    .line 169
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmInsSensorUnregistrationPending(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "Context-based sensor cont. err: "

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    :cond_3
    :goto_2
    return-void
.end method
