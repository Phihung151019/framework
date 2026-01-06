.class public final Landroidx/car/app/model/ActionStrip;
.super Ljava/lang/Object;
.source "ActionStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/ActionStrip$Builder;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    .line 112
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/ActionStrip$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/ActionStrip$Builder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget-object v0, p1, Landroidx/car/app/model/ActionStrip$Builder;->mActions:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    .line 107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 94
    if-ne p0, p1, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/ActionStrip;

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/ActionStrip;

    .line 102
    .local v0, "otherActionStrip":Landroidx/car/app/model/ActionStrip;
    iget-object v1, p0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    iget-object v2, v0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
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
    iget-object v0, p0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActionOfType(I)Landroidx/car/app/model/Action;
    .locals 4
    .param p1, "actionType"    # I

    .line 69
    iget-object v0, p0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Landroidx/car/app/model/Action;

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v1

    check-cast v2, Landroidx/car/app/model/Action;

    .line 72
    .local v2, "action":Landroidx/car/app/model/Action;
    invoke-virtual {v2}, Landroidx/car/app/model/Action;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 73
    return-object v2

    .line 76
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "action":Landroidx/car/app/model/Action;
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[action count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/ActionStrip;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
