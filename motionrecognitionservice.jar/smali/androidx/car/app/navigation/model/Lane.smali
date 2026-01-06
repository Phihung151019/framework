.class public final Landroidx/car/app/navigation/model/Lane;
.super Ljava/lang/Object;
.source "Lane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/Lane$Builder;
    }
.end annotation


# instance fields
.field private final mDirections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/LaneDirection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    .line 84
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/LaneDirection;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "directions":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/navigation/model/LaneDirection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 66
    if-ne p0, p1, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    instance-of v0, p1, Landroidx/car/app/navigation/model/Lane;

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/navigation/model/Lane;

    .line 74
    .local v0, "otherLane":Landroidx/car/app/navigation/model/Lane;
    iget-object v1, p0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    iget-object v2, v0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDirections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/LaneDirection;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[direction count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/navigation/model/Lane;->mDirections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
