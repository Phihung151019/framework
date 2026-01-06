.class public final Landroidx/car/app/model/GridItem$Builder;
.super Ljava/lang/Object;
.source "GridItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/GridItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mBadge:Landroidx/car/app/model/Badge;

.field mImage:Landroidx/car/app/model/CarIcon;

.field mImageType:I

.field mIsLoading:Z

.field mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

.field mText:Landroidx/car/app/model/CarText;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x2

    iput v0, p0, Landroidx/car/app/model/GridItem$Builder;->mImageType:I

    .line 470
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/GridItem;
    .locals 2

    .line 446
    iget-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mTitle:Landroidx/car/app/model/CarText;

    if-eqz v0, :cond_6

    .line 450
    iget-boolean v0, p0, Landroidx/car/app/model/GridItem$Builder;->mIsLoading:Z

    iget-object v1, p0, Landroidx/car/app/model/GridItem$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_5

    .line 455
    iget-boolean v0, p0, Landroidx/car/app/model/GridItem$Builder;->mIsLoading:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v0, :cond_1

    goto :goto_1

    .line 456
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The click listener must not be set on the grid item when it is loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mBadge:Landroidx/car/app/model/Badge;

    if-nez v0, :cond_3

    goto :goto_2

    .line 461
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A badge can only be set when a grid item image is also provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_4
    :goto_2
    new-instance v0, Landroidx/car/app/model/GridItem;

    invoke-direct {v0, p0}, Landroidx/car/app/model/GridItem;-><init>(Landroidx/car/app/model/GridItem$Builder;)V

    return-object v0

    .line 451
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "When a grid item is loading, the image must not be set and vice versa"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A title must be set on the grid item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/GridItem$Builder;
    .locals 2
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroidx/car/app/model/GridItem$Builder;->setImage(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/GridItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/GridItem$Builder;
    .locals 2
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;
    .param p2, "imageType"    # I

    .line 414
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 415
    iput-object p1, p0, Landroidx/car/app/model/GridItem$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    .line 416
    iput p2, p0, Landroidx/car/app/model/GridItem$Builder;->mImageType:I

    .line 417
    return-object p0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;ILandroidx/car/app/model/Badge;)Landroidx/car/app/model/GridItem$Builder;
    .locals 1
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;
    .param p2, "imageType"    # I
    .param p3, "badge"    # Landroidx/car/app/model/Badge;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation

    .line 386
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iput-object p3, p0, Landroidx/car/app/model/GridItem$Builder;->mBadge:Landroidx/car/app/model/Badge;

    .line 388
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    invoke-virtual {p0, v0, p2}, Landroidx/car/app/model/GridItem$Builder;->setImage(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/GridItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;Landroidx/car/app/model/Badge;)Landroidx/car/app/model/GridItem$Builder;
    .locals 1
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;
    .param p2, "badge"    # Landroidx/car/app/model/Badge;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation

    .line 365
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iput-object p2, p0, Landroidx/car/app/model/GridItem$Builder;->mBadge:Landroidx/car/app/model/Badge;

    .line 367
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    invoke-virtual {p0, v0}, Landroidx/car/app/model/GridItem$Builder;->setImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/GridItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)Landroidx/car/app/model/GridItem$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 249
    iput-boolean p1, p0, Landroidx/car/app/model/GridItem$Builder;->mIsLoading:Z

    .line 250
    return-object p0
.end method

.method public setOnClickListener(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/GridItem$Builder;
    .locals 1
    .param p1, "onClickListener"    # Landroidx/car/app/model/OnClickListener;

    .line 432
    invoke-static {p1}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 433
    return-object p0
.end method

.method public setText(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/GridItem$Builder;
    .locals 2
    .param p1, "text"    # Landroidx/car/app/model/CarText;

    .line 334
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mText:Landroidx/car/app/model/CarText;

    .line 335
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/GridItem$Builder;->mText:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 336
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/car/app/model/GridItem$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mText:Landroidx/car/app/model/CarText;

    .line 312
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/GridItem$Builder;->mText:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 313
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/GridItem$Builder;
    .locals 2
    .param p1, "title"    # Landroidx/car/app/model/CarText;

    .line 286
    invoke-static {p1}, Landroidx/car/app/model/CarText;->isNullOrEmpty(Landroidx/car/app/model/CarText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v0, p1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 290
    iput-object p1, p0, Landroidx/car/app/model/GridItem$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 291
    return-object p0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The title cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/GridItem$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 265
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    .line 266
    .local v0, "titleText":Landroidx/car/app/model/CarText;
    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 270
    iput-object v0, p0, Landroidx/car/app/model/GridItem$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 271
    return-object p0

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The title cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
