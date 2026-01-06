.class public final Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
.super Ljava/lang/Object;
.source "ActionsConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/constraints/ActionsConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mAllowedActionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mDisallowedActionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMaxActions:I

.field mMaxCustomTitles:I

.field mMaxPrimaryActions:I

.field mOnClickListenerAllowed:Z

.field mRequireActionBackgroundColor:Z

.field mRequireActionIcons:Z

.field final mRequiredActionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequiredActionTypes:Ljava/util/Set;

    .line 367
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mDisallowedActionTypes:Ljava/util/Set;

    .line 368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mAllowedActionTypes:Ljava/util/Set;

    .line 369
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxActions:I

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxPrimaryActions:I

    .line 375
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarTextConstraints;

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 379
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/constraints/ActionsConstraints;)V
    .locals 2
    .param p1, "constraints"    # Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequiredActionTypes:Ljava/util/Set;

    .line 367
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mDisallowedActionTypes:Ljava/util/Set;

    .line 368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mAllowedActionTypes:Ljava/util/Set;

    .line 369
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxActions:I

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxPrimaryActions:I

    .line 375
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarTextConstraints;

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 388
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->getMaxActions()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxActions:I

    .line 390
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->getMaxPrimaryActions()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxPrimaryActions:I

    .line 391
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->getMaxCustomTitles()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxCustomTitles:I

    .line 392
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->getTitleTextConstraints()Landroidx/car/app/model/constraints/CarTextConstraints;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 393
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequiredActionTypes:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->getRequiredActionTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 394
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mDisallowedActionTypes:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->getDisallowedActionTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 395
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mAllowedActionTypes:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->getAllowedActionTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 396
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->areActionIconsRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequireActionIcons:Z

    .line 397
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->isActionBackgroundColorRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequireActionBackgroundColor:Z

    .line 398
    invoke-virtual {p1}, Landroidx/car/app/model/constraints/ActionsConstraints;->isOnClickListenerAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mOnClickListenerAllowed:Z

    .line 399
    return-void
.end method


# virtual methods
.method public addAllowedActionType(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 2
    .param p1, "actionType"    # I

    .line 476
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mAllowedActionTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    return-object p0
.end method

.method public addDisallowedActionType(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 2
    .param p1, "actionType"    # I

    .line 469
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mDisallowedActionTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    return-object p0
.end method

.method public addRequiredActionType(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 2
    .param p1, "actionType"    # I

    .line 462
    iget-object v0, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequiredActionTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 463
    return-object p0
.end method

.method public build()Landroidx/car/app/model/constraints/ActionsConstraints;
    .locals 1

    .line 485
    new-instance v0, Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-direct {v0, p0}, Landroidx/car/app/model/constraints/ActionsConstraints;-><init>(Landroidx/car/app/model/constraints/ActionsConstraints$Builder;)V

    return-object v0
.end method

.method public setMaxActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 0
    .param p1, "maxActions"    # I

    .line 404
    iput p1, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxActions:I

    .line 405
    return-object p0
.end method

.method public setMaxCustomTitles(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 0
    .param p1, "maxCustomTitles"    # I

    .line 448
    iput p1, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxCustomTitles:I

    .line 449
    return-object p0
.end method

.method public setMaxPrimaryActions(I)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 0
    .param p1, "maxPrimaryActions"    # I

    .line 441
    iput p1, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mMaxPrimaryActions:I

    .line 442
    return-object p0
.end method

.method public setOnClickListenerAllowed(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 0
    .param p1, "onClickListenerAllowed"    # Z

    .line 434
    iput-boolean p1, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mOnClickListenerAllowed:Z

    .line 435
    return-object p0
.end method

.method public setRequireActionBackgroundColor(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 0
    .param p1, "requireActionBackgroundColor"    # Z

    .line 424
    iput-boolean p1, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequireActionBackgroundColor:Z

    .line 425
    return-object p0
.end method

.method public setRequireActionIcons(Z)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 0
    .param p1, "requireActionIcons"    # Z

    .line 414
    iput-boolean p1, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mRequireActionIcons:Z

    .line 415
    return-object p0
.end method

.method public setTitleTextConstraints(Landroidx/car/app/model/constraints/CarTextConstraints;)Landroidx/car/app/model/constraints/ActionsConstraints$Builder;
    .locals 0
    .param p1, "carTextConstraints"    # Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 455
    iput-object p1, p0, Landroidx/car/app/model/constraints/ActionsConstraints$Builder;->mTitleTextConstraints:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 456
    return-object p0
.end method
