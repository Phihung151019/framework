.class public final Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
.super Ljava/lang/Object;
.source "PlaceListNavigationTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionStrip:Landroidx/car/app/model/ActionStrip;

.field mHeader:Landroidx/car/app/model/Header;

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mIsLoading:Z

.field mItemList:Landroidx/car/app/model/ItemList;

.field mMapActionStrip:Landroidx/car/app/model/ActionStrip;

.field mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

.field mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;
    .locals 3

    .line 537
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 538
    .local v0, "hasList":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mIsLoading:Z

    if-eq v1, v0, :cond_1

    .line 543
    new-instance v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;

    invoke-direct {v1, p0}, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;-><init>(Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;)V

    return-object v1

    .line 539
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Template is in a loading state but a list is set, or vice versa"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 449
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_NAVIGATION:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 450
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 451
    iput-object p1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 452
    return-object p0
.end method

.method public setHeader(Landroidx/car/app/model/Header;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 1
    .param p1, "header"    # Landroidx/car/app/model/Header;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 422
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Header;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mHeader:Landroidx/car/app/model/Header;

    .line 423
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 368
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 369
    iput-object p1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 370
    return-object p0
.end method

.method public setItemList(Landroidx/car/app/model/ItemList;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 2
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;

    .line 405
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ItemList;

    invoke-virtual {v0}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-virtual {v1, p1}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Landroidx/car/app/model/ItemList;)V

    .line 407
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateAllNonBrowsableRowsHaveDistance(Ljava/util/List;)V

    .line 408
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateAllRowsHaveOnlySmallImages(Ljava/util/List;)V

    .line 409
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateNoRowsHaveBothMarkersAndImages(Ljava/util/List;)V

    .line 410
    iput-object p1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    .line 411
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 344
    iput-boolean p1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mIsLoading:Z

    .line 345
    return-object p0
.end method

.method public setMapActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 478
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_MAP:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 479
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 480
    iput-object p1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 481
    return-object p0
.end method

.method public setOnContentRefreshListener(Landroidx/car/app/model/OnContentRefreshListener;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 1
    .param p1, "onContentRefreshListener"    # Landroidx/car/app/model/OnContentRefreshListener;

    .line 519
    nop

    .line 520
    invoke-static {p1}, Landroidx/car/app/model/OnContentRefreshDelegateImpl;->create(Landroidx/car/app/model/OnContentRefreshListener;)Landroidx/car/app/model/OnContentRefreshDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    .line 521
    return-object p0
.end method

.method public setPanModeListener(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 1
    .param p1, "panModeListener"    # Landroidx/car/app/navigation/model/PanModeListener;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {p1}, Landroidx/car/app/navigation/model/PanModeDelegateImpl;->create(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/PanModeDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 501
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 2
    .param p1, "title"    # Landroidx/car/app/model/CarText;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 329
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 330
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 309
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 310
    return-object p0
.end method
