.class public interface abstract Landroidx/car/app/hardware/climate/CarClimate;
.super Ljava/lang/Object;
.source "CarClimate.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation


# virtual methods
.method public abstract fetchClimateProfile(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/climate/ClimateProfileRequest;Landroidx/car/app/hardware/climate/CarClimateProfileCallback;)V
.end method

.method public abstract registerClimateStateCallback(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;Landroidx/car/app/hardware/climate/CarClimateStateCallback;)V
.end method

.method public abstract setClimateState(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/climate/ClimateStateRequest;Landroidx/car/app/hardware/common/CarSetOperationStatusCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/climate/ClimateStateRequest<",
            "TE;>;",
            "Landroidx/car/app/hardware/common/CarSetOperationStatusCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregisterClimateStateCallback(Landroidx/car/app/hardware/climate/CarClimateStateCallback;)V
.end method
