.class public final Landroidx/car/app/navigation/model/TravelEstimate;
.super Ljava/lang/Object;
.source "TravelEstimate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/TravelEstimate$Builder;
    }
.end annotation


# static fields
.field public static final REMAINING_TIME_UNKNOWN:J = -0x1L


# instance fields
.field private final mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

.field private final mRemainingDistance:Landroidx/car/app/model/Distance;

.field private final mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

.field private final mRemainingTimeColor:Landroidx/car/app/model/CarColor;

.field private final mRemainingTimeSeconds:J

.field private final mTripIcon:Landroidx/car/app/model/CarIcon;

.field private final mTripText:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 184
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 185
    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 186
    sget-object v1, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 187
    sget-object v1, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 188
    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 189
    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 190
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/TravelEstimate$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/car/app/navigation/model/TravelEstimate$Builder;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p1, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingDistance:Landroidx/car/app/model/Distance;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    .line 194
    iget-wide v0, p1, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeSeconds:J

    iput-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 195
    iget-object v0, p1, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 196
    iget-object v0, p1, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 197
    iget-object v0, p1, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 198
    iget-object v0, p1, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mTripText:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 199
    iget-object v0, p1, Landroidx/car/app/navigation/model/TravelEstimate$Builder;->mTripIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 200
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 165
    return v0

    .line 167
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/TravelEstimate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 168
    return v2

    .line 170
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/TravelEstimate;

    .line 172
    .local v1, "otherInfo":Landroidx/car/app/navigation/model/TravelEstimate;
    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    iget-object v4, v1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    iget-wide v5, v1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    iget-object v4, v1, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    .line 174
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    iget-object v4, v1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    .line 175
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    iget-object v4, v1, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    .line 176
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    .line 177
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    .line 178
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 172
    :goto_0
    return v0
.end method

.method public getArrivalTimeAtDestination()Landroidx/car/app/model/DateTimeWithZone;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    return-object v0
.end method

.method public getRemainingDistance()Landroidx/car/app/model/Distance;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    return-object v0
.end method

.method public getRemainingDistanceColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getRemainingTimeColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getRemainingTimeSeconds()J
    .locals 4

    .line 85
    iget-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getTripIcon()Landroidx/car/app/model/CarIcon;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 137
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getTripText()Landroidx/car/app/model/CarText;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 152
    iget-object v0, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    iget-wide v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    iget-object v3, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeColor:Landroidx/car/app/model/CarColor;

    iget-object v4, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistanceColor:Landroidx/car/app/model/CarColor;

    iget-object v5, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripText:Landroidx/car/app/model/CarText;

    iget-object v6, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mTripIcon:Landroidx/car/app/model/CarIcon;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 152
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ remaining distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingDistance:Landroidx/car/app/model/Distance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time (s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mRemainingTimeSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ETA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/TravelEstimate;->mArrivalTimeAtDestination:Landroidx/car/app/model/DateTimeWithZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
