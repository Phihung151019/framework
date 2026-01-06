.class public final Landroidx/car/app/navigation/model/Trip$Builder;
.super Ljava/lang/Object;
.source "Trip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/Trip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCurrentRoad:Landroidx/car/app/model/CarText;

.field final mDestinationTravelEstimates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/TravelEstimate;",
            ">;"
        }
    .end annotation
.end field

.field final mDestinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Destination;",
            ">;"
        }
    .end annotation
.end field

.field mIsLoading:Z

.field final mStepTravelEstimates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/TravelEstimate;",
            ">;"
        }
    .end annotation
.end field

.field final mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinations:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mSteps:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinationTravelEstimates:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mStepTravelEstimates:Ljava/util/List;

    .line 291
    return-void
.end method


# virtual methods
.method public addDestination(Landroidx/car/app/navigation/model/Destination;Landroidx/car/app/navigation/model/TravelEstimate;)Landroidx/car/app/navigation/model/Trip$Builder;
    .locals 2
    .param p1, "destination"    # Landroidx/car/app/navigation/model/Destination;
    .param p2, "destinationTravelEstimate"    # Landroidx/car/app/navigation/model/TravelEstimate;

    .line 217
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinations:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/model/Destination;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinationTravelEstimates:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/model/TravelEstimate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-object p0
.end method

.method public addStep(Landroidx/car/app/navigation/model/Step;Landroidx/car/app/navigation/model/TravelEstimate;)Landroidx/car/app/navigation/model/Trip$Builder;
    .locals 2
    .param p1, "step"    # Landroidx/car/app/navigation/model/Step;
    .param p2, "stepTravelEstimate"    # Landroidx/car/app/navigation/model/TravelEstimate;

    .line 239
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mSteps:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/model/Step;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mStepTravelEstimates:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/model/TravelEstimate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-object p0
.end method

.method public build()Landroidx/car/app/navigation/model/Trip;
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinationTravelEstimates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 279
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mStepTravelEstimates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 283
    iget-boolean v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mIsLoading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step information may not be set while loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    :goto_0
    new-instance v0, Landroidx/car/app/navigation/model/Trip;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/Trip;-><init>(Landroidx/car/app/navigation/model/Trip$Builder;)V

    return-object v0

    .line 280
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Steps and step travel estimates sizes must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destinations and destination travel estimates sizes must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentRoad(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/Trip$Builder;
    .locals 1
    .param p1, "currentRoad"    # Ljava/lang/CharSequence;

    .line 254
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mCurrentRoad:Landroidx/car/app/model/CarText;

    .line 255
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/navigation/model/Trip$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 266
    iput-boolean p1, p0, Landroidx/car/app/navigation/model/Trip$Builder;->mIsLoading:Z

    .line 267
    return-object p0
.end method
