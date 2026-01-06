.class Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

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
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, " : Processing onAccuracyChanged event at : "

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "SemWifiBackOff.Sar"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aget p1, p1, v1

    .line 17
    .line 18
    iget v2, v0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mProximityThreshold:F

    .line 19
    .line 20
    cmpg-float p1, p1, v2

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-gez p1, :cond_0

    .line 24
    .line 25
    move p1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, v1

    .line 28
    :goto_0
    iput-boolean p1, v0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " : Processing onSensorChanged event at : "

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " , mIsCloseToProximitySensor : "

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 62
    .line 63
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "SemWifiBackOff.Sar"

    .line 73
    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 78
    .line 79
    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v3, " : Something closed "

    .line 95
    .line 96
    invoke-static {p1, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    sput-boolean v2, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mBackOffStatus:Z

    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->checkAndSetBackoff(Z)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, " : Nothing closed"

    .line 123
    .line 124
    invoke-static {p1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    sput-boolean v1, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mBackOffStatus:Z

    .line 132
    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;->this$0:Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->checkAndSetBackoff(Z)V

    .line 136
    .line 137
    .line 138
    :cond_2
    return-void
.end method
