.class public final Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private magneticX:Ljava/lang/Float;

.field private magneticY:Ljava/lang/Float;

.field private magneticZ:Ljava/lang/Float;

.field private nanos:Ljava/lang/Long;

.field private pressure:Ljava/lang/Float;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticX:Ljava/lang/Float;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticY:Ljava/lang/Float;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticZ:Ljava/lang/Float;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->pressure:Ljava/lang/Float;

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->nanos:Ljava/lang/Long;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getMagneticX()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticX:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMagneticY()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticY:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMagneticZ()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticZ:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNanos()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->nanos:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPressure()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->pressure:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMagneticX(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticX:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setMagneticY(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticY:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setMagneticZ(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->magneticZ:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setNanos(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->nanos:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setPressure(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->pressure:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
