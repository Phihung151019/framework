.class public final Landroidx/car/app/model/constraints/RowListConstraints;
.super Ljava/lang/Object;
.source "RowListConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/constraints/RowListConstraints$Builder;
    }
.end annotation


# static fields
.field public static final MAP_ROW_LIST_CONSTRAINTS_ALLOW_SELECTABLE:Landroidx/car/app/model/constraints/RowListConstraints;

.field public static final ROW_LIST_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowListConstraints;

.field public static final ROW_LIST_CONSTRAINTS_FULL_LIST:Landroidx/car/app/model/constraints/RowListConstraints;

.field public static final ROW_LIST_CONSTRAINTS_PANE:Landroidx/car/app/model/constraints/RowListConstraints;

.field public static final ROW_LIST_CONSTRAINTS_ROUTE_PREVIEW:Landroidx/car/app/model/constraints/RowListConstraints;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROW_LIST_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowListConstraints;


# instance fields
.field private final mAllowSelectableLists:Z

.field private final mMaxActions:I

.field private final mRowConstraints:Landroidx/car/app/model/constraints/RowConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;-><init>()V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    sget-object v2, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 50
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setRowConstraints(Landroidx/car/app/model/constraints/RowConstraints;)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setAllowSelectableLists(Z)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowListConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowListConstraints;

    .line 56
    new-instance v0, Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    sget-object v2, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-direct {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/RowListConstraints;)V

    .line 58
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setMaxActions(I)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    sget-object v2, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_PANE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 59
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setRowConstraints(Landroidx/car/app/model/constraints/RowConstraints;)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setAllowSelectableLists(Z)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowListConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_PANE:Landroidx/car/app/model/constraints/RowListConstraints;

    .line 65
    new-instance v0, Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/RowListConstraints;)V

    sget-object v1, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 67
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setRowConstraints(Landroidx/car/app/model/constraints/RowConstraints;)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowListConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowListConstraints;

    .line 82
    new-instance v0, Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/RowListConstraints;)V

    sget-object v1, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 84
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setRowConstraints(Landroidx/car/app/model/constraints/RowConstraints;)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setAllowSelectableLists(Z)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowListConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_ROUTE_PREVIEW:Landroidx/car/app/model/constraints/RowListConstraints;

    .line 90
    new-instance v0, Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    sget-object v2, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-direct {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/RowListConstraints;)V

    sget-object v2, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowConstraints;

    .line 92
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setRowConstraints(Landroidx/car/app/model/constraints/RowConstraints;)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setAllowSelectableLists(Z)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowListConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->MAP_ROW_LIST_CONSTRAINTS_ALLOW_SELECTABLE:Landroidx/car/app/model/constraints/RowListConstraints;

    .line 99
    new-instance v0, Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    sget-object v2, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_CONSERVATIVE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-direct {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;-><init>(Landroidx/car/app/model/constraints/RowListConstraints;)V

    sget-object v2, Landroidx/car/app/model/constraints/RowConstraints;->ROW_CONSTRAINTS_FULL_LIST:Landroidx/car/app/model/constraints/RowConstraints;

    .line 101
    invoke-virtual {v0, v2}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setRowConstraints(Landroidx/car/app/model/constraints/RowConstraints;)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->setAllowSelectableLists(Z)Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->build()Landroidx/car/app/model/constraints/RowListConstraints;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_FULL_LIST:Landroidx/car/app/model/constraints/RowListConstraints;

    .line 99
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/constraints/RowListConstraints$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/constraints/RowListConstraints$Builder;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget v0, p1, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->mMaxActions:I

    iput v0, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mMaxActions:I

    .line 194
    iget-object v0, p1, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->mRowConstraints:Landroidx/car/app/model/constraints/RowConstraints;

    iput-object v0, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mRowConstraints:Landroidx/car/app/model/constraints/RowConstraints;

    .line 195
    iget-boolean v0, p1, Landroidx/car/app/model/constraints/RowListConstraints$Builder;->mAllowSelectableLists:Z

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mAllowSelectableLists:Z

    .line 196
    return-void
.end method

.method private validateRows(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/car/app/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<+Landroidx/car/app/model/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Item;

    .line 179
    .local v1, "rowObj":Landroidx/car/app/model/Item;
    instance-of v2, v1, Landroidx/car/app/model/Row;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mRowConstraints:Landroidx/car/app/model/constraints/RowConstraints;

    move-object v3, v1

    check-cast v3, Landroidx/car/app/model/Row;

    invoke-virtual {v2, v3}, Landroidx/car/app/model/constraints/RowConstraints;->validateOrThrow(Landroidx/car/app/model/Row;)V

    goto :goto_1

    .line 181
    :cond_0
    instance-of v2, v1, Landroidx/car/app/messaging/model/ConversationItem;

    if-eqz v2, :cond_1

    .line 189
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    :goto_1
    goto :goto_0

    .line 184
    .restart local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 184
    const-string v3, "Unsupported item type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxActions()I
    .locals 1

    .line 111
    iget v0, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mMaxActions:I

    return v0
.end method

.method public getRowConstraints()Landroidx/car/app/model/constraints/RowConstraints;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mRowConstraints:Landroidx/car/app/model/constraints/RowConstraints;

    return-object v0
.end method

.method public isAllowSelectableLists()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mAllowSelectableLists:Z

    return v0
.end method

.method public validateOrThrow(Landroidx/car/app/model/ItemList;)V
    .locals 2
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;

    .line 132
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getOnSelectedDelegate()Landroidx/car/app/model/OnSelectedDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mAllowSelectableLists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Selectable lists are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/app/model/constraints/RowListConstraints;->validateRows(Ljava/util/List;)V

    .line 137
    return-void
.end method

.method public validateOrThrow(Landroidx/car/app/model/Pane;)V
    .locals 4
    .param p1, "pane"    # Landroidx/car/app/model/Pane;

    .line 167
    invoke-virtual {p1}, Landroidx/car/app/model/Pane;->getActions()Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Action;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mMaxActions:I

    if-gt v1, v2, :cond_0

    .line 174
    invoke-virtual {p1}, Landroidx/car/app/model/Pane;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/car/app/model/constraints/RowListConstraints;->validateRows(Ljava/util/List;)V

    .line 175
    return-void

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of actions on the pane exceeded the supported max of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mMaxActions:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public validateOrThrow(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/SectionedItemList;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/SectionedItemList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "combinedLists":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/model/SectionedItemList;

    .line 150
    .local v2, "section":Landroidx/car/app/model/SectionedItemList;
    invoke-virtual {v2}, Landroidx/car/app/model/SectionedItemList;->getItemList()Landroidx/car/app/model/ItemList;

    move-result-object v3

    .line 151
    .local v3, "sectionList":Landroidx/car/app/model/ItemList;
    invoke-virtual {v3}, Landroidx/car/app/model/ItemList;->getOnSelectedDelegate()Landroidx/car/app/model/OnSelectedDelegate;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroidx/car/app/model/constraints/RowListConstraints;->mAllowSelectableLists:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Selectable lists are not allowed"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    .end local v2    # "section":Landroidx/car/app/model/SectionedItemList;
    .end local v3    # "sectionList":Landroidx/car/app/model/ItemList;
    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0, v0}, Landroidx/car/app/model/constraints/RowListConstraints;->validateRows(Ljava/util/List;)V

    .line 159
    return-void
.end method
