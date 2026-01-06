.class public final Landroidx/car/app/navigation/model/Maneuver;
.super Ljava/lang/Object;
.source "Maneuver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/Maneuver$Builder;,
        Landroidx/car/app/navigation/model/Maneuver$Type;
    }
.end annotation


# static fields
.field public static final TYPE_DEPART:I = 0x1

.field public static final TYPE_DESTINATION:I = 0x27

.field public static final TYPE_DESTINATION_LEFT:I = 0x29

.field public static final TYPE_DESTINATION_RIGHT:I = 0x2a

.field public static final TYPE_DESTINATION_STRAIGHT:I = 0x28

.field public static final TYPE_FERRY_BOAT:I = 0x25

.field public static final TYPE_FERRY_BOAT_LEFT:I = 0x2f

.field public static final TYPE_FERRY_BOAT_RIGHT:I = 0x30

.field public static final TYPE_FERRY_TRAIN:I = 0x26

.field public static final TYPE_FERRY_TRAIN_LEFT:I = 0x31

.field public static final TYPE_FERRY_TRAIN_RIGHT:I = 0x32

.field public static final TYPE_FORK_LEFT:I = 0x19

.field public static final TYPE_FORK_RIGHT:I = 0x1a

.field public static final TYPE_KEEP_LEFT:I = 0x3

.field public static final TYPE_KEEP_RIGHT:I = 0x4

.field public static final TYPE_MERGE_LEFT:I = 0x1b

.field public static final TYPE_MERGE_RIGHT:I = 0x1c

.field public static final TYPE_MERGE_SIDE_UNSPECIFIED:I = 0x1d

.field public static final TYPE_NAME_CHANGE:I = 0x2

.field public static final TYPE_OFF_RAMP_NORMAL_LEFT:I = 0x17

.field public static final TYPE_OFF_RAMP_NORMAL_RIGHT:I = 0x18

.field public static final TYPE_OFF_RAMP_SLIGHT_LEFT:I = 0x15

.field public static final TYPE_OFF_RAMP_SLIGHT_RIGHT:I = 0x16

.field public static final TYPE_ON_RAMP_NORMAL_LEFT:I = 0xf

.field public static final TYPE_ON_RAMP_NORMAL_RIGHT:I = 0x10

.field public static final TYPE_ON_RAMP_SHARP_LEFT:I = 0x11

.field public static final TYPE_ON_RAMP_SHARP_RIGHT:I = 0x12

.field public static final TYPE_ON_RAMP_SLIGHT_LEFT:I = 0xd

.field public static final TYPE_ON_RAMP_SLIGHT_RIGHT:I = 0xe

.field public static final TYPE_ON_RAMP_U_TURN_LEFT:I = 0x13

.field public static final TYPE_ON_RAMP_U_TURN_RIGHT:I = 0x14

.field public static final TYPE_ROUNDABOUT_ENTER_AND_EXIT_CCW:I = 0x22

.field public static final TYPE_ROUNDABOUT_ENTER_AND_EXIT_CCW_WITH_ANGLE:I = 0x23

.field public static final TYPE_ROUNDABOUT_ENTER_AND_EXIT_CW:I = 0x20

.field public static final TYPE_ROUNDABOUT_ENTER_AND_EXIT_CW_WITH_ANGLE:I = 0x21

.field public static final TYPE_ROUNDABOUT_ENTER_CCW:I = 0x2d

.field public static final TYPE_ROUNDABOUT_ENTER_CW:I = 0x2b

.field public static final TYPE_ROUNDABOUT_EXIT_CCW:I = 0x2e

.field public static final TYPE_ROUNDABOUT_EXIT_CW:I = 0x2c

.field public static final TYPE_STRAIGHT:I = 0x24

.field public static final TYPE_TURN_NORMAL_LEFT:I = 0x7

.field public static final TYPE_TURN_NORMAL_RIGHT:I = 0x8

.field public static final TYPE_TURN_SHARP_LEFT:I = 0x9

.field public static final TYPE_TURN_SHARP_RIGHT:I = 0xa

.field public static final TYPE_TURN_SLIGHT_LEFT:I = 0x5

.field public static final TYPE_TURN_SLIGHT_RIGHT:I = 0x6

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_U_TURN_LEFT:I = 0xb

.field public static final TYPE_U_TURN_RIGHT:I = 0xc


# instance fields
.field private final mIcon:Landroidx/car/app/model/CarIcon;

.field private final mRoundaboutExitAngle:I

.field private final mRoundaboutExitNumber:I

.field private final mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mType:I

    .line 547
    iput v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitNumber:I

    .line 548
    iput v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitAngle:I

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 550
    return-void
.end method

.method constructor <init>(IIILandroidx/car/app/model/CarIcon;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "roundaboutExitNumber"    # I
    .param p3, "roundaboutExitAngle"    # I
    .param p4, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput p1, p0, Landroidx/car/app/navigation/model/Maneuver;->mType:I

    .line 538
    iput p2, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitNumber:I

    .line 539
    iput p3, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitAngle:I

    .line 540
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-virtual {v0, p4}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 541
    iput-object p4, p0, Landroidx/car/app/navigation/model/Maneuver;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 542
    return-void
.end method

.method static isExitNumberRequired(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 569
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isValidType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 553
    if-ltz p0, :cond_0

    const/16 v0, 0x32

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isValidTypeWithExitAngle(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 564
    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isValidTypeWithExitNumber(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 557
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 521
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 522
    return v0

    .line 524
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/Maneuver;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 525
    return v2

    .line 528
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/Maneuver;

    .line 529
    .local v1, "otherManeuver":Landroidx/car/app/navigation/model/Maneuver;
    iget v3, p0, Landroidx/car/app/navigation/model/Maneuver;->mType:I

    iget v4, v1, Landroidx/car/app/navigation/model/Maneuver;->mType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitNumber:I

    iget v4, v1, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitNumber:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitAngle:I

    iget v4, v1, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitAngle:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Maneuver;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/navigation/model/Maneuver;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 532
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 529
    :goto_0
    return v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 497
    iget-object v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getRoundaboutExitAngle()I
    .locals 1

    .line 486
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitAngle:I

    return v0
.end method

.method public getRoundaboutExitNumber()I
    .locals 1

    .line 466
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitNumber:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 450
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 516
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitAngle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroidx/car/app/navigation/model/Maneuver;->mIcon:Landroidx/car/app/model/CarIcon;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/navigation/model/Maneuver;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exit #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exit angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/navigation/model/Maneuver;->mRoundaboutExitAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Maneuver;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
