.class public final Landroidx/car/app/navigation/model/Step;
.super Ljava/lang/Object;
.source "Step.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/Step$Builder;
    }
.end annotation


# instance fields
.field private final mCue:Landroidx/car/app/model/CarText;

.field private final mLanes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Lane;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanesImage:Landroidx/car/app/model/CarIcon;

.field private final mManeuver:Landroidx/car/app/navigation/model/Maneuver;

.field private final mRoad:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    .line 165
    iput-object v0, p0, Landroidx/car/app/navigation/model/Step;->mLanesImage:Landroidx/car/app/model/CarIcon;

    .line 166
    iput-object v0, p0, Landroidx/car/app/navigation/model/Step;->mCue:Landroidx/car/app/model/CarText;

    .line 167
    iput-object v0, p0, Landroidx/car/app/navigation/model/Step;->mRoad:Landroidx/car/app/model/CarText;

    .line 168
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/Maneuver;Ljava/util/List;Landroidx/car/app/model/CarIcon;Landroidx/car/app/model/CarText;Landroidx/car/app/model/CarText;)V
    .locals 1
    .param p1, "maneuver"    # Landroidx/car/app/navigation/model/Maneuver;
    .param p3, "lanesImage"    # Landroidx/car/app/model/CarIcon;
    .param p4, "cue"    # Landroidx/car/app/model/CarText;
    .param p5, "road"    # Landroidx/car/app/model/CarText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/navigation/model/Maneuver;",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Lane;",
            ">;",
            "Landroidx/car/app/model/CarIcon;",
            "Landroidx/car/app/model/CarText;",
            "Landroidx/car/app/model/CarText;",
            ")V"
        }
    .end annotation

    .line 152
    .local p2, "lanes":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/navigation/model/Lane;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Landroidx/car/app/navigation/model/Step;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    .line 154
    invoke-static {p2}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    .line 155
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-virtual {v0, p3}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 156
    iput-object p3, p0, Landroidx/car/app/navigation/model/Step;->mLanesImage:Landroidx/car/app/model/CarIcon;

    .line 157
    iput-object p4, p0, Landroidx/car/app/navigation/model/Step;->mCue:Landroidx/car/app/model/CarText;

    .line 158
    iput-object p5, p0, Landroidx/car/app/navigation/model/Step;->mRoad:Landroidx/car/app/model/CarText;

    .line 159
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 133
    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/Step;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 136
    return v2

    .line 139
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/Step;

    .line 140
    .local v1, "otherStep":Landroidx/car/app/navigation/model/Step;
    iget-object v3, p0, Landroidx/car/app/navigation/model/Step;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Step;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Step;->mLanesImage:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Step;->mLanesImage:Landroidx/car/app/model/CarIcon;

    .line 142
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Step;->mCue:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Step;->mCue:Landroidx/car/app/model/CarText;

    .line 143
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Step;->mRoad:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Step;->mRoad:Landroidx/car/app/model/CarText;

    .line 144
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 140
    :goto_0
    return v0
.end method

.method public getCue()Landroidx/car/app/model/CarText;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step;->mCue:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getLanes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Lane;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanesImage()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step;->mLanesImage:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getManeuver()Landroidx/car/app/navigation/model/Maneuver;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    return-object v0
.end method

.method public getRoad()Landroidx/car/app/model/CarText;
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step;->mRoad:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 127
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    iget-object v2, p0, Landroidx/car/app/navigation/model/Step;->mLanesImage:Landroidx/car/app/model/CarIcon;

    iget-object v3, p0, Landroidx/car/app/navigation/model/Step;->mCue:Landroidx/car/app/model/CarText;

    iget-object v4, p0, Landroidx/car/app/navigation/model/Step;->mRoad:Landroidx/car/app/model/CarText;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[maneuver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lane count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget-object v1, p0, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step;->mLanes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lanes image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step;->mLanesImage:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step;->mCue:Landroidx/car/app/model/CarText;

    .line 119
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", road: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step;->mRoad:Landroidx/car/app/model/CarText;

    .line 121
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method
