.class public final Landroidx/car/app/hardware/climate/SeatTemperatureProfile;
.super Ljava/lang/Object;
.source "SeatTemperatureProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/SeatTemperatureProfile$Builder;
    }
.end annotation


# instance fields
.field private final mCarZoneSetsToSeatTemperatureValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/car/app/hardware/climate/SeatTemperatureProfile$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/climate/SeatTemperatureProfile$Builder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Landroidx/car/app/hardware/climate/SeatTemperatureProfile$Builder;->mCarZoneSetsToSeatTemperatureValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/SeatTemperatureProfile;->mCarZoneSetsToSeatTemperatureValues:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public getCarZoneSetsToSeatTemperatureValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroidx/car/app/hardware/climate/SeatTemperatureProfile;->mCarZoneSetsToSeatTemperatureValues:Ljava/util/Map;

    return-object v0
.end method
