.class public interface abstract Landroidx/car/app/hardware/info/CarSensors;
.super Ljava/lang/Object;
.source "CarSensors.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/info/CarSensors$UpdateRate;
    }
.end annotation


# static fields
.field public static final UPDATE_RATE_FASTEST:I = 0x3

.field public static final UPDATE_RATE_NORMAL:I = 0x1

.field public static final UPDATE_RATE_UI:I = 0x2


# virtual methods
.method public abstract addAccelerometerListener(ILjava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Accelerometer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addCarHardwareLocationListener(ILjava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/CarHardwareLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addCompassListener(ILjava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Compass;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addGyroscopeListener(ILjava/util/concurrent/Executor;Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Gyroscope;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAccelerometerListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Accelerometer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeCarHardwareLocationListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/CarHardwareLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeCompassListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Compass;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeGyroscopeListener(Landroidx/car/app/hardware/common/OnCarDataAvailableListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/OnCarDataAvailableListener<",
            "Landroidx/car/app/hardware/info/Gyroscope;",
            ">;)V"
        }
    .end annotation
.end method
