.class public final Landroidx/car/app/model/Action$Builder;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mBackgroundColor:Landroidx/car/app/model/CarColor;

.field mFlags:I

.field mIcon:Landroidx/car/app/model/CarIcon;

.field mIsEnabled:Z

.field mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

.field mTitle:Landroidx/car/app/model/CarText;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/Action$Builder;->mIsEnabled:Z

    .line 369
    sget-object v1, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v1, p0, Landroidx/car/app/model/Action$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 370
    iput v0, p0, Landroidx/car/app/model/Action$Builder;->mType:I

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/Action$Builder;->mFlags:I

    .line 529
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/Action;)V
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/model/Action$Builder;->mIsEnabled:Z

    .line 369
    sget-object v1, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v1, p0, Landroidx/car/app/model/Action$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 370
    iput v0, p0, Landroidx/car/app/model/Action$Builder;->mType:I

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/Action$Builder;->mFlags:I

    .line 539
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getType()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/Action$Builder;->mType:I

    .line 541
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getIcon()Landroidx/car/app/model/CarIcon;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Action$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 542
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getTitle()Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 543
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Action$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 544
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getBackgroundColor()Landroidx/car/app/model/CarColor;

    move-result-object v0

    .line 545
    .local v0, "backgroundColor":Landroidx/car/app/model/CarColor;
    if-nez v0, :cond_0

    sget-object v1, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroidx/car/app/model/Action$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 546
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getFlags()I

    move-result v1

    iput v1, p0, Landroidx/car/app/model/Action$Builder;->mFlags:I

    .line 547
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/car/app/model/Action$Builder;->mIsEnabled:Z

    .line 548
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/Action;
    .locals 3

    .line 497
    iget v0, p0, Landroidx/car/app/model/Action$Builder;->mType:I

    invoke-static {v0}, Landroidx/car/app/model/Action;->isStandardActionType(I)Z

    move-result v0

    .line 498
    .local v0, "isStandard":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 499
    invoke-virtual {v1}, Landroidx/car/app/model/CarText;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An action must have either an icon or a title"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/car/app/model/Action$Builder;->mType:I

    const v2, 0x10002

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroidx/car/app/model/Action$Builder;->mType:I

    const v2, 0x10003

    if-ne v1, v2, :cond_3

    .line 504
    :cond_2
    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v1, :cond_7

    .line 510
    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v1}, Landroidx/car/app/model/CarText;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 517
    :cond_3
    iget v1, p0, Landroidx/car/app/model/Action$Builder;->mType:I

    const v2, 0x10004

    if-ne v1, v2, :cond_5

    .line 518
    iget-object v1, p0, Landroidx/car/app/model/Action$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v1, :cond_4

    goto :goto_1

    .line 519
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An on-click listener can\'t be set on the pan mode action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_5
    :goto_1
    new-instance v1, Landroidx/car/app/model/Action;

    invoke-direct {v1, p0}, Landroidx/car/app/model/Action;-><init>(Landroidx/car/app/model/Action$Builder;)V

    return-object v1

    .line 511
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An icon or title can\'t be set on the standard back or app-icon action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An on-click listener can\'t be set on the standard back or app-icon action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBackgroundColor(Landroidx/car/app/model/CarColor;)Landroidx/car/app/model/Action$Builder;
    .locals 2
    .param p1, "backgroundColor"    # Landroidx/car/app/model/CarColor;

    .line 462
    sget-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarColorConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarColorConstraints;->validateOrThrow(Landroidx/car/app/model/CarColor;)V

    .line 463
    iput-object p1, p0, Landroidx/car/app/model/Action$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 464
    return-object p0
.end method

.method public setEnabled(Z)Landroidx/car/app/model/Action$Builder;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 475
    iput-boolean p1, p0, Landroidx/car/app/model/Action$Builder;->mIsEnabled:Z

    .line 476
    return-object p0
.end method

.method public setFlags(I)Landroidx/car/app/model/Action$Builder;
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 483
    iget v0, p0, Landroidx/car/app/model/Action$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/car/app/model/Action$Builder;->mFlags:I

    .line 484
    return-object p0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/Action$Builder;
    .locals 2
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 424
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 425
    iput-object p1, p0, Landroidx/car/app/model/Action$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 426
    return-object p0
.end method

.method public setOnClickListener(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/Action$Builder;
    .locals 1
    .param p1, "listener"    # Landroidx/car/app/model/OnClickListener;

    .line 442
    invoke-static {p1}, Landroidx/car/app/model/OnClickDelegateImpl;->create(Landroidx/car/app/model/OnClickListener;)Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Action$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 443
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/Action$Builder;
    .locals 1
    .param p1, "title"    # Landroidx/car/app/model/CarText;

    .line 401
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 402
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/Action$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 385
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Action$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 386
    return-object p0
.end method
