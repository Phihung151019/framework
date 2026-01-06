.class public final Landroidx/car/app/model/Pane;
.super Ljava/lang/Object;
.source "Pane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Pane$Builder;
    }
.end annotation


# instance fields
.field private final mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mImage:Landroidx/car/app/model/CarIcon;

.field private final mIsLoading:Z

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Pane;->mActionList:Ljava/util/List;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/Pane;->mIsLoading:Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Pane;->mImage:Landroidx/car/app/model/CarIcon;

    .line 124
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Pane$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Pane$Builder;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iget-object v0, p1, Landroidx/car/app/model/Pane$Builder;->mRows:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    .line 113
    iget-object v0, p1, Landroidx/car/app/model/Pane$Builder;->mActionList:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Pane;->mActionList:Ljava/util/List;

    .line 114
    iget-object v0, p1, Landroidx/car/app/model/Pane$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/Pane;->mImage:Landroidx/car/app/model/CarIcon;

    .line 115
    iget-boolean v0, p1, Landroidx/car/app/model/Pane$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/model/Pane;->mIsLoading:Z

    .line 116
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Pane;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 101
    return v2

    .line 103
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Pane;

    .line 105
    .local v1, "otherPane":Landroidx/car/app/model/Pane;
    iget-boolean v3, p0, Landroidx/car/app/model/Pane;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/model/Pane;->mIsLoading:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Pane;->mActionList:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/Pane;->mActionList:Ljava/util/List;

    .line 106
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    .line 107
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Pane;->mImage:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/model/Pane;->mImage:Landroidx/car/app/model/CarIcon;

    .line 108
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 105
    :goto_0
    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroidx/car/app/model/Pane;->mActionList:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Landroidx/car/app/model/CarIcon;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/car/app/model/Pane;->mImage:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Row;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 92
    iget-object v0, p0, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    iget-object v1, p0, Landroidx/car/app/model/Pane;->mActionList:Ljava/util/List;

    iget-boolean v2, p0, Landroidx/car/app/model/Pane;->mIsLoading:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroidx/car/app/model/Pane;->mImage:Landroidx/car/app/model/CarIcon;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Landroidx/car/app/model/Pane;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ rows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget-object v1, p0, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/model/Pane;->mRows:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Pane;->mActionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method
