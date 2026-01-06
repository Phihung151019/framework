.class public interface abstract Landroidx/car/app/hardware/climate/CarClimateStateCallback;
.super Ljava/lang/Object;
.source "CarClimateStateCallback.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation


# virtual methods
.method public onCabinTemperatureStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "hvacCabinTemperature":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Float;>;"
    return-void
.end method

.method public onDefrosterStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "defrosterState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onElectricDefrosterStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "electricDefrosterState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onFanDirectionStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "fanDirection":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onFanSpeedLevelStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "fanSpeedLevel":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onHvacAcStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "hvacAcState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onHvacAutoModeStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p1, "hvacAutoModeState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onHvacAutoRecirculationStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "hvacAutoRecirculationState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onHvacDualModeStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "hvacDualModeState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onHvacMaxAcModeStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "hvacMaxAcModeState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onHvacPowerStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "hvacPowerState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onHvacRecirculationStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "hvacRecirculationState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onMaxDefrosterStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "maxDefrosterState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public onSeatTemperatureLevelStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "seatTemperatureLevel":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onSeatVentilationLevelStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "seatVentilationLevel":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onSteeringWheelHeatStateAvailable(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "steeringWheelHeatState":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    return-void
.end method
