.class public final Landroidx/car/app/navigation/model/LaneDirection;
.super Ljava/lang/Object;
.source "LaneDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/LaneDirection$Shape;
    }
.end annotation


# static fields
.field public static final SHAPE_NORMAL_LEFT:I = 0x5

.field public static final SHAPE_NORMAL_RIGHT:I = 0x6

.field public static final SHAPE_SHARP_LEFT:I = 0x7

.field public static final SHAPE_SHARP_RIGHT:I = 0x8

.field public static final SHAPE_SLIGHT_LEFT:I = 0x3

.field public static final SHAPE_SLIGHT_RIGHT:I = 0x4

.field public static final SHAPE_STRAIGHT:I = 0x2

.field public static final SHAPE_UNKNOWN:I = 0x1

.field public static final SHAPE_U_TURN_LEFT:I = 0x9

.field public static final SHAPE_U_TURN_RIGHT:I = 0xa


# instance fields
.field private final mIsRecommended:Z

.field private final mShape:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/navigation/model/LaneDirection;->mShape:I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/navigation/model/LaneDirection;->mIsRecommended:Z

    .line 174
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0
    .param p1, "shape"    # I
    .param p2, "isRecommended"    # Z

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Landroidx/car/app/navigation/model/LaneDirection;->mShape:I

    .line 167
    iput-boolean p2, p0, Landroidx/car/app/navigation/model/LaneDirection;->mIsRecommended:Z

    .line 168
    return-void
.end method

.method public static create(IZ)Landroidx/car/app/navigation/model/LaneDirection;
    .locals 1
    .param p0, "shape"    # I
    .param p1, "isRecommended"    # Z

    .line 124
    new-instance v0, Landroidx/car/app/navigation/model/LaneDirection;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/navigation/model/LaneDirection;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/LaneDirection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 158
    return v2

    .line 161
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/LaneDirection;

    .line 162
    .local v1, "otherDirection":Landroidx/car/app/navigation/model/LaneDirection;
    iget v3, p0, Landroidx/car/app/navigation/model/LaneDirection;->mShape:I

    iget v4, v1, Landroidx/car/app/navigation/model/LaneDirection;->mShape:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/car/app/navigation/model/LaneDirection;->mIsRecommended:Z

    iget-boolean v4, v1, Landroidx/car/app/navigation/model/LaneDirection;->mIsRecommended:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getShape()I
    .locals 1

    .line 130
    iget v0, p0, Landroidx/car/app/navigation/model/LaneDirection;->mShape:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 149
    iget v0, p0, Landroidx/car/app/navigation/model/LaneDirection;->mShape:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/navigation/model/LaneDirection;->mIsRecommended:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRecommended()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Landroidx/car/app/navigation/model/LaneDirection;->mIsRecommended:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[shape: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/navigation/model/LaneDirection;->mShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRecommended: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/navigation/model/LaneDirection;->mIsRecommended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
