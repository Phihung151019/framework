.class public final Landroidx/car/app/model/SearchTemplate$Builder;
.super Ljava/lang/Object;
.source "SearchTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/SearchTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionStrip:Landroidx/car/app/model/ActionStrip;

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mInitialSearchText:Ljava/lang/String;

.field mIsLoading:Z

.field mItemList:Landroidx/car/app/model/ItemList;

.field final mSearchCallbackDelegate:Landroidx/car/app/model/SearchCallbackDelegate;

.field mSearchHint:Ljava/lang/String;

.field mShowKeyboardByDefault:Z


# direct methods
.method public constructor <init>(Landroidx/car/app/model/SearchTemplate$SearchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/model/SearchTemplate$SearchCallback;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mShowKeyboardByDefault:Z

    .line 397
    invoke-static {p1}, Landroidx/car/app/model/SearchCallbackDelegateImpl;->create(Landroidx/car/app/model/SearchTemplate$SearchCallback;)Landroidx/car/app/model/SearchCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mSearchCallbackDelegate:Landroidx/car/app/model/SearchCallbackDelegate;

    .line 398
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/SearchTemplate;
    .locals 2

    .line 378
    iget-boolean v0, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mIsLoading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Template is in a loading state but a list is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    :goto_0
    new-instance v0, Landroidx/car/app/model/SearchTemplate;

    invoke-direct {v0, p0}, Landroidx/car/app/model/SearchTemplate;-><init>(Landroidx/car/app/model/SearchTemplate$Builder;)V

    return-object v0
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/model/SearchTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 281
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 282
    iput-object p1, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 283
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/SearchTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 259
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 260
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 261
    iput-object p1, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 262
    return-object p0
.end method

.method public setInitialSearchText(Ljava/lang/String;)Landroidx/car/app/model/SearchTemplate$Builder;
    .locals 1
    .param p1, "initialSearchText"    # Ljava/lang/String;

    .line 293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mInitialSearchText:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public setItemList(Landroidx/car/app/model/ItemList;)Landroidx/car/app/model/SearchTemplate$Builder;
    .locals 2
    .param p1, "itemList"    # Landroidx/car/app/model/ItemList;

    .line 353
    sget-object v0, Landroidx/car/app/model/constraints/RowListConstraints;->ROW_LIST_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/RowListConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ItemList;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/RowListConstraints;->validateOrThrow(Landroidx/car/app/model/ItemList;)V

    .line 354
    iput-object p1, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    .line 355
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/SearchTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 327
    iput-boolean p1, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mIsLoading:Z

    .line 328
    return-object p0
.end method

.method public setSearchHint(Ljava/lang/String;)Landroidx/car/app/model/SearchTemplate$Builder;
    .locals 1
    .param p1, "searchHint"    # Ljava/lang/String;

    .line 312
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mSearchHint:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public setShowKeyboardByDefault(Z)Landroidx/car/app/model/SearchTemplate$Builder;
    .locals 0
    .param p1, "showKeyboardByDefault"    # Z

    .line 366
    iput-boolean p1, p0, Landroidx/car/app/model/SearchTemplate$Builder;->mShowKeyboardByDefault:Z

    .line 367
    return-object p0
.end method
