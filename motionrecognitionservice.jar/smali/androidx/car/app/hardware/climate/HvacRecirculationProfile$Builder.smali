.class public final Landroidx/car/app/hardware/climate/HvacRecirculationProfile$Builder;
.super Ljava/lang/Object;
.source "HvacRecirculationProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/HvacRecirculationProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mSupportedCarZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;>;)V"
        }
    .end annotation

    .line 59
    .local p1, "supportedCarZones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Landroidx/car/app/hardware/common/CarZone;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/car/app/hardware/climate/HvacRecirculationProfile$Builder;->mSupportedCarZones:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/climate/HvacRecirculationProfile;
    .locals 1

    .line 66
    new-instance v0, Landroidx/car/app/hardware/climate/HvacRecirculationProfile;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/HvacRecirculationProfile;-><init>(Landroidx/car/app/hardware/climate/HvacRecirculationProfile$Builder;)V

    return-object v0
.end method
