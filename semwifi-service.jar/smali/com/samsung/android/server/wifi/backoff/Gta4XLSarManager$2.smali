.class Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

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
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->DBG:Z

    .line 8
    .line 9
    const/4 v1, 0x1

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " : mGta4XLSarGripSensorListener2 : "

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
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 53
    .line 54
    iget v3, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    if-eq v3, v4, :cond_1

    .line 58
    .line 59
    const-string p0, "return because mSensorState != SENSOR_STATE_NORMAL"

    .line 60
    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, " : mIsGripSensorMonitorEnabled is false"

    .line 81
    .line 82
    invoke-static {p1, p0, v0, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 87
    .line 88
    aget v0, v0, v1

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v3, 0x0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v4, " : gripped grip sensor2"

    .line 110
    .line 111
    invoke-static {p1, v0, v4, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 115
    .line 116
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 121
    .line 122
    aget p1, p1, v1

    .line 123
    .line 124
    const/high16 v0, 0x40a00000    # 5.0f

    .line 125
    .line 126
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_4

    .line 131
    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v4, " : ungripped grip sensor2"

    .line 144
    .line 145
    invoke-static {p1, v0, v4, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 149
    .line 150
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;Z)V

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_6

    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->-$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 171
    .line 172
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->checkAndSetBackoff(Z)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    .line 177
    .line 178
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->checkAndSetBackoff(Z)V

    .line 179
    .line 180
    .line 181
    :cond_7
    return-void
.end method
