.class public final Landroidx/car/app/navigation/model/Maneuver$Builder;
.super Ljava/lang/Object;
.source "Maneuver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/Maneuver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIcon:Landroidx/car/app/model/CarIcon;

.field private mIsRoundaboutExitAngleSet:Z

.field private mIsRoundaboutExitNumberSet:Z

.field private mRoundaboutExitAngle:I

.field private mRoundaboutExitNumber:I

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    invoke-static {p1}, Landroidx/car/app/navigation/model/Maneuver;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iput p1, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mType:I

    .line 600
    return-void

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maneuver must have a valid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/Maneuver;
    .locals 5

    .line 694
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mType:I

    invoke-static {v0}, Landroidx/car/app/navigation/model/Maneuver;->isExitNumberRequired(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mIsRoundaboutExitNumberSet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maneuver missing roundaboutExitNumber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mType:I

    invoke-static {v0}, Landroidx/car/app/navigation/model/Maneuver;->isValidTypeWithExitAngle(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mIsRoundaboutExitAngleSet:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 698
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maneuver missing roundaboutExitAngle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_3
    :goto_1
    new-instance v0, Landroidx/car/app/navigation/model/Maneuver;

    iget v1, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mType:I

    iget v2, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mRoundaboutExitNumber:I

    iget v3, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mRoundaboutExitAngle:I

    iget-object v4, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/car/app/navigation/model/Maneuver;-><init>(IIILandroidx/car/app/model/CarIcon;)V

    return-object v0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/navigation/model/Maneuver$Builder;
    .locals 1
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 619
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 620
    return-object p0
.end method

.method public setRoundaboutExitAngle(I)Landroidx/car/app/navigation/model/Maneuver$Builder;
    .locals 2
    .param p1, "roundaboutExitAngle"    # I

    .line 674
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mType:I

    invoke-static {v0}, Landroidx/car/app/navigation/model/Maneuver;->isValidTypeWithExitAngle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x168

    if-gt p1, v1, :cond_0

    .line 680
    iput-boolean v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mIsRoundaboutExitAngleSet:Z

    .line 681
    iput p1, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mRoundaboutExitAngle:I

    .line 682
    return-object p0

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maneuver must include a valid exit angle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maneuver does not include roundaboutExitAngle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRoundaboutExitNumber(I)Landroidx/car/app/navigation/model/Maneuver$Builder;
    .locals 2
    .param p1, "roundaboutExitNumber"    # I

    .line 644
    iget v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mType:I

    invoke-static {v0}, Landroidx/car/app/navigation/model/Maneuver;->isValidTypeWithExitNumber(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 651
    iput-boolean v0, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mIsRoundaboutExitNumberSet:Z

    .line 652
    iput p1, p0, Landroidx/car/app/navigation/model/Maneuver$Builder;->mRoundaboutExitNumber:I

    .line 653
    return-object p0

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maneuver must include a valid exit number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maneuver does not include roundaboutExitNumber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
