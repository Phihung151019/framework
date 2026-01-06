.class public final Landroidx/car/app/navigation/model/TravelEstimate$Builder;
.super Ljava/lang/Object;
.source "TravelEstimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/TravelEstimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/TravelEstimate$Builder$Api26Impl;
    }
.end annotation


# instance fields
.field final mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

.field final mRemainingDistance:Landroidx/car/app/model/Distance;

.field mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

.field mRemainingTimeColor:Landroidx/car/app/model/CarColor;

.field mRemainingTimeSeconds:J

.field mTripIcon:Landroidx/car/app/model/CarIcon;

.field mTripText:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>(Landroidx/car/app/model/Distance;Landroidx/car/app/model/DateTimeWithZone;)V
    .locals 2
    .param p1, "remainingDistance"    # Landroidx/car/app/model/Distance;
    .param p2, "arrivalTimeAtDestination"    # Landroidx/car/app/model/DateTimeWithZone;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeSeconds:J

    .line 207
    sget-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 208
    sget-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Distance;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 229
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/DateTimeWithZone;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 230
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/Distance;Ljava/time/ZonedDateTime;)V
    .locals 2
    .param p1, "remainingDistance"    # Landroidx/car/app/model/Distance;
    .param p2, "arrivalTimeAtDestination"    # Ljava/time/ZonedDateTime;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeSeconds:J

    .line 207
    sget-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 208
    sget-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 247
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Distance;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 248
    nop

    .line 249
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroidx/car/app/model/DateTimeWithZone;->create(Ljava/time/ZonedDateTime;)Landroidx/car/app/model/DateTimeWithZone;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 250
    return-void
.end method

.method static validateRemainingTime(J)J
    .locals 2
    .param p0, "remainingTimeSeconds"    # J

    .line 373
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remaining time must be a larger than or equal to zero, or set to REMAINING_TIME_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/TravelEstimate;
    .locals 1

    .line 369
    new-instance v0, Landroidx/car/app/navigation/model/TravelEstimate;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/TravelEstimate;-><init>(Landroidx/car/app/navigation/model/TravelEstimate$Builder;)V

    return-object v0
.end method

.method public setRemainingDistanceColor(Landroidx/car/app/model/CarColor;)Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .locals 2
    .param p1, "remainingDistanceColor"    # Landroidx/car/app/model/CarColor;

    .line 321
    sget-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->STANDARD_ONLY:Landroidx/car/app/model/constraints/CarColorConstraints;

    .line 322
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarColor;

    .line 321
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarColorConstraints;->validateOrThrow(Landroidx/car/app/model/CarColor;)V

    .line 323
    iput-object p1, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 324
    return-object p0
.end method

.method public setRemainingTime(Ljava/time/Duration;)Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .locals 1
    .param p1, "remainingTime"    # Ljava/time/Duration;

    .line 283
    invoke-static {p0, p1}, Landroidx/car/app/navigation/model/TravelEstimate$Builder$Api26Impl;->setRemainingTime(Landroidx/car/app/navigation/model/TravelEstimate$Builder;Ljava/time/Duration;)Landroidx/car/app/navigation/model/TravelEstimate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRemainingTimeColor(Landroidx/car/app/model/CarColor;)Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .locals 2
    .param p1, "remainingTimeColor"    # Landroidx/car/app/model/CarColor;

    .line 301
    sget-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->STANDARD_ONLY:Landroidx/car/app/model/constraints/CarColorConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarColorConstraints;->validateOrThrow(Landroidx/car/app/model/CarColor;)V

    .line 302
    iput-object p1, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 303
    return-object p0
.end method

.method public setRemainingTimeSeconds(J)Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .locals 2
    .param p1, "remainingTimeSeconds"    # J

    .line 266
    invoke-static {p1, p2}, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->validateRemainingTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeSeconds:J

    .line 267
    return-object p0
.end method

.method public setTripIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .locals 2
    .param p1, "tripIcon"    # Landroidx/car/app/model/CarIcon;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 361
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 362
    iput-object p1, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 363
    return-object p0
.end method

.method public setTripText(Landroidx/car/app/model/CarText;)Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .locals 2
    .param p1, "tripText"    # Landroidx/car/app/model/CarText;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 344
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mTripText:Landroidx/car/app/model/CarText;

    .line 345
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mTripText:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 346
    return-object p0
.end method
