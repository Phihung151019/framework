.class public Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "SatelliteRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    .line 165
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 166
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    .line 167
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 152
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 153
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    .line 154
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 6

    .line 71
    const-string v4, "Az"

    const-string v5, "Mask"

    const-string v0, "NumSat"

    const-string v1, "Prn"

    const-string v2, "Snr"

    const-string v3, "El"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 179
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 116
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 128
    return-object p0
.end method

.method protected final registerGpsListener()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 88
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsStatusListener()Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 89
    return-void

    .line 84
    :cond_1
    :goto_0
    return-void
.end method

.method protected final unregisterGpsListener()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 105
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsStatusListener()Landroid/location/GpsStatus$Listener;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 106
    return-void
.end method
