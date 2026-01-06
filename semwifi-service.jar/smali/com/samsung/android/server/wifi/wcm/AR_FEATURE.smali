.class Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

.field accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

.field baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

.field baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

.field bufIsReady:B

.field bufIsReadyMag:B

.field magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

.field magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    .line 31
    .line 32
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    .line 38
    .line 39
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    .line 45
    .line 46
    return-void
.end method
