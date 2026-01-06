.class public final Landroidx/car/app/hardware/info/EnergyProfile$Builder;
.super Ljava/lang/Object;
.source "EnergyProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/info/EnergyProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mFuelTypes:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER_LIST:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyProfile$Builder;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 258
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER_LIST:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyProfile$Builder;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/info/EnergyProfile;
    .locals 1

    .line 291
    new-instance v0, Landroidx/car/app/hardware/info/EnergyProfile;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/info/EnergyProfile;-><init>(Landroidx/car/app/hardware/info/EnergyProfile$Builder;)V

    return-object v0
.end method

.method public setEvConnectorTypes(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyProfile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroidx/car/app/hardware/info/EnergyProfile$Builder;"
        }
    .end annotation

    .line 268
    .local p1, "evConnectorTypes":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyProfile$Builder;->mEvConnectorTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 269
    return-object p0
.end method

.method public setFuelTypes(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/EnergyProfile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroidx/car/app/hardware/info/EnergyProfile$Builder;"
        }
    .end annotation

    .line 279
    .local p1, "fuelTypes":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EnergyProfile$Builder;->mFuelTypes:Landroidx/car/app/hardware/common/CarValue;

    .line 280
    return-object p0
.end method
