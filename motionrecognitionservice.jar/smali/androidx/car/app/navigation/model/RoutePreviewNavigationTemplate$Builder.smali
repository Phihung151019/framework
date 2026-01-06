.class public final Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
.super Ljava/lang/Object;
.source "RoutePreviewNavigationTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;
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

.field mNavigateAction:Landroidx/car/app/model/Action;

.field mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;
    .locals 3

    .line 542
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 543
    .local v0, "hasList":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mIsLoading:Z

    if-eq v1, v0, :cond_3

    .line 548
    iget-boolean v1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mIsLoading:Z

    if-nez v1, :cond_2

    .line 549
    iget-object v1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mNavigateAction:Landroidx/car/app/model/Action;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 550
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The navigation action cannot be null when the list is not in a loading state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_2
    :goto_1
    new-instance v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;

    invoke-direct {v1, p0}, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;-><init>(Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;)V

    return-object v1

    .line 544
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Template is in a loading state but a list is set, or vice versa"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 473
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_NAVIGATION:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 474
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 475
    iput-object p1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 476
    return-object p0
.end method

.method public setHeader(Landroidx/car/app/model/Header;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 1
    .param p1, "header"    # Landroidx/car/app/model/Header;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Header;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mHeader:Landroidx/car/app/model/Header;

    .line 408
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 370
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 371
    iput-object p1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 372
    return-object p0
.end method

.method public setItemList(Landroidx/car/app/model/ItemList;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 2
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;

    .line 437
    sget-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->MAP_ROW_LIST_CONSTRAINTS_ALLOW_SELECTABLE:Landroidx/car/app/model/constraints/RowListConstraints;

    .line 438
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ItemList;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Landroidx/car/app/model/ItemList;)V

    .line 439
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateAllRowsHaveDistanceOrDuration(Ljava/util/List;)V

    .line 440
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateAllRowsHaveOnlySmallImages(Ljava/util/List;)V

    .line 442
    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/car/app/model/ItemList;->getOnSelectedDelegate()Landroidx/car/app/model/OnSelectedDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The OnSelectedListener must be set for the route list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    .line 447
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 345
    iput-boolean p1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mIsLoading:Z

    .line 346
    return-object p0
.end method

.method public setMapActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 502
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_MAP:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 503
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 504
    iput-object p1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 505
    return-object p0
.end method

.method public setNavigateAction(Landroidx/car/app/model/Action;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 2
    .param p1, "navigateAction"    # Landroidx/car/app/model/Action;

    .line 390
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Action;

    invoke-virtual {v0}, Landroidx/car/app/model/Action;->getTitle()Landroidx/car/app/model/CarText;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/model/CarText;->isNullOrEmpty(Landroidx/car/app/model/CarText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mNavigateAction:Landroidx/car/app/model/Action;

    .line 396
    return-object p0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Action\'s title cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPanModeListener(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 1
    .param p1, "panModeListener"    # Landroidx/car/app/navigation/model/PanModeListener;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 523
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-static {p1}, Landroidx/car/app/navigation/model/PanModeDelegateImpl;->create(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/PanModeDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 525
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 2
    .param p1, "title"    # Landroidx/car/app/model/CarText;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 331
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 332
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 311
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 312
    return-object p0
.end method
