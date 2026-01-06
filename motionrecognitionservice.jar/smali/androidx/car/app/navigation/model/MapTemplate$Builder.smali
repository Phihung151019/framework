.class public final Landroidx/car/app/navigation/model/MapTemplate$Builder;
.super Ljava/lang/Object;
.source "MapTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/MapTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionStrip:Landroidx/car/app/model/ActionStrip;

.field mHeader:Landroidx/car/app/model/Header;

.field mItemList:Landroidx/car/app/model/ItemList;

.field mMapController:Landroidx/car/app/navigation/model/MapController;

.field mPane:Landroidx/car/app/model/Pane;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/MapTemplate;
    .locals 4

    .line 331
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mPane:Landroidx/car/app/model/Pane;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_2

    .line 336
    new-instance v0, Landroidx/car/app/navigation/model/MapTemplate;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/MapTemplate;-><init>(Landroidx/car/app/navigation/model/MapTemplate$Builder;)V

    return-object v0

    .line 332
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either Pane or Item List must be set but not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/MapTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 206
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_NAVIGATION:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 208
    iput-object p1, p0, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 209
    return-object p0
.end method

.method public setHeader(Landroidx/car/app/model/Header;)Landroidx/car/app/navigation/model/MapTemplate$Builder;
    .locals 1
    .param p1, "header"    # Landroidx/car/app/model/Header;

    .line 291
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Header;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mHeader:Landroidx/car/app/model/Header;

    .line 292
    return-object p0
.end method

.method public setItemList(Landroidx/car/app/model/ItemList;)Landroidx/car/app/navigation/model/MapTemplate$Builder;
    .locals 2
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;

    .line 276
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ItemList;

    invoke-virtual {v0}, Landroidx/car/app/model/ItemList;->getItems()Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->MAP_ROW_LIST_CONSTRAINTS_ALLOW_SELECTABLE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-virtual {v1, p1}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Landroidx/car/app/model/ItemList;)V

    .line 278
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateAllRowsHaveOnlySmallImages(Ljava/util/List;)V

    .line 279
    invoke-static {v0}, Landroidx/car/app/model/ModelUtils;->validateNoRowsHaveBothMarkersAndImages(Ljava/util/List;)V

    .line 280
    iput-object p1, p0, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    .line 281
    return-object p0
.end method

.method public setMapController(Landroidx/car/app/navigation/model/MapController;)Landroidx/car/app/navigation/model/MapTemplate$Builder;
    .locals 1
    .param p1, "mapController"    # Landroidx/car/app/navigation/model/MapController;

    .line 300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/model/MapController;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 301
    return-object p0
.end method

.method public setPane(Landroidx/car/app/model/Pane;)Landroidx/car/app/navigation/model/MapTemplate$Builder;
    .locals 2
    .param p1, "pane"    # Landroidx/car/app/model/Pane;

    .line 240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Pane;

    invoke-virtual {v0}, Landroidx/car/app/model/Pane;->getActions()Ljava/util/List;

    move-result-object v0

    .line 241
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Action;>;"
    sget-object v1, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_PANE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-virtual {v1, p1}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Landroidx/car/app/model/Pane;)V

    .line 242
    sget-object v1, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_BODY_WITH_PRIMARY_ACTION:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 243
    iput-object p1, p0, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mPane:Landroidx/car/app/model/Pane;

    .line 244
    return-object p0
.end method
