.class public final Landroidx/car/app/model/ItemList;
.super Ljava/lang/Object;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/ItemList$Builder;,
        Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;,
        Landroidx/car/app/model/ItemList$OnSelectedListener;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoItemsMessage:Landroidx/car/app/model/CarText;

.field private final mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

.field private final mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

.field private final mSelectedIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/ItemList;->mSelectedIndex:I

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    .line 193
    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    .line 194
    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    .line 195
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/ItemList$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/ItemList$Builder;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iget v0, p1, Landroidx/car/app/model/ItemList$Builder;->mSelectedIndex:I

    iput v0, p0, Landroidx/car/app/model/ItemList;->mSelectedIndex:I

    .line 182
    iget-object v0, p1, Landroidx/car/app/model/ItemList$Builder;->mItems:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    .line 183
    iget-object v0, p1, Landroidx/car/app/model/ItemList$Builder;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    .line 184
    iget-object v0, p1, Landroidx/car/app/model/ItemList$Builder;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    .line 185
    iget-object v0, p1, Landroidx/car/app/model/ItemList$Builder;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    iput-object v0, p0, Landroidx/car/app/model/ItemList;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    .line 186
    return-void
.end method

.method static getOnClickDelegate(Landroidx/car/app/model/Item;)Landroidx/car/app/model/OnClickDelegate;
    .locals 1
    .param p0, "item"    # Landroidx/car/app/model/Item;

    .line 208
    instance-of v0, p0, Landroidx/car/app/model/Row;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p0

    check-cast v0, Landroidx/car/app/model/Row;

    invoke-virtual {v0}, Landroidx/car/app/model/Row;->getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    instance-of v0, p0, Landroidx/car/app/model/GridItem;

    if-eqz v0, :cond_1

    .line 211
    move-object v0, p0

    check-cast v0, Landroidx/car/app/model/GridItem;

    invoke-virtual {v0}, Landroidx/car/app/model/GridItem;->getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getToggle(Landroidx/car/app/model/Item;)Landroidx/car/app/model/Toggle;
    .locals 1
    .param p0, "item"    # Landroidx/car/app/model/Item;

    .line 219
    instance-of v0, p0, Landroidx/car/app/model/Row;

    if-eqz v0, :cond_0

    .line 220
    move-object v0, p0

    check-cast v0, Landroidx/car/app/model/Row;

    invoke-virtual {v0}, Landroidx/car/app/model/Row;->getToggle()Landroidx/car/app/model/Toggle;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 162
    return v0

    .line 164
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/ItemList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 165
    return v2

    .line 167
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/ItemList;

    .line 170
    .local v1, "otherList":Landroidx/car/app/model/ItemList;
    iget v3, p0, Landroidx/car/app/model/ItemList;->mSelectedIndex:I

    iget v4, v1, Landroidx/car/app/model/ItemList;->mSelectedIndex:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    .line 171
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/model/ItemList;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 172
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/model/ItemList;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    if-nez v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v2

    .line 173
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 172
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/model/ItemList;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, v2

    .line 175
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/model/ItemList;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v2

    .line 176
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/model/ItemList;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/ItemList;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    .line 177
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    .line 170
    :goto_4
    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Item;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoItemsMessage()Landroidx/car/app/model/CarText;
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/car/app/model/ItemList;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getOnItemVisibilityChangedDelegate()Landroidx/car/app/model/OnItemVisibilityChangedDelegate;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/car/app/model/ItemList;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    return-object v0
.end method

.method public getOnSelectedDelegate()Landroidx/car/app/model/OnSelectedDelegate;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/car/app/model/ItemList;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 93
    iget v0, p0, Landroidx/car/app/model/ItemList;->mSelectedIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 151
    iget v0, p0, Landroidx/car/app/model/ItemList;->mSelectedIndex:I

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    iget-object v2, p0, Landroidx/car/app/model/ItemList;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 154
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v5, p0, Landroidx/car/app/model/ItemList;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 155
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Landroidx/car/app/model/ItemList;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 151
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBuilder()Landroidx/car/app/model/ItemList$Builder;
    .locals 1

    .line 203
    new-instance v0, Landroidx/car/app/model/ItemList$Builder;

    invoke-direct {v0, p0}, Landroidx/car/app/model/ItemList$Builder;-><init>(Landroidx/car/app/model/ItemList;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget-object v1, p0, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/model/ItemList;->mItems:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/ItemList;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method
