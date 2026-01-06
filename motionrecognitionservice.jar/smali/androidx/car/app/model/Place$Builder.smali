.class public final Landroidx/car/app/model/Place$Builder;
.super Ljava/lang/Object;
.source "Place.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Place;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mLocation:Landroidx/car/app/model/CarLocation;

.field mMarker:Landroidx/car/app/model/PlaceMarker;


# direct methods
.method public constructor <init>(Landroidx/car/app/model/CarLocation;)V
    .locals 1
    .param p1, "location"    # Landroidx/car/app/model/CarLocation;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarLocation;

    iput-object v0, p0, Landroidx/car/app/model/Place$Builder;->mLocation:Landroidx/car/app/model/CarLocation;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/Place;)V
    .locals 1
    .param p1, "place"    # Landroidx/car/app/model/Place;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Landroidx/car/app/model/Place;->getLocation()Landroidx/car/app/model/CarLocation;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Place$Builder;->mLocation:Landroidx/car/app/model/CarLocation;

    .line 131
    invoke-virtual {p1}, Landroidx/car/app/model/Place;->getMarker()Landroidx/car/app/model/PlaceMarker;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Place$Builder;->mMarker:Landroidx/car/app/model/PlaceMarker;

    .line 132
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/Place;
    .locals 1

    .line 137
    new-instance v0, Landroidx/car/app/model/Place;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Place;-><init>(Landroidx/car/app/model/Place$Builder;)V

    return-object v0
.end method

.method public setMarker(Landroidx/car/app/model/PlaceMarker;)Landroidx/car/app/model/Place$Builder;
    .locals 1
    .param p1, "marker"    # Landroidx/car/app/model/PlaceMarker;

    .line 120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/PlaceMarker;

    iput-object v0, p0, Landroidx/car/app/model/Place$Builder;->mMarker:Landroidx/car/app/model/PlaceMarker;

    .line 121
    return-object p0
.end method
