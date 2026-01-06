.class public final Landroidx/car/app/model/TabTemplate$Builder;
.super Ljava/lang/Object;
.source "TabTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/TabTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActiveTabContentId:Ljava/lang/String;

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mIsLoading:Z

.field final mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

.field mTabContents:Landroidx/car/app/model/TabContents;

.field final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/car/app/model/TabTemplate$TabCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/model/TabTemplate$TabCallback;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/TabTemplate$TabCallback;

    invoke-static {v0}, Landroidx/car/app/model/TabCallbackDelegateImpl;->create(Landroidx/car/app/model/TabTemplate$TabCallback;)Landroidx/car/app/model/TabCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabs:Ljava/util/List;

    .line 330
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/TabTemplate;)V
    .locals 2
    .param p1, "tabTemplate"    # Landroidx/car/app/model/TabTemplate;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    invoke-virtual {p1}, Landroidx/car/app/model/TabTemplate;->isLoading()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mIsLoading:Z

    .line 335
    invoke-virtual {p1}, Landroidx/car/app/model/TabTemplate;->getHeaderAction()Landroidx/car/app/model/Action;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/car/app/model/TabTemplate;->getTabs()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabs:Ljava/util/List;

    .line 337
    invoke-virtual {p1}, Landroidx/car/app/model/TabTemplate;->getTabContents()Landroidx/car/app/model/TabContents;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabContents:Landroidx/car/app/model/TabContents;

    .line 338
    invoke-virtual {p1}, Landroidx/car/app/model/TabTemplate;->getTabCallbackDelegate()Landroidx/car/app/model/TabCallbackDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabCallbackDelegate:Landroidx/car/app/model/TabCallbackDelegate;

    .line 339
    invoke-virtual {p1}, Landroidx/car/app/model/TabTemplate;->getActiveTabContentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mActiveTabContentId:Ljava/lang/String;

    .line 340
    return-void
.end method


# virtual methods
.method public addTab(Landroidx/car/app/model/Tab;)Landroidx/car/app/model/TabTemplate$Builder;
    .locals 1
    .param p1, "tab"    # Landroidx/car/app/model/Tab;

    .line 271
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-object p0
.end method

.method public build()Landroidx/car/app/model/TabTemplate;
    .locals 4

    .line 293
    iget-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabContents:Landroidx/car/app/model/TabContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    .local v0, "hasTabs":Z
    :goto_0
    iget-boolean v1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mIsLoading:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Template is in a loading state but tabs are added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mIsLoading:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 300
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Template is not in a loading state but does not contain tabs or tab contents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mActiveTabContentId:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_3

    .line 306
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Template requires setting content ID for the active tab when not in Loading state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mActiveTabContentId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 312
    sget-object v1, Landroidx/car/app/model/constraints/TabsConstraints;->DEFAULT:Landroidx/car/app/model/constraints/TabsConstraints;

    iget-object v2, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabs:Ljava/util/List;

    iget-object v3, p0, Landroidx/car/app/model/TabTemplate$Builder;->mActiveTabContentId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroidx/car/app/model/constraints/TabsConstraints;->validateOrThrow(Ljava/util/List;Ljava/lang/String;)V

    .line 315
    :cond_7
    iget-boolean v1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mIsLoading:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    if-eqz v1, :cond_8

    goto :goto_4

    .line 316
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Template requires a Header Action of TYPE_APP_ICON when not in Loading state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_9
    :goto_4
    new-instance v1, Landroidx/car/app/model/TabTemplate;

    invoke-direct {v1, p0}, Landroidx/car/app/model/TabTemplate;-><init>(Landroidx/car/app/model/TabTemplate$Builder;)V

    return-object v1
.end method

.method public setActiveTabContentId(Ljava/lang/String;)Landroidx/car/app/model/TabTemplate$Builder;
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .line 257
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iput-object p1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mActiveTabContentId:Ljava/lang/String;

    .line 261
    return-object p0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/TabTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 234
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_TABS:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 236
    iput-object p1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 237
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/TabTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 214
    iput-boolean p1, p0, Landroidx/car/app/model/TabTemplate$Builder;->mIsLoading:Z

    .line 215
    return-object p0
.end method

.method public setTabContents(Landroidx/car/app/model/TabContents;)Landroidx/car/app/model/TabTemplate$Builder;
    .locals 1
    .param p1, "tabContents"    # Landroidx/car/app/model/TabContents;

    .line 247
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/TabContents;

    iput-object v0, p0, Landroidx/car/app/model/TabTemplate$Builder;->mTabContents:Landroidx/car/app/model/TabContents;

    .line 248
    return-object p0
.end method
