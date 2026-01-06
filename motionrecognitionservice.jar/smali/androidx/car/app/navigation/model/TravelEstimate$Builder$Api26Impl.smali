.class final Landroidx/car/app/navigation/model/TravelEstimate$Builder$Api26Impl;
.super Ljava/lang/Object;
.source "TravelEstimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/TravelEstimate$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    return-void
.end method

.method public static setRemainingTime(Landroidx/car/app/navigation/model/TravelEstimate$Builder;Ljava/time/Duration;)Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .locals 2
    .param p0, "builder"    # Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    .param p1, "remainingTime"    # Ljava/time/Duration;

    .line 394
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    nop

    .line 396
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->validateRemainingTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeSeconds:J

    .line 397
    return-object p0
.end method
