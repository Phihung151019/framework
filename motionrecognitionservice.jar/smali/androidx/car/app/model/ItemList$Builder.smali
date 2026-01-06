.class public final Landroidx/car/app/model/ItemList$Builder;
.super Ljava/lang/Object;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/ItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field mNoItemsMessage:Landroidx/car/app/model/CarText;

.field mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

.field mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

.field mSelectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mItems:Ljava/util/List;

    .line 378
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/ItemList;)V
    .locals 2
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getSelectedIndex()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/ItemList$Builder;->mSelectedIndex:I

    .line 383
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getOnSelectedDelegate()Landroidx/car/app/model/OnSelectedDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    .line 384
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getOnItemVisibilityChangedDelegate()Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    .line 385
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getNoItemsMessage()Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mItems:Ljava/util/List;

    .line 389
    return-void
.end method


# virtual methods
.method public addItem(Landroidx/car/app/model/Item;)Landroidx/car/app/model/ItemList$Builder;
    .locals 2
    .param p1, "item"    # Landroidx/car/app/model/Item;

    .line 320
    iget-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mItems:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-object p0
.end method

.method public build()Landroidx/car/app/model/ItemList;
    .locals 4

    .line 343
    iget-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 345
    .local v0, "listSize":I
    if-eqz v0, :cond_3

    .line 347
    iget v1, p0, Landroidx/car/app/model/ItemList$Builder;->mSelectedIndex:I

    if-ge v1, v0, :cond_2

    .line 357
    iget-object v1, p0, Landroidx/car/app/model/ItemList$Builder;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/model/Item;

    .line 358
    .local v2, "item":Landroidx/car/app/model/Item;
    invoke-static {v2}, Landroidx/car/app/model/ItemList;->getOnClickDelegate(Landroidx/car/app/model/Item;)Landroidx/car/app/model/OnClickDelegate;

    move-result-object v3

    if-nez v3, :cond_1

    .line 365
    invoke-static {v2}, Landroidx/car/app/model/ItemList;->getToggle(Landroidx/car/app/model/Item;)Landroidx/car/app/model/Toggle;

    move-result-object v3

    if-nez v3, :cond_0

    .line 369
    .end local v2    # "item":Landroidx/car/app/model/Item;
    goto :goto_0

    .line 366
    .restart local v2    # "item":Landroidx/car/app/model/Item;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Items that belong to selectable lists can\'t have a toggle"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Items that belong to selectable lists can\'t have an onClickListener. Use the OnSelectedListener of the list instead"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    .end local v2    # "item":Landroidx/car/app/model/Item;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The selected item index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/car/app/model/ItemList$Builder;->mSelectedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is larger than the size of the list ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A selectable list cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    .end local v0    # "listSize":I
    :cond_4
    new-instance v0, Landroidx/car/app/model/ItemList;

    invoke-direct {v0, p0}, Landroidx/car/app/model/ItemList;-><init>(Landroidx/car/app/model/ItemList$Builder;)V

    return-object v0
.end method

.method public clearItems()Landroidx/car/app/model/ItemList$Builder;
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 329
    return-object p0
.end method

.method public setNoItemsMessage(Ljava/lang/CharSequence;)Landroidx/car/app/model/ItemList$Builder;
    .locals 1
    .param p1, "noItemsMessage"    # Ljava/lang/CharSequence;

    .line 309
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mNoItemsMessage:Landroidx/car/app/model/CarText;

    .line 310
    return-object p0
.end method

.method public setOnItemsVisibilityChangedListener(Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;)Landroidx/car/app/model/ItemList$Builder;
    .locals 1
    .param p1, "itemVisibilityChangedListener"    # Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;

    .line 250
    invoke-static {p1}, Landroidx/car/app/model/OnItemVisibilityChangedDelegateImpl;->create(Landroidx/car/app/model/ItemList$OnItemVisibilityChangedListener;)Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mOnItemVisibilityChangedDelegate:Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    .line 252
    return-object p0
.end method

.method public setOnSelectedListener(Landroidx/car/app/model/ItemList$OnSelectedListener;)Landroidx/car/app/model/ItemList$Builder;
    .locals 1
    .param p1, "onSelectedListener"    # Landroidx/car/app/model/ItemList$OnSelectedListener;

    .line 275
    invoke-static {p1}, Landroidx/car/app/model/OnSelectedDelegateImpl;->create(Landroidx/car/app/model/ItemList$OnSelectedListener;)Landroidx/car/app/model/OnSelectedDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ItemList$Builder;->mOnSelectedDelegate:Landroidx/car/app/model/OnSelectedDelegate;

    .line 276
    return-object p0
.end method

.method public setSelectedIndex(I)Landroidx/car/app/model/ItemList$Builder;
    .locals 2
    .param p1, "selectedIndex"    # I

    .line 289
    if-ltz p1, :cond_0

    .line 293
    iput p1, p0, Landroidx/car/app/model/ItemList$Builder;->mSelectedIndex:I

    .line 294
    return-object p0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The item index must be larger than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
