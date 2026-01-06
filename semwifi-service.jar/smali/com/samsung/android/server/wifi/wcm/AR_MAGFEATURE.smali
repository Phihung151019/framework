.class Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final AR_BUFFER_SIZE_MAG:I = 0x5


# instance fields
.field index:I

.field magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

.field magGradNorm:F

.field magRaw:[Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v1, v0, [Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 20
    .line 21
    new-instance v3, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 22
    .line 23
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;-><init>()V

    .line 24
    .line 25
    .line 26
    aput-object v3, v2, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
