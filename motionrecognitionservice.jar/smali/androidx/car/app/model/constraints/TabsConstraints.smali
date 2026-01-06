.class public Landroidx/car/app/model/constraints/TabsConstraints;
.super Ljava/lang/Object;
.source "TabsConstraints.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/constraints/TabsConstraints$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/car/app/model/constraints/TabsConstraints;

.field private static final MAXIMUM_ALLOWED_TABS:I = 0x4

.field private static final MINIMUM_REQUIRED_TABS:I = 0x2


# instance fields
.field private final mMaxTabs:I

.field private final mMinTabs:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroidx/car/app/model/constraints/TabsConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/TabsConstraints$Builder;-><init>()V

    .line 41
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->setMaxTabs(I)Landroidx/car/app/model/constraints/TabsConstraints$Builder;

    move-result-object v0

    .line 42
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->setMinTabs(I)Landroidx/car/app/model/constraints/TabsConstraints$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->build()Landroidx/car/app/model/constraints/TabsConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/TabsConstraints;->DEFAULT:Landroidx/car/app/model/constraints/TabsConstraints;

    .line 39
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/constraints/TabsConstraints$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/constraints/TabsConstraints$Builder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget v0, p1, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->mMaxTabs:I

    iput v0, p0, Landroidx/car/app/model/constraints/TabsConstraints;->mMaxTabs:I

    .line 88
    iget v0, p1, Landroidx/car/app/model/constraints/TabsConstraints$Builder;->mMinTabs:I

    iput v0, p0, Landroidx/car/app/model/constraints/TabsConstraints;->mMinTabs:I

    .line 89
    return-void
.end method


# virtual methods
.method public validateOrThrow(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "activeTabContentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Tab;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Tab;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/car/app/model/constraints/TabsConstraints;->mMinTabs:I

    if-lt v0, v1, :cond_5

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/car/app/model/constraints/TabsConstraints;->mMaxTabs:I

    if-gt v0, v1, :cond_4

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "hasTabWithActiveTabContentId":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 67
    .local v1, "contentIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/app/model/Tab;

    .line 68
    .local v3, "tab":Landroidx/car/app/model/Tab;
    invoke-virtual {v3}, Landroidx/car/app/model/Tab;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :cond_0
    invoke-virtual {v3}, Landroidx/car/app/model/Tab;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    .end local v3    # "tab":Landroidx/car/app/model/Tab;
    goto :goto_0

    .line 72
    .restart local v3    # "tab":Landroidx/car/app/model/Tab;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found duplicate tab ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    invoke-virtual {v3}, Landroidx/car/app/model/Tab;->getContentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Each tab must have a unique ID."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v3    # "tab":Landroidx/car/app/model/Tab;
    :cond_2
    if-eqz v0, :cond_3

    .line 84
    return-void

    .line 80
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "There is no tab with content ID matching the active tab content ID set on the template"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v0    # "hasTabWithActiveTabContentId":Z
    .end local v1    # "contentIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There cannot be more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/car/app/model/constraints/TabsConstraints;->mMaxTabs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tabs added, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/car/app/model/constraints/TabsConstraints;->mMinTabs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tab(s) added, but only found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
