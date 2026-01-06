.class Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

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
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->-$$Nest$fgetmGripSensorChannel2(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-boolean v1, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->DBG:Z

    .line 14
    .line 15
    const-string v2, "SemWifiBackOff.Sar"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " : mGripSensorListener2 : "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 39
    .line 40
    aget v3, v3, v0

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, " / "

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 66
    .line 67
    iget v3, v1, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    if-eq v3, v4, :cond_1

    .line 71
    .line 72
    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 73
    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 88
    .line 89
    aget v1, v1, v0

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const/4 v3, 0x1

    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, " : enable powerbackoff2"

    .line 111
    .line 112
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 116
    .line 117
    const/4 p1, 0x2

    .line 118
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 123
    .line 124
    aget p1, p1, v0

    .line 125
    .line 126
    const/high16 v0, 0x40a00000    # 5.0f

    .line 127
    .line 128
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_5

    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v1, " : disable powerbackoff2"

    .line 146
    .line 147
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 151
    .line 152
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v0, " : mIsGripSensorMonitorEnabled="

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 176
    .line 177
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v0, ", mIsRfTestMode="

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    .line 188
    .line 189
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 190
    .line 191
    invoke-static {p1, p0, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    return-void
.end method
