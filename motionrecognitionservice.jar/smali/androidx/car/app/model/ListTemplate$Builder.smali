.class public final Landroidx/car/app/model/ListTemplate$Builder;
.super Ljava/lang/Object;
.source "ListTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/ListTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionStrip:Landroidx/car/app/model/ActionStrip;

.field final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field mHasSelectableList:Z

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mIsLoading:Z

.field final mSectionedLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/SectionedItemList;",
            ">;"
        }
    .end annotation
.end field

.field mSingleList:Landroidx/car/app/model/ItemList;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mActions:Ljava/util/List;

    .line 442
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/ListTemplate;)V
    .locals 2
    .param p1, "listTemplate"    # Landroidx/car/app/model/ListTemplate;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-virtual {p1}, Landroidx/car/app/model/ListTemplate;->isLoading()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mIsLoading:Z

    .line 448
    invoke-virtual {p1}, Landroidx/car/app/model/ListTemplate;->getHeaderAction()Landroidx/car/app/model/Action;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 449
    invoke-virtual {p1}, Landroidx/car/app/model/ListTemplate;->getTitle()Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 450
    invoke-virtual {p1}, Landroidx/car/app/model/ListTemplate;->getSingleList()Landroidx/car/app/model/ItemList;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/car/app/model/ListTemplate;->getSectionedLists()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    .line 455
    invoke-virtual {p1}, Landroidx/car/app/model/ListTemplate;->getActionStrip()Landroidx/car/app/model/ActionStrip;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/car/app/model/ListTemplate;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mActions:Ljava/util/List;

    .line 457
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/ListTemplate$Builder;
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    .local v0, "mActionsCopy":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Action;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v1, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_FAB:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 395
    iget-object v1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-object p0
.end method

.method public addSectionedList(Landroidx/car/app/model/SectionedItemList;)Landroidx/car/app/model/ListTemplate$Builder;
    .locals 4
    .param p1, "list"    # Landroidx/car/app/model/SectionedItemList;

    .line 321
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/SectionedItemList;

    invoke-virtual {v0}, Landroidx/car/app/model/SectionedItemList;->getHeader()Landroidx/car/app/model/CarText;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    invoke-virtual {p1}, Landroidx/car/app/model/SectionedItemList;->getItemList()Landroidx/car/app/model/ItemList;

    move-result-object v0

    .line 326
    .local v0, "itemList":Landroidx/car/app/model/ItemList;
    invoke-virtual {v0}, Landroidx/car/app/model/ItemList;->getOnSelectedDelegate()Landroidx/car/app/model/OnSelectedDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, "isSelectableList":Z
    :goto_0
    iget-boolean v2, p0, Landroidx/car/app/model/ListTemplate$Builder;->mHasSelectableList:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    :cond_1
    iput-boolean v1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mHasSelectableList:Z

    .line 333
    invoke-virtual {v0}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 337
    invoke-virtual {v0}, Landroidx/car/app/model/ItemList;->getOnItemVisibilityChangedDelegate()Landroidx/car/app/model/OnItemVisibilityChangedDelegate;

    move-result-object v2

    if-nez v2, :cond_2

    .line 342
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    .line 343
    iget-object v2, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-object p0

    .line 338
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "OnItemVisibilityChangedListener in the list is disallowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "List cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A selectable list cannot be added alongside any other lists"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    .end local v0    # "itemList":Landroidx/car/app/model/ItemList;
    .end local v1    # "isSelectableList":Z
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroidx/car/app/model/ListTemplate;
    .locals 3

    .line 421
    iget-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 422
    .local v0, "hasList":Z
    :goto_1
    iget-boolean v1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mIsLoading:Z

    if-eq v1, v0, :cond_4

    .line 427
    if-eqz v0, :cond_3

    .line 428
    iget-object v1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 429
    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_FULL_LIST:Landroidx/car/app/model/constraints/RowListConstraints;

    iget-object v2, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Ljava/util/List;)V

    goto :goto_2

    .line 430
    :cond_2
    iget-object v1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    if-eqz v1, :cond_3

    .line 431
    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_FULL_LIST:Landroidx/car/app/model/constraints/RowListConstraints;

    iget-object v2, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    invoke-virtual {v1, v2}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Landroidx/car/app/model/ItemList;)V

    .line 435
    :cond_3
    :goto_2
    new-instance v1, Landroidx/car/app/model/ListTemplate;

    invoke-direct {v1, p0}, Landroidx/car/app/model/ListTemplate;-><init>(Landroidx/car/app/model/ListTemplate$Builder;)V

    return-object v1

    .line 423
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Template is in a loading state but lists are added, or vice versa"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearSectionedLists()Landroidx/car/app/model/ListTemplate$Builder;
    .locals 1

    .line 354
    iget-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    return-object p0
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/model/ListTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 375
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 376
    iput-object p1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 377
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/ListTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 261
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 263
    iput-object p1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 264
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/ListTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 240
    iput-boolean p1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mIsLoading:Z

    .line 241
    return-object p0
.end method

.method public setSingleList(Landroidx/car/app/model/ItemList;)Landroidx/car/app/model/ListTemplate$Builder;
    .locals 1
    .param p1, "list"    # Landroidx/car/app/model/ItemList;

    .line 295
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ItemList;

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    .line 296
    iget-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mSectionedLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mHasSelectableList:Z

    .line 298
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/ListTemplate$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 280
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/ListTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 281
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/ListTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 282
    return-object p0
.end method
