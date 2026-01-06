.class public final Landroidx/car/app/hardware/climate/SeatTemperatureProfile$Builder;
.super Ljava/lang/Object;
.source "SeatTemperatureProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/SeatTemperatureProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCarZoneSetsToSeatTemperatureValues:Ljava/util/Map;
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
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 75
    .local p1, "carZoneSetsToSeatTemperatureValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Set<Landroidx/car/app/hardware/common/CarZone;>;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/SeatTemperatureProfile$Builder;->mCarZoneSetsToSeatTemperatureValues:Ljava/util/Map;

    .line 78
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/climate/SeatTemperatureProfile;
    .locals 1

    .line 83
    new-instance v0, Landroidx/car/app/hardware/climate/SeatTemperatureProfile;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/SeatTemperatureProfile;-><init>(Landroidx/car/app/hardware/climate/SeatTemperatureProfile$Builder;)V

    return-object v0
.end method
