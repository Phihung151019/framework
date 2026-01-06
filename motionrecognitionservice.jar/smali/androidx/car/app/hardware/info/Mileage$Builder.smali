.class public final Landroidx/car/app/hardware/info/Mileage$Builder;
.super Ljava/lang/Object;
.source "Mileage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/info/Mileage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mDistanceDisplayUnit:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOdometerMeters:Landroidx/car/app/hardware/common/CarValue;
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

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Mileage$Builder;->mOdometerMeters:Landroidx/car/app/hardware/common/CarValue;

    .line 102
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Mileage$Builder;->mDistanceDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/info/Mileage;
    .locals 1

    .line 135
    new-instance v0, Landroidx/car/app/hardware/info/Mileage;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/info/Mileage;-><init>(Landroidx/car/app/hardware/info/Mileage$Builder;)V

    return-object v0
.end method

.method public setDistanceDisplayUnit(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Mileage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/car/app/hardware/info/Mileage$Builder;"
        }
    .end annotation

    .line 126
    .local p1, "mileageDisplayUnit":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Mileage$Builder;->mDistanceDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 127
    return-object p0
.end method

.method public setOdometerMeters(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Mileage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/info/Mileage$Builder;"
        }
    .end annotation

    .line 112
    .local p1, "odometerMeters":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Mileage$Builder;->mOdometerMeters:Landroidx/car/app/hardware/common/CarValue;

    .line 113
    return-object p0
.end method
