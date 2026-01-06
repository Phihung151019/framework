.class public final Landroidx/car/app/navigation/model/Trip;
.super Ljava/lang/Object;
.source "Trip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/Trip$Builder;
    }
.end annotation


# instance fields
.field private final mCurrentRoad:Landroidx/car/app/model/CarText;

.field private final mDestinationTravelEstimates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/TravelEstimate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDestinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Destination;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsLoading:Z

.field private final mStepTravelEstimates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/TravelEstimate;",
            ">;"
        }
    .end annotation
.end field

.field private final mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mDestinations:Ljava/util/List;

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mSteps:Ljava/util/List;

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mDestinationTravelEstimates:Ljava/util/List;

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mStepTravelEstimates:Ljava/util/List;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mCurrentRoad:Landroidx/car/app/model/CarText;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/navigation/model/Trip;->mIsLoading:Z

    .line 187
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/Trip$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/Trip$Builder;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iget-object v0, p1, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinations:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mDestinations:Ljava/util/List;

    .line 171
    iget-object v0, p1, Landroidx/car/app/navigation/model/Trip$Builder;->mSteps:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mSteps:Ljava/util/List;

    .line 172
    iget-object v0, p1, Landroidx/car/app/navigation/model/Trip$Builder;->mDestinationTravelEstimates:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mDestinationTravelEstimates:Ljava/util/List;

    .line 174
    iget-object v0, p1, Landroidx/car/app/navigation/model/Trip$Builder;->mStepTravelEstimates:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mStepTravelEstimates:Ljava/util/List;

    .line 175
    iget-object v0, p1, Landroidx/car/app/navigation/model/Trip$Builder;->mCurrentRoad:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mCurrentRoad:Landroidx/car/app/model/CarText;

    .line 176
    iget-boolean v0, p1, Landroidx/car/app/navigation/model/Trip$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/navigation/model/Trip;->mIsLoading:Z

    .line 177
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 153
    return v0

    .line 155
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/Trip;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 156
    return v2

    .line 159
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/Trip;

    .line 160
    .local v1, "otherTrip":Landroidx/car/app/navigation/model/Trip;
    iget-object v3, p0, Landroidx/car/app/navigation/model/Trip;->mDestinations:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Trip;->mDestinations:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Trip;->mSteps:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Trip;->mSteps:Ljava/util/List;

    .line 161
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Trip;->mDestinationTravelEstimates:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Trip;->mDestinationTravelEstimates:Ljava/util/List;

    .line 162
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Trip;->mStepTravelEstimates:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Trip;->mStepTravelEstimates:Ljava/util/List;

    .line 164
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Trip;->mCurrentRoad:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Trip;->mCurrentRoad:Landroidx/car/app/model/CarText;

    .line 165
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/car/app/navigation/model/Trip;->mIsLoading:Z

    .line 166
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroidx/car/app/navigation/model/Trip;->mIsLoading:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 160
    :goto_0
    return v0
.end method

.method public getCurrentRoad()Landroidx/car/app/model/CarText;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mCurrentRoad:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getDestinationTravelEstimates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/TravelEstimate;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mDestinationTravelEstimates:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDestinations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Destination;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mDestinations:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStepTravelEstimates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/TravelEstimate;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mStepTravelEstimates:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Step;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mSteps:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 145
    iget-object v0, p0, Landroidx/car/app/navigation/model/Trip;->mDestinations:Ljava/util/List;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip;->mSteps:Ljava/util/List;

    iget-object v2, p0, Landroidx/car/app/navigation/model/Trip;->mDestinationTravelEstimates:Ljava/util/List;

    iget-object v3, p0, Landroidx/car/app/navigation/model/Trip;->mStepTravelEstimates:Ljava/util/List;

    iget-object v4, p0, Landroidx/car/app/navigation/model/Trip;->mCurrentRoad:Landroidx/car/app/model/CarText;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Landroidx/car/app/navigation/model/Trip;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ destinations : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip;->mDestinations:Ljava/util/List;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", steps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip;->mSteps:Ljava/util/List;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dest estimates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip;->mDestinationTravelEstimates:Ljava/util/List;

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", step estimates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip;->mStepTravelEstimates:Ljava/util/List;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", road: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Trip;->mCurrentRoad:Landroidx/car/app/model/CarText;

    .line 137
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/navigation/model/Trip;->mIsLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method
