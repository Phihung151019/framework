.class public final Landroidx/car/app/hardware/info/EnergyLevel$Builder;
.super Ljava/lang/Object;
.source "EnergyLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/info/EnergyLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mBatteryPercent:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mDistanceDisplayUnit:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEnergyIsLow:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mFuelPercent:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mFuelVolumeDisplayUnit:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRangeRemainingMeters:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mBatteryPercent:Landroidx/car/app/hardware/common/CarValue;

    .line 168
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mFuelPercent:Landroidx/car/app/hardware/common/CarValue;

    .line 169
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_BOOLEAN:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mEnergyIsLow:Landroidx/car/app/hardware/common/CarValue;

    .line 170
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mRangeRemainingMeters:Landroidx/car/app/hardware/common/CarValue;

    .line 171
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mDistanceDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 173
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mFuelVolumeDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/info/EnergyLevel;
    .locals 1

    .line 249
    new-instance v0, Landroidx/car/app/hardware/info/EnergyLevel;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/info/EnergyLevel;-><init>(Landroidx/car/app/hardware/info/EnergyLevel$Builder;)V

    return-object v0
.end method

.method public setBatteryPercent(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyLevel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/info/EnergyLevel$Builder;"
        }
    .end annotation

    .line 179
    .local p1, "batteryPercent":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mBatteryPercent:Landroidx/car/app/hardware/common/CarValue;

    .line 180
    return-object p0
.end method

.method public setDistanceDisplayUnit(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyLevel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/car/app/hardware/info/EnergyLevel$Builder;"
        }
    .end annotation

    .line 226
    .local p1, "distanceDisplayUnit":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mDistanceDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 227
    return-object p0
.end method

.method public setEnergyIsLow(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyLevel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/car/app/hardware/info/EnergyLevel$Builder;"
        }
    .end annotation

    .line 201
    .local p1, "energyIsLow":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mEnergyIsLow:Landroidx/car/app/hardware/common/CarValue;

    .line 202
    return-object p0
.end method

.method public setFuelPercent(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyLevel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/info/EnergyLevel$Builder;"
        }
    .end annotation

    .line 190
    .local p1, "fuelPercent":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mFuelPercent:Landroidx/car/app/hardware/common/CarValue;

    .line 191
    return-object p0
.end method

.method public setFuelVolumeDisplayUnit(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyLevel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/car/app/hardware/info/EnergyLevel$Builder;"
        }
    .end annotation

    .line 240
    .local p1, "fuelVolumeDisplayUnit":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mFuelVolumeDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 241
    return-object p0
.end method

.method public setRangeRemainingMeters(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyLevel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/info/EnergyLevel$Builder;"
        }
    .end annotation

    .line 212
    .local p1, "rangeRemainingMeters":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyLevel$Builder;->mRangeRemainingMeters:Landroidx/car/app/hardware/common/CarValue;

    .line 213
    return-object p0
.end method
