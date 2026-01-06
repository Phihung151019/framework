.class public final Landroidx/car/app/navigation/model/RoutingInfo$Builder;
.super Ljava/lang/Object;
.source "RoutingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/RoutingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCurrentDistance:Landroidx/car/app/model/Distance;

.field mCurrentStep:Landroidx/car/app/navigation/model/Step;

.field mIsLoading:Z

.field mJunctionImage:Landroidx/car/app/model/CarIcon;

.field mNextStep:Landroidx/car/app/navigation/model/Step;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/RoutingInfo;
    .locals 4

    .line 263
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    .line 264
    .local v0, "current":Landroidx/car/app/navigation/model/Step;
    iget-object v1, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mCurrentDistance:Landroidx/car/app/model/Distance;

    .line 266
    .local v1, "distance":Landroidx/car/app/model/Distance;
    iget-boolean v2, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mIsLoading:Z

    if-eqz v2, :cond_1

    .line 267
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mNextStep:Landroidx/car/app/navigation/model/Step;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    if-nez v2, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The routing info is set to loading but is not empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 277
    invoke-virtual {v0}, Landroidx/car/app/navigation/model/Step;->getLanes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroidx/car/app/navigation/model/Step;->getLanesImage()Landroidx/car/app/model/CarIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 280
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Current step must have a lanes image if the lane information is set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_3
    :goto_0
    new-instance v2, Landroidx/car/app/navigation/model/RoutingInfo;

    invoke-direct {v2, p0}, Landroidx/car/app/navigation/model/RoutingInfo;-><init>(Landroidx/car/app/navigation/model/RoutingInfo$Builder;)V

    return-object v2

    .line 274
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Current step and distance must be set during the navigating state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCurrentStep(Landroidx/car/app/navigation/model/Step;Landroidx/car/app/model/Distance;)Landroidx/car/app/navigation/model/RoutingInfo$Builder;
    .locals 1
    .param p1, "currentStep"    # Landroidx/car/app/navigation/model/Step;
    .param p2, "currentDistance"    # Landroidx/car/app/model/Distance;

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/model/Step;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mCurrentStep:Landroidx/car/app/navigation/model/Step;

    .line 175
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Distance;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mCurrentDistance:Landroidx/car/app/model/Distance;

    .line 176
    return-object p0
.end method

.method public setJunctionImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/navigation/model/RoutingInfo$Builder;
    .locals 2
    .param p1, "junctionImage"    # Landroidx/car/app/model/CarIcon;

    .line 227
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 228
    iput-object p1, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mJunctionImage:Landroidx/car/app/model/CarIcon;

    .line 229
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/navigation/model/RoutingInfo$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 243
    iput-boolean p1, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mIsLoading:Z

    .line 244
    return-object p0
.end method

.method public setNextStep(Landroidx/car/app/navigation/model/Step;)Landroidx/car/app/navigation/model/RoutingInfo$Builder;
    .locals 1
    .param p1, "nextStep"    # Landroidx/car/app/navigation/model/Step;

    .line 199
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/model/Step;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutingInfo$Builder;->mNextStep:Landroidx/car/app/navigation/model/Step;

    .line 200
    return-object p0
.end method
