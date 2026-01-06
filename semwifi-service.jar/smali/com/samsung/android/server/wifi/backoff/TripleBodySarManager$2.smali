.class Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->checkAndSetSensorState(Landroid/hardware/SensorEvent;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

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
    if-eqz v3, :cond_4

    .line 63
    .line 64
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    goto :goto_0

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
    if-nez v0, :cond_3

    .line 79
    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, " : enable powerbackoff2"

    .line 92
    .line 93
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;Z)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->checkAndSetBackoff(Z)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 109
    .line 110
    aget p1, p1, v1

    .line 111
    .line 112
    const/high16 v0, 0x40a00000    # 5.0f

    .line 113
    .line 114
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v3, " : disable powerbackoff2"

    .line 132
    .line 133
    invoke-static {p1, v0, v3, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 137
    .line 138
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->-$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;Z)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->checkAndSetBackoff(Z)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, " : mIsGripSensorMonitorEnabled="

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 167
    .line 168
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, ", mIsRfTestMode="

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager$2;->this$0:Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    .line 179
    .line 180
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 181
    .line 182
    invoke-static {p1, p0, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    return-void
.end method
