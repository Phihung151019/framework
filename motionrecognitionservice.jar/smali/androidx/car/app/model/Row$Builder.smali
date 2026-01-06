.class public final Landroidx/car/app/model/Row$Builder;
.super Ljava/lang/Object;
.source "Row.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field mDecoration:I

.field mImage:Landroidx/car/app/model/CarIcon;

.field mIsBrowsable:Z

.field mIsEnabled:Z

.field mMetadata:Landroidx/car/app/model/Metadata;

.field mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

.field mRowImageType:I

.field final mTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText;",
            ">;"
        }
    .end annotation
.end field

.field mTitle:Landroidx/car/app/model/CarText;

.field mToggle:Landroidx/car/app/model/Toggle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/Row$Builder;->mIsEnabled:Z

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/car/app/model/Row$Builder;->mTexts:Ljava/util/List;

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/car/app/model/Row$Builder;->mActions:Ljava/util/List;

    .line 342
    const/4 v1, -0x1

    iput v1, p0, Landroidx/car/app/model/Row$Builder;->mDecoration:I

    .line 347
    sget-object v1, Landroidx/car/app/model/Metadata;->EMPTY_METADATA:Landroidx/car/app/model/Metadata;

    iput-object v1, p0, Landroidx/car/app/model/Row$Builder;->mMetadata:Landroidx/car/app/model/Metadata;

    .line 349
    iput v0, p0, Landroidx/car/app/model/Row$Builder;->mRowImageType:I

    .line 695
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/Row$Builder;
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/car/app/model/Row$Builder;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 537
    .local v0, "mActionsCopy":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Action;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v1, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_ROW:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 539
    iget-object v1, p0, Landroidx/car/app/model/Row$Builder;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    return-object p0
.end method

.method public addText(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/Row$Builder;
    .locals 2
    .param p1, "text"    # Landroidx/car/app/model/CarText;

    .line 478
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 479
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;)Landroidx/car/app/model/Row$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 463
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    .line 464
    .local v0, "carText":Landroidx/car/app/model/CarText;
    sget-object v1, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 465
    iget-object v1, p0, Landroidx/car/app/model/Row$Builder;->mTexts:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    return-object p0
.end method

.method public build()Landroidx/car/app/model/Row;
    .locals 2

    .line 654
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mTitle:Landroidx/car/app/model/CarText;

    if-eqz v0, :cond_8

    .line 658
    iget-boolean v0, p0, Landroidx/car/app/model/Row$Builder;->mIsBrowsable:Z

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mToggle:Landroidx/car/app/model/Toggle;

    if-nez v0, :cond_2

    .line 662
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A browsable row must not have a secondary action set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A browsable row must have its onClickListener set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A browsable row must not have a toggle set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mToggle:Landroidx/car/app/model/Toggle;

    if-eqz v0, :cond_7

    .line 674
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v0, :cond_6

    .line 679
    iget v0, p0, Landroidx/car/app/model/Row$Builder;->mDecoration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 684
    iget-object v0, p0, Landroidx/car/app/model/Row$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 685
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If a row contains a toggle, it must not have a secondary action set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If a row contains a toggle, it must not have a numeric decoration set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If a row contains a toggle, it must not have an onClickListener set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_7
    :goto_1
    new-instance v0, Landroidx/car/app/model/Row;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Row;-><init>(Landroidx/car/app/model/Row$Builder;)V

    return-object v0

    .line 655
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A title must be set on the row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBrowsable(Z)Landroidx/car/app/model/Row$Builder;
    .locals 0
    .param p1, "isBrowsable"    # Z

    .line 601
    iput-boolean p1, p0, Landroidx/car/app/model/Row$Builder;->mIsBrowsable:Z

    .line 602
    return-object p0
.end method

.method public setEnabled(Z)Landroidx/car/app/model/Row$Builder;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 641
    iput-boolean p1, p0, Landroidx/car/app/model/Row$Builder;->mIsEnabled:Z

    .line 642
    return-object p0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/Row$Builder;
    .locals 2
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;

    .line 491
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/car/app/model/Row$Builder;->setImage(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/Row$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/Row$Builder;
    .locals 2
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;
    .param p2, "imageType"    # I

    .line 518
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 519
    iput-object p1, p0, Landroidx/car/app/model/Row$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    .line 520
    iput p2, p0, Landroidx/car/app/model/Row$Builder;->mRowImageType:I

    .line 521
    return-object p0
.end method

.method public setMetadata(Landroidx/car/app/model/Metadata;)Landroidx/car/app/model/Row$Builder;
    .locals 0
    .param p1, "metadata"    # Landroidx/car/app/model/Metadata;

    .line 629
    iput-object p1, p0, Landroidx/car/app/model/Row$Builder;->mMetadata:Landroidx/car/app/model/Metadata;

    .line 630
    return-object p0
.end method

.method public setNumericDecoration(I)Landroidx/car/app/model/Row$Builder;
    .locals 3
    .param p1, "decoration"    # I
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .line 562
    if-gez p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 564
    const-string v2, "Decoration should be positive, zero, or equal to NO_DECORATION. Instead, was %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/car/app/model/Row$Builder;->mDecoration:I

    .line 573
    return-object p0
.end method

.method public setOnClickListener(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/Row$Builder;
    .locals 1
    .param p1, "onClickListener"    # Landroidx/car/app/model/OnClickListener;

    .line 616
    invoke-static {p1}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Row$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 617
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/Row$Builder;
    .locals 2
    .param p1, "title"    # Landroidx/car/app/model/CarText;

    .line 385
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v0, p1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 389
    iput-object p1, p0, Landroidx/car/app/model/Row$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 390
    return-object p0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The title cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/Row$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 364
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    .line 365
    .local v0, "titleText":Landroidx/car/app/model/CarText;
    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    sget-object v1, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 369
    iput-object v0, p0, Landroidx/car/app/model/Row$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 370
    return-object p0

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The title cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setToggle(Landroidx/car/app/model/Toggle;)Landroidx/car/app/model/Row$Builder;
    .locals 1
    .param p1, "toggle"    # Landroidx/car/app/model/Toggle;

    .line 586
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Toggle;

    iput-object v0, p0, Landroidx/car/app/model/Row$Builder;->mToggle:Landroidx/car/app/model/Toggle;

    .line 587
    return-object p0
.end method
