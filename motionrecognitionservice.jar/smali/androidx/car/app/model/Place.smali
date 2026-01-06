.class public final Landroidx/car/app/model/Place;
.super Ljava/lang/Object;
.source "Place.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Place$Builder;
    }
.end annotation


# instance fields
.field private final mLocation:Landroidx/car/app/model/CarLocation;

.field private final mMarker:Landroidx/car/app/model/PlaceMarker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Place;->mLocation:Landroidx/car/app/model/CarLocation;

    .line 91
    iput-object v0, p0, Landroidx/car/app/model/Place;->mMarker:Landroidx/car/app/model/PlaceMarker;

    .line 92
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Place$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Place$Builder;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object v0, p1, Landroidx/car/app/model/Place$Builder;->mLocation:Landroidx/car/app/model/CarLocation;

    iput-object v0, p0, Landroidx/car/app/model/Place;->mLocation:Landroidx/car/app/model/CarLocation;

    .line 85
    iget-object v0, p1, Landroidx/car/app/model/Place$Builder;->mMarker:Landroidx/car/app/model/PlaceMarker;

    iput-object v0, p0, Landroidx/car/app/model/Place;->mMarker:Landroidx/car/app/model/PlaceMarker;

    .line 86
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Place;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 75
    return v2

    .line 77
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Place;

    .line 79
    .local v1, "otherPlace":Landroidx/car/app/model/Place;
    iget-object v3, p0, Landroidx/car/app/model/Place;->mLocation:Landroidx/car/app/model/CarLocation;

    iget-object v4, v1, Landroidx/car/app/model/Place;->mLocation:Landroidx/car/app/model/CarLocation;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Place;->mMarker:Landroidx/car/app/model/PlaceMarker;

    iget-object v4, v1, Landroidx/car/app/model/Place;->mMarker:Landroidx/car/app/model/PlaceMarker;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getLocation()Landroidx/car/app/model/CarLocation;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/car/app/model/Place;->mLocation:Landroidx/car/app/model/CarLocation;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarLocation;

    return-object v0
.end method

.method public getMarker()Landroidx/car/app/model/PlaceMarker;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/car/app/model/Place;->mMarker:Landroidx/car/app/model/PlaceMarker;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Landroidx/car/app/model/Place;->mLocation:Landroidx/car/app/model/CarLocation;

    iget-object v1, p0, Landroidx/car/app/model/Place;->mMarker:Landroidx/car/app/model/PlaceMarker;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Place;->mLocation:Landroidx/car/app/model/CarLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", marker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Place;->mMarker:Landroidx/car/app/model/PlaceMarker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
