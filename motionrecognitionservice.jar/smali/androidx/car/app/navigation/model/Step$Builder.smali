.class public final Landroidx/car/app/navigation/model/Step$Builder;
.super Ljava/lang/Object;
.source "Step.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCue:Landroidx/car/app/model/CarText;

.field private final mLanes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/Lane;",
            ">;"
        }
    .end annotation
.end field

.field private mLanesImage:Landroidx/car/app/model/CarIcon;

.field private mManeuver:Landroidx/car/app/navigation/model/Maneuver;

.field private mRoad:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanes:Ljava/util/List;

    .line 186
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/CarText;)V
    .locals 2
    .param p1, "cue"    # Landroidx/car/app/model/CarText;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanes:Ljava/util/List;

    .line 218
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mCue:Landroidx/car/app/model/CarText;

    .line 219
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step$Builder;->mCue:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "cue"    # Ljava/lang/CharSequence;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanes:Ljava/util/List;

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mCue:Landroidx/car/app/model/CarText;

    .line 204
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step$Builder;->mCue:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 205
    return-void
.end method


# virtual methods
.method public addLane(Landroidx/car/app/navigation/model/Lane;)Landroidx/car/app/navigation/model/Step$Builder;
    .locals 2
    .param p1, "lane"    # Landroidx/car/app/navigation/model/Lane;

    .line 247
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/model/Lane;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-object p0
.end method

.method public build()Landroidx/car/app/navigation/model/Step;
    .locals 8

    .line 354
    iget-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanesImage:Landroidx/car/app/model/CarIcon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A step must have lane data when the lanes image is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    :goto_0
    new-instance v2, Landroidx/car/app/navigation/model/Step;

    iget-object v3, p0, Landroidx/car/app/navigation/model/Step$Builder;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    iget-object v4, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanes:Ljava/util/List;

    iget-object v5, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanesImage:Landroidx/car/app/model/CarIcon;

    iget-object v6, p0, Landroidx/car/app/navigation/model/Step$Builder;->mCue:Landroidx/car/app/model/CarText;

    iget-object v7, p0, Landroidx/car/app/navigation/model/Step$Builder;->mRoad:Landroidx/car/app/model/CarText;

    invoke-direct/range {v2 .. v7}, Landroidx/car/app/navigation/model/Step;-><init>(Landroidx/car/app/navigation/model/Maneuver;Ljava/util/List;Landroidx/car/app/model/CarIcon;Landroidx/car/app/model/CarText;Landroidx/car/app/model/CarText;)V

    return-object v2
.end method

.method public setCue(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/Step$Builder;
    .locals 2
    .param p1, "cue"    # Ljava/lang/CharSequence;

    .line 320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mCue:Landroidx/car/app/model/CarText;

    .line 321
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step$Builder;->mCue:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 322
    return-object p0
.end method

.method public setLanesImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/navigation/model/Step$Builder;
    .locals 1
    .param p1, "lanesImage"    # Landroidx/car/app/model/CarIcon;

    .line 275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mLanesImage:Landroidx/car/app/model/CarIcon;

    .line 276
    return-object p0
.end method

.method public setManeuver(Landroidx/car/app/navigation/model/Maneuver;)Landroidx/car/app/navigation/model/Step$Builder;
    .locals 1
    .param p1, "maneuver"    # Landroidx/car/app/navigation/model/Maneuver;

    .line 229
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/model/Maneuver;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mManeuver:Landroidx/car/app/navigation/model/Maneuver;

    .line 230
    return-object p0
.end method

.method public setRoad(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/Step$Builder;
    .locals 2
    .param p1, "road"    # Ljava/lang/CharSequence;

    .line 342
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Step$Builder;->mRoad:Landroidx/car/app/model/CarText;

    .line 343
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Step$Builder;->mRoad:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 344
    return-object p0
.end method
