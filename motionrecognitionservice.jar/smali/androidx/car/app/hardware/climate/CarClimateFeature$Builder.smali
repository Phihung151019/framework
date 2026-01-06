.class public final Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;
.super Ljava/lang/Object;
.source "CarClimateFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/CarClimateFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCarZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation
.end field

.field final mFeature:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "feature"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;->mFeature:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;->mCarZones:Ljava/util/List;

    .line 114
    return-void
.end method


# virtual methods
.method public varargs addCarZones([Landroidx/car/app/hardware/common/CarZone;)Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;
    .locals 2
    .param p1, "carZones"    # [Landroidx/car/app/hardware/common/CarZone;

    .line 126
    iget-object v0, p0, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;->mCarZones:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    return-object p0
.end method

.method public build()Landroidx/car/app/hardware/climate/CarClimateFeature;
    .locals 1

    .line 133
    new-instance v0, Landroidx/car/app/hardware/climate/CarClimateFeature;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/CarClimateFeature;-><init>(Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;)V

    return-object v0
.end method
