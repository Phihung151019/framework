.class Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->-$$Nest$fgetmGripSensorChannel1(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    aget v2, v2, v3

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " / "

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->-$$Nest$fgetmGripSensorChannel1(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 65
    .line 66
    iget v2, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 67
    .line 68
    const/4 v3, 0x3

    .line 69
    if-eq v2, v3, :cond_1

    .line 70
    .line 71
    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 72
    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 87
    .line 88
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->-$$Nest$fgetmGripSensorChannel1(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    aget v0, v2, v0

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v2, 0x0

    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v3, " : enable powerbackoff1"

    .line 114
    .line 115
    invoke-static {p1, v0, v3, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 119
    .line 120
    const/4 p1, 0x2

    .line 121
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 126
    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->-$$Nest$fgetmGripSensorChannel1(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    aget p1, p1, v0

    .line 134
    .line 135
    const/high16 v0, 0x40a00000    # 5.0f

    .line 136
    .line 137
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_5

    .line 142
    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v3, " : disable powerbackoff1"

    .line 155
    .line 156
    invoke-static {p1, v0, v3, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, " : mIsGripSensorMonitorEnabled="

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 186
    .line 187
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v0, ", mIsRfTestMode="

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 198
    .line 199
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 200
    .line 201
    invoke-static {p1, p0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_5
    return-void
.end method
