.class Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/A03sSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

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
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->DBG:Z

    .line 8
    .line 9
    const-string v1, "SemWifiBackOff.Sar"

    .line 10
    .line 11
    const/4 v2, 0x0

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
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " : mGripSensorListener1 : "

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 34
    .line 35
    aget v3, v3, v2

    .line 36
    .line 37
    const-string v4, " / 0"

    .line 38
    .line 39
    invoke-static {v0, v3, v4, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->-$$Nest$fgetmIsGripSensorMonitorEnabled(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 51
    .line 52
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 58
    .line 59
    aget v0, v0, v2

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v3, 0x1

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 70
    .line 71
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->-$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;Z)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v4, " : enable powerbackoff1"

    .line 86
    .line 87
    invoke-static {p1, v0, v4, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 92
    .line 93
    aget p1, p1, v2

    .line 94
    .line 95
    const/high16 v0, 0x40a00000    # 5.0f

    .line 96
    .line 97
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 104
    .line 105
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->-$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;Z)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v4, " : disable powerbackoff1"

    .line 120
    .line 121
    invoke-static {p1, v0, v4, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->-$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_6

    .line 131
    .line 132
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->-$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 141
    .line 142
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->checkAndSetBackoff(Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 147
    .line 148
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->checkAndSetBackoff(Z)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, " : mIsGripSensorMonitorEnabled="

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->-$$Nest$fgetmIsGripSensorMonitorEnabled(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, ", mIsRfTestMode="

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    .line 186
    .line 187
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 188
    .line 189
    invoke-static {p1, p0, v1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_6
    return-void
.end method
