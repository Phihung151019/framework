.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


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
.method public static synthetic $r8$lambda$dobfjDq4XS89pMhAGEc2qkCB5DY(Ljava/lang/Boolean;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->lambda$onFlushCompleted$0(Ljava/lang/Boolean;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$onFlushCompleted$0(Ljava/lang/Boolean;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsensorFlushed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsensorFlushed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 46
    .line 47
    const-string v0, "Sensor flushed and unregistered"

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/hardware/SensorManager;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmInsSensorEventListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/hardware/SensorEventListener;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    move-exception p1

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "Sensor event listener err: "

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;-><init>(Landroid/hardware/SensorEvent;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetSENSOR_BUFFER_SIZE_LIMIT(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-le p1, v0, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;

    .line 65
    .line 66
    invoke-direct {v1, p1}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;-><init>(Landroid/hardware/SensorEvent;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetSENSOR_BUFFER_SIZE_LIMIT(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-le p1, v0, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Sensor event listener err: "

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    :cond_2
    :goto_3
    return-void
.end method
