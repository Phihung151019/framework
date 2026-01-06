.class Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/A066SarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

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
    .locals 5

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->DBG:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "SemWifiBackOff.Sar"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " : mGripLteSubSensorListener : "

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 34
    .line 35
    aget v3, v3, v1

    .line 36
    .line 37
    const-string v4, " / 0"

    .line 38
    .line 39
    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 48
    .line 49
    iget v3, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    if-eq v3, v4, :cond_1

    .line 53
    .line 54
    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 55
    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 61
    .line 62
    if-eqz v3, :cond_7

    .line 63
    .line 64
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 71
    .line 72
    aget v0, v0, v1

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v3, 0x1

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v4, " : gripped grip LteSubSensor"

    .line 94
    .line 95
    invoke-static {p1, v0, v4, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 99
    .line 100
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->-$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A066SarManager;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 105
    .line 106
    aget p1, p1, v1

    .line 107
    .line 108
    const/high16 v0, 0x40a00000    # 5.0f

    .line 109
    .line 110
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_4

    .line 115
    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v4, " : ungripped grip LteSubSensor"

    .line 128
    .line 129
    invoke-static {p1, v0, v4, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 133
    .line 134
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->-$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A066SarManager;Z)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_6

    .line 144
    .line 145
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->-$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_6

    .line 152
    .line 153
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->-$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_6

    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->-$$Nest$fgetmIsGripLteSubSensor2(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_6

    .line 168
    .line 169
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->-$$Nest$fgetmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_5

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 179
    .line 180
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->checkAndSetBackoff(Z)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 185
    .line 186
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->checkAndSetBackoff(Z)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->getName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, " : mIsGripSensorMonitorEnabled="

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 210
    .line 211
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v0, ", mIsRfTestMode="

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;->this$0:Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    .line 222
    .line 223
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 224
    .line 225
    invoke-static {p1, p0, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_8
    return-void
.end method
