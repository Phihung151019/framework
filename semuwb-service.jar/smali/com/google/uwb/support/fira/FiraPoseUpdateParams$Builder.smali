.class public final Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;
.super Ljava/lang/Object;
.source "FiraPoseUpdateParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraPoseUpdateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mPoseInfo:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraPoseUpdateParams;
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;->mPoseInfo:[D

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    .line 109
    .local v3, "k":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    .end local v3    # "k":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .restart local v3    # "k":D
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set pose; non-real numbers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    .end local v3    # "k":D
    :cond_1
    new-instance v0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;

    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;->mPoseInfo:[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;-><init>([DLcom/google/uwb/support/fira/FiraPoseUpdateParams$1;)V

    return-object v0
.end method

.method public setPose([D)Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;
    .locals 2
    .param p1, "poseInfo"    # [D

    .line 95
    array-length v0, p1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pose must be 7 elements (vector3 xyz and quaternion xyzw) or 16 elements (4x4 transformation matrix)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;->mPoseInfo:[D

    .line 102
    return-object p0
.end method

.method public setPose([F)Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;
    .locals 1
    .param p1, "poseInfo"    # [F

    .line 85
    invoke-static {p1}, Lcom/google/common/primitives/Floats;->asList([F)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;->setPose([D)Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;

    move-result-object v0

    return-object v0
.end method
