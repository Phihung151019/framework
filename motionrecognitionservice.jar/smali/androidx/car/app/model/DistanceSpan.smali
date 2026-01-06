.class public final Landroidx/car/app/model/DistanceSpan;
.super Landroidx/car/app/model/CarSpan;
.source "DistanceSpan.java"


# instance fields
.field private final mDistance:Landroidx/car/app/model/Distance;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 111
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/Distance;)V
    .locals 0
    .param p1, "distance"    # Landroidx/car/app/model/Distance;

    .line 105
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 106
    iput-object p1, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    .line 107
    return-void
.end method

.method public static create(Landroidx/car/app/model/Distance;)Landroidx/car/app/model/DistanceSpan;
    .locals 2
    .param p0, "distance"    # Landroidx/car/app/model/Distance;

    .line 70
    new-instance v0, Landroidx/car/app/model/DistanceSpan;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Distance;

    invoke-direct {v0, v1}, Landroidx/car/app/model/DistanceSpan;-><init>(Landroidx/car/app/model/Distance;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 94
    if-ne p0, p1, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/DistanceSpan;

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/DistanceSpan;

    .line 102
    .local v0, "otherSpan":Landroidx/car/app/model/DistanceSpan;
    iget-object v1, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    iget-object v2, v0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDistance()Landroidx/car/app/model/Distance;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Distance;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/DistanceSpan;->mDistance:Landroidx/car/app/model/Distance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
