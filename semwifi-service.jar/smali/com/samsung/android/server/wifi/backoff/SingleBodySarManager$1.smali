.class Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->DBG:Z

    .line 8
    .line 9
    const-string v1, "SemWifiBackOff.Sar"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " : mGripSensorListener1 : "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 33
    .line 34
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->-$$Nest$fgetmGripSensorChannel(Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    aget v2, v2, v3

    .line 41
    .line 42
    const-string v3, " / 0"

    .line 43
    .line 44
    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 53
    .line 54
    iget v2, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    if-eq v2, v3, :cond_1

    .line 58
    .line 59
    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 60
    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 75
    .line 76
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->-$$Nest$fgetmGripSensorChannel(Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    aget v0, v2, v0

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v2, " : enable powerbackoff1"

    .line 101
    .line 102
    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->checkAndSetBackoff(Z)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 113
    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->-$$Nest$fgetmGripSensorChannel(Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    aget p1, p1, v0

    .line 121
    .line 122
    const/high16 v0, 0x40a00000    # 5.0f

    .line 123
    .line 124
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_5

    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v2, " : disable powerbackoff1"

    .line 142
    .line 143
    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->checkAndSetBackoff(Z)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v0, " : mIsGripSensorMonitorEnabled="

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 173
    .line 174
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, ", mIsRfTestMode="

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    .line 185
    .line 186
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 187
    .line 188
    invoke-static {p1, p0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    return-void
.end method
