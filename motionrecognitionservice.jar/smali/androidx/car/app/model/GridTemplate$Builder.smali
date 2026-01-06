.class public final Landroidx/car/app/model/GridTemplate$Builder;
.super Ljava/lang/Object;
.source "GridTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/GridTemplate;
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

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mIsLoading:Z

.field mItemImageShape:I

.field mItemSize:I

.field mSingleList:Landroidx/car/app/model/ItemList;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate$Builder;->mActions:Ljava/util/List;

    .line 320
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/GridTemplate$Builder;->mItemSize:I

    .line 322
    iput v0, p0, Landroidx/car/app/model/GridTemplate$Builder;->mItemImageShape:I

    .line 507
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 424
    .local v0, "mActionsCopy":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Action;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v1, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_FAB:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 426
    iget-object v1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    return-object p0
.end method

.method public build()Landroidx/car/app/model/GridTemplate;
    .locals 4

    .line 487
    iget-object v0, p0, Landroidx/car/app/model/GridTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 488
    .local v0, "hasList":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mIsLoading:Z

    if-eq v1, v0, :cond_3

    .line 493
    iget-object v1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    invoke-virtual {v1}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/model/Item;

    .line 495
    .local v2, "gridItemObject":Landroidx/car/app/model/Item;
    instance-of v3, v2, Landroidx/car/app/model/GridItem;

    if-eqz v3, :cond_1

    .line 499
    .end local v2    # "gridItemObject":Landroidx/car/app/model/Item;
    goto :goto_1

    .line 496
    .restart local v2    # "gridItemObject":Landroidx/car/app/model/Item;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "All the items in grid template\'s item list must be grid items"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    .end local v2    # "gridItemObject":Landroidx/car/app/model/Item;
    :cond_2
    new-instance v1, Landroidx/car/app/model/GridTemplate;

    invoke-direct {v1, p0}, Landroidx/car/app/model/GridTemplate;-><init>(Landroidx/car/app/model/GridTemplate$Builder;)V

    return-object v1

    .line 489
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Template is in a loading state but lists are added, or vice versa"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 405
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 406
    iput-object p1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 407
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 355
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 356
    iput-object p1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 357
    return-object p0
.end method

.method public setItemImageShape(I)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 0
    .param p1, "itemImageShape"    # I
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation

    .line 462
    iput p1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mItemImageShape:I

    .line 463
    return-object p0
.end method

.method public setItemSize(I)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 0
    .param p1, "gridItemSize"    # I
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation

    .line 446
    iput p1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mItemSize:I

    .line 447
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 335
    iput-boolean p1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mIsLoading:Z

    .line 336
    return-object p0
.end method

.method public setSingleList(Landroidx/car/app/model/ItemList;)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 1
    .param p1, "list"    # Landroidx/car/app/model/ItemList;

    .line 385
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ItemList;

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    .line 386
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/GridTemplate$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 373
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 374
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/GridTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 375
    return-object p0
.end method
