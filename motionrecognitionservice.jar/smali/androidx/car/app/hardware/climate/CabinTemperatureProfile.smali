.class public final Landroidx/car/app/hardware/climate/CabinTemperatureProfile;
.super Ljava/lang/Object;
.source "CabinTemperatureProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CELSIUS_TEMPERATURE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field static final DEFAULT_TEMPERATURE_INCREMENT:F = -1.0f

.field static final DEFAULT_TEMPERATURE_RANGE:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCelsiusSupportedIncrement:F

.field private final mFahrenheitSupportedIncrement:F

.field private final mSupportedMinMaxCelsiusRange:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Landroid/util/Pair;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_TEMPERATURE_RANGE:Landroid/util/Pair;

    .line 48
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v2, Landroidx/car/app/hardware/common/CarZone;->CAR_ZONE_GLOBAL:Landroidx/car/app/hardware/common/CarZone;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    .line 49
    invoke-direct {v3, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildKeepingLast()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_CELSIUS_TEMPERATURE_MAP:Ljava/util/Map;

    .line 47
    return-void
.end method

.method constructor <init>(Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iget-object v0, p1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mSupportedMinMaxCelsiusRange:Landroid/util/Pair;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mSupportedMinMaxCelsiusRange:Landroid/util/Pair;

    .line 155
    iget-object v0, p1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;

    .line 156
    iget-object v0, p1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;

    .line 158
    iget v0, p1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mCelsiusSupportedIncrement:F

    iput v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mCelsiusSupportedIncrement:F

    .line 159
    iget v0, p1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mFahrenheitSupportedIncrement:F

    iput v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mFahrenheitSupportedIncrement:F

    .line 160
    return-void
.end method


# virtual methods
.method public getCarZoneSetsToCabinCelsiusTemperatureRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->hasCarZoneSetsToCabinCelsiusTemperatureRanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Celsius min/max range corresponding to car zones is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCelsiusSupportedIncrement()F
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->hasCelsiusSupportedIncrement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mCelsiusSupportedIncrement:F

    return v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Celsius increment value is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFahrenheitSupportedIncrement()F
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->hasFahrenheitSupportedIncrement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mFahrenheitSupportedIncrement:F

    return v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fahrenheit increment value is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedMinMaxCelsiusRange()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->hasSupportedMinMaxCelsiusRange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mSupportedMinMaxCelsiusRange:Landroid/util/Pair;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Celsius min/max range is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedMinMaxFahrenheitRange()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->hasSupportedMinMaxFahrenheitRange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fahrenheit min/max range is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasCarZoneSetsToCabinCelsiusTemperatureRanges()Z
    .locals 2

    .line 73
    iget-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;

    sget-object v1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_CELSIUS_TEMPERATURE_MAP:Ljava/util/Map;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCelsiusSupportedIncrement()Z
    .locals 2

    .line 78
    iget v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mCelsiusSupportedIncrement:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFahrenheitSupportedIncrement()Z
    .locals 2

    .line 83
    iget v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mFahrenheitSupportedIncrement:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSupportedMinMaxCelsiusRange()Z
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mSupportedMinMaxCelsiusRange:Landroid/util/Pair;

    sget-object v1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_TEMPERATURE_RANGE:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSupportedMinMaxFahrenheitRange()Z
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;

    sget-object v1, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_TEMPERATURE_RANGE:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
