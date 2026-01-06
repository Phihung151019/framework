.class public final Landroidx/car/app/model/Header;
.super Ljava/lang/Object;
.source "Header.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Header$Builder;
    }
.end annotation


# instance fields
.field private final mEndHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartHeaderAction:Landroidx/car/app/model/Action;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Header;->mTitle:Landroidx/car/app/model/CarText;

    .line 60
    iput-object v0, p0, Landroidx/car/app/model/Header;->mStartHeaderAction:Landroidx/car/app/model/Action;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/Header;->mEndHeaderActions:Ljava/util/List;

    .line 62
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Header$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Header$Builder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Landroidx/car/app/model/Header$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Header;->mTitle:Landroidx/car/app/model/CarText;

    .line 53
    iget-object v0, p1, Landroidx/car/app/model/Header$Builder;->mStartHeaderAction:Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/model/Header;->mStartHeaderAction:Landroidx/car/app/model/Action;

    .line 54
    iget-object v0, p1, Landroidx/car/app/model/Header$Builder;->mEndHeaderActions:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Header;->mEndHeaderActions:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 110
    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Header;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 113
    return v2

    .line 115
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Header;

    .line 117
    .local v1, "otherComponent":Landroidx/car/app/model/Header;
    iget-object v3, p0, Landroidx/car/app/model/Header;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/Header;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Header;->mEndHeaderActions:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/Header;->mEndHeaderActions:Ljava/util/List;

    .line 118
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/Header;->mStartHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, v1, Landroidx/car/app/model/Header;->mStartHeaderAction:Landroidx/car/app/model/Action;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 117
    :goto_0
    return v0
.end method

.method public getEndHeaderActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/car/app/model/Header;->mEndHeaderActions:Ljava/util/List;

    return-object v0
.end method

.method public getStartHeaderAction()Landroidx/car/app/model/Action;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/car/app/model/Header;->mStartHeaderAction:Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/car/app/model/Header;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 104
    iget-object v0, p0, Landroidx/car/app/model/Header;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v1, p0, Landroidx/car/app/model/Header;->mEndHeaderActions:Ljava/util/List;

    iget-object v2, p0, Landroidx/car/app/model/Header;->mStartHeaderAction:Landroidx/car/app/model/Action;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Header;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
