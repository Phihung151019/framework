.class Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " : mGripSensorListener2 : "

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

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
    goto :goto_2

    .line 69
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 70
    .line 71
    aget v0, v0, v1

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v3, 0x1

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v4, " : gripped grip sensor2"

    .line 93
    .line 94
    invoke-static {p1, v0, v4, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 98
    .line 99
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 104
    .line 105
    aget p1, p1, v1

    .line 106
    .line 107
    const/high16 v0, 0x40a00000    # 5.0f

    .line 108
    .line 109
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v4, " : ungripped grip sensor2"

    .line 127
    .line 128
    invoke-static {p1, v0, v4, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 132
    .line 133
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;Z)V

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_6

    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->-$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->checkAndSetBackoff(Z)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 160
    .line 161
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->checkAndSetBackoff(Z)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, " : mIsGripSensorMonitorEnabled="

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 185
    .line 186
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, ", mIsRfTestMode="

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    .line 197
    .line 198
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 199
    .line 200
    invoke-static {p1, p0, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_8
    return-void
.end method
