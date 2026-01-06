.class public final Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;
.super Ljava/lang/Object;
.source "CabinTemperatureProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/CabinTemperatureProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;
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

.field mCelsiusSupportedIncrement:F

.field mFahrenheitSupportedIncrement:F

.field mSupportedMinMaxCelsiusRange:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;
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
.method public constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    sget-object v0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_TEMPERATURE_RANGE:Landroid/util/Pair;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mSupportedMinMaxCelsiusRange:Landroid/util/Pair;

    .line 165
    sget-object v0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_TEMPERATURE_RANGE:Landroid/util/Pair;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;

    .line 166
    sget-object v0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;->DEFAULT_CELSIUS_TEMPERATURE_MAP:Ljava/util/Map;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;

    .line 168
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mCelsiusSupportedIncrement:F

    .line 169
    iput v0, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mFahrenheitSupportedIncrement:F

    .line 209
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/climate/CabinTemperatureProfile;
    .locals 1

    .line 214
    new-instance v0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/CabinTemperatureProfile;-><init>(Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;)V

    return-object v0
.end method

.method public setCarZoneSetsToCabinCelsiusTemperatureRanges(Ljava/util/Map;)Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;"
        }
    .end annotation

    .line 190
    .local p1, "carZoneSetsToCabinCelsiusTemperatureRanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Set<Landroidx/car/app/hardware/common/CarZone;>;Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    iput-object p1, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mCarZoneSetsToCabinCelsiusTemperatureRanges:Ljava/util/Map;

    .line 192
    return-object p0
.end method

.method public setCelsiusSupportedIncrement(F)Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;
    .locals 0
    .param p1, "celsiusSupportedIncrement"    # F

    .line 198
    iput p1, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mCelsiusSupportedIncrement:F

    .line 199
    return-object p0
.end method

.method public setFahrenheitSupportedIncrement(F)Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;
    .locals 0
    .param p1, "fahrenheitSupportedIncrement"    # F

    .line 205
    iput p1, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mFahrenheitSupportedIncrement:F

    .line 206
    return-object p0
.end method

.method public setSupportedMinMaxCelsiusRange(Landroid/util/Pair;)Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;"
        }
    .end annotation

    .line 174
    .local p1, "supportedMinMaxCelsiusRange":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iput-object p1, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mSupportedMinMaxCelsiusRange:Landroid/util/Pair;

    .line 175
    return-object p0
.end method

.method public setSupportedMinMaxFahrenheitRange(Landroid/util/Pair;)Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;"
        }
    .end annotation

    .line 181
    .local p1, "supportedMinMaxFahrenheitRange":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iput-object p1, p0, Landroidx/car/app/hardware/climate/CabinTemperatureProfile$Builder;->mSupportedMinMaxFahrenheitRange:Landroid/util/Pair;

    .line 182
    return-object p0
.end method
