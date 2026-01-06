.class public interface abstract Landroidx/car/app/hardware/info/CarInfo;
.super Ljava/lang/Object;
.source "CarInfo.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x3
.end annotation


# virtual methods
.method public abstract addEnergyLevelListener(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/EnergyLevel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addEvStatusListener(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/EvStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addMileageListener(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Mileage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addSpeedListener(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Speed;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addTollListener(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/TollCard;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchEnergyProfile(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/EnergyProfile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fetchModel(Ljava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Model;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeEnergyLevelListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/EnergyLevel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeEvStatusListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/EvStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeMileageListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Mileage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeSpeedListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Speed;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeTollListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/TollCard;",
            ">;)V"
        }
    .end annotation
.end method
