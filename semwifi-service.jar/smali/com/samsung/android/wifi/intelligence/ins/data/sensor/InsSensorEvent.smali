.class public final Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field final timestamp:J

.field final values:[F


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->timestamp:J

    .line 7
    .line 8
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->values:[F

    .line 16
    .line 17
    return-void
.end method
