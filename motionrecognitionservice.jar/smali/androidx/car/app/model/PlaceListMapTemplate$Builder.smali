.class public final Landroidx/car/app/model/PlaceListMapTemplate$Builder;
.super Ljava/lang/Object;
.source "PlaceListMapTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/PlaceListMapTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionStrip:Landroidx/car/app/model/ActionStrip;

.field mAnchor:Landroidx/car/app/model/Place;

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mIsLoading:Z

.field mItemList:Landroidx/car/app/model/ItemList;

.field mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation
.end field

.field mShowCurrentLocation:Z

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/PlaceListMapTemplate;
    .locals 3

    .line 444
    iget-object v0, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 445
    .local v0, "hasList":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mIsLoading:Z

    if-eq v1, v0, :cond_1

    .line 450
    new-instance v1, Landroidx/car/app/model/PlaceListMapTemplate;

    invoke-direct {v1, p0}, Landroidx/car/app/model/PlaceListMapTemplate;-><init>(Landroidx/car/app/model/PlaceListMapTemplate$Builder;)V

    return-object v1

    .line 446
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Template is in a loading state but a list is set, or vice versa"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 382
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_NAVIGATION:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 383
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 384
    iput-object p1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 385
    return-object p0
.end method

.method public setAnchor(Landroidx/car/app/model/Place;)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 1
    .param p1, "anchor"    # Landroidx/car/app/model/Place;

    .line 406
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Place;

    iput-object v0, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mAnchor:Landroidx/car/app/model/Place;

    .line 407
    return-object p0
.end method

.method public setCurrentLocationEnabled(Z)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 241
    iput-boolean p1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mShowCurrentLocation:Z

    .line 242
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 276
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 277
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 278
    iput-object p1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 279
    return-object p0
.end method

.method public setItemList(Landroidx/car/app/model/ItemList;)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 2
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;

    .line 350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ItemList;

    invoke-virtual {v0}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v0

    .line 351
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-virtual {v1, p1}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Landroidx/car/app/model/ItemList;)V

    .line 352
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateAllNonBrowsableRowsHaveDistance(Ljava/util/List;)V

    .line 353
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateAllRowsHaveOnlySmallImages(Ljava/util/List;)V

    .line 354
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateNoRowsHaveBothMarkersAndImages(Ljava/util/List;)V

    .line 355
    iput-object p1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    .line 356
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 256
    iput-boolean p1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mIsLoading:Z

    .line 257
    return-object p0
.end method

.method public setOnContentRefreshListener(Landroidx/car/app/model/OnContentRefreshListener;)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 1
    .param p1, "onContentRefreshListener"    # Landroidx/car/app/model/OnContentRefreshListener;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 426
    nop

    .line 427
    invoke-static {p1}, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->create(Landroidx/car/app/model/OnContentRefreshListener;)Landroidx/car/app/model/OnContentRefreshDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    .line 428
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 2
    .param p1, "title"    # Landroidx/car/app/model/CarText;

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 312
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 313
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/PlaceListMapTemplate$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 294
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 295
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/PlaceListMapTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 296
    return-object p0
.end method
