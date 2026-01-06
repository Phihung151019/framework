.class public final Landroidx/car/app/model/Toggle;
.super Ljava/lang/Object;
.source "Toggle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Toggle$Builder;,
        Landroidx/car/app/model/Toggle$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final mIsChecked:Z

.field private final mIsEnabled:Z

.field private final mOnCheckedChangeDelegate:Landroidx/car/app/model/OnCheckedChangeDelegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Toggle;->mOnCheckedChangeDelegate:Landroidx/car/app/model/OnCheckedChangeDelegate;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/Toggle;->mIsChecked:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/Toggle;->mIsEnabled:Z

    .line 112
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Toggle$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Toggle$Builder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget-boolean v0, p1, Landroidx/car/app/model/Toggle$Builder;->mIsChecked:Z

    iput-boolean v0, p0, Landroidx/car/app/model/Toggle;->mIsChecked:Z

    .line 103
    iget-boolean v0, p1, Landroidx/car/app/model/Toggle$Builder;->mIsEnabled:Z

    iput-boolean v0, p0, Landroidx/car/app/model/Toggle;->mIsEnabled:Z

    .line 104
    iget-object v0, p1, Landroidx/car/app/model/Toggle$Builder;->mOnCheckedChangeDelegate:Landroidx/car/app/model/OnCheckedChangeDelegate;

    iput-object v0, p0, Landroidx/car/app/model/Toggle;->mOnCheckedChangeDelegate:Landroidx/car/app/model/OnCheckedChangeDelegate;

    .line 105
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
    instance-of v1, p1, Landroidx/car/app/model/Toggle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 93
    return v2

    .line 95
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Toggle;

    .line 98
    .local v1, "otherToggle":Landroidx/car/app/model/Toggle;
    iget-boolean v3, p0, Landroidx/car/app/model/Toggle;->mIsChecked:Z

    iget-boolean v4, v1, Landroidx/car/app/model/Toggle;->mIsChecked:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/car/app/model/Toggle;->mIsEnabled:Z

    iget-boolean v4, v1, Landroidx/car/app/model/Toggle;->mIsEnabled:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getOnCheckedChangeDelegate()Landroidx/car/app/model/OnCheckedChangeDelegate;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/car/app/model/Toggle;->mOnCheckedChangeDelegate:Landroidx/car/app/model/OnCheckedChangeDelegate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/OnCheckedChangeDelegate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 84
    iget-boolean v0, p0, Landroidx/car/app/model/Toggle;->mIsChecked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/Toggle;->mIsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Landroidx/car/app/model/Toggle;->mIsChecked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 64
    iget-boolean v0, p0, Landroidx/car/app/model/Toggle;->mIsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ isChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/Toggle;->mIsChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/Toggle;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
