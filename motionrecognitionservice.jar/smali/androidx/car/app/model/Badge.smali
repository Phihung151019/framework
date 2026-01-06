.class public Landroidx/car/app/model/Badge;
.super Ljava/lang/Object;
.source "Badge.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Badge$Builder;
    }
.end annotation


# instance fields
.field private final mBackgroundColor:Landroidx/car/app/model/CarColor;

.field private final mHasDot:Z

.field private final mIcon:Landroidx/car/app/model/CarIcon;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/Badge;->mHasDot:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Badge;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 112
    iput-object v0, p0, Landroidx/car/app/model/Badge;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 113
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Badge$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Badge$Builder;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-boolean v0, p1, Landroidx/car/app/model/Badge$Builder;->mHasDot:Z

    iput-boolean v0, p0, Landroidx/car/app/model/Badge;->mHasDot:Z

    .line 104
    iget-object v0, p1, Landroidx/car/app/model/Badge$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/model/Badge;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 105
    iget-object v0, p1, Landroidx/car/app/model/Badge$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/Badge;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Badge;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 93
    return v2

    .line 95
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Badge;

    .line 97
    .local v1, "otherBadge":Landroidx/car/app/model/Badge;
    iget-boolean v3, p0, Landroidx/car/app/model/Badge;->mHasDot:Z

    iget-boolean v4, v1, Landroidx/car/app/model/Badge;->mHasDot:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Badge;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    iget-object v4, v1, Landroidx/car/app/model/Badge;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 98
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Badge;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/model/Badge;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 99
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 97
    :goto_0
    return v0
.end method

.method public getBackgroundColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/car/app/model/Badge;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/car/app/model/Badge;->mIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public hasDot()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Landroidx/car/app/model/Badge;->mHasDot:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget-boolean v0, p0, Landroidx/car/app/model/Badge;->mHasDot:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Badge;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    iget-object v2, p0, Landroidx/car/app/model/Badge;->mIcon:Landroidx/car/app/model/CarIcon;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hasDot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/Badge;->mHasDot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Badge;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Badge;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
