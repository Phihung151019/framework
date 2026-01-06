.class public final Landroidx/car/app/model/signin/SignInTemplate$Builder;
.super Ljava/lang/Object;
.source "SignInTemplate.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/signin/SignInTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field mActionStrip:Landroidx/car/app/model/ActionStrip;

.field mAdditionalText:Landroidx/car/app/model/CarText;

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mInstructions:Landroidx/car/app/model/CarText;

.field mIsLoading:Z

.field final mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>(Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;)V
    .locals 1
    .param p1, "signInMethod"    # Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mActionList:Ljava/util/List;

    .line 408
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    .line 409
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/signin/SignInTemplate$Builder;
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;

    .line 314
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/OnClickDelegate;

    invoke-interface {v0}, Landroidx/car/app/model/OnClickDelegate;->isParkedOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mActionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_BODY:Landroidx/car/app/model/constraints/ActionsConstraints;

    iget-object v1, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mActionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 322
    return-object p0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The action must use a ParkedOnlyOnClickListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroidx/car/app/model/signin/SignInTemplate;
    .locals 1

    .line 398
    new-instance v0, Landroidx/car/app/model/signin/SignInTemplate;

    invoke-direct {v0, p0}, Landroidx/car/app/model/signin/SignInTemplate;-><init>(Landroidx/car/app/model/signin/SignInTemplate$Builder;)V

    return-object v0
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/model/signin/SignInTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 293
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 294
    iput-object p1, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 295
    return-object p0
.end method

.method public setAdditionalText(Ljava/lang/CharSequence;)Landroidx/car/app/model/signin/SignInTemplate$Builder;
    .locals 2
    .param p1, "additionalText"    # Ljava/lang/CharSequence;

    .line 380
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mAdditionalText:Landroidx/car/app/model/CarText;

    .line 381
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->CLICKABLE_TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mAdditionalText:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 382
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/signin/SignInTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 271
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 272
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 273
    iput-object p1, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 274
    return-object p0
.end method

.method public setInstructions(Ljava/lang/CharSequence;)Landroidx/car/app/model/signin/SignInTemplate$Builder;
    .locals 2
    .param p1, "instructions"    # Ljava/lang/CharSequence;

    .line 359
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mInstructions:Landroidx/car/app/model/CarText;

    .line 360
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mInstructions:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 361
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/signin/SignInTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z

    .line 251
    iput-boolean p1, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mIsLoading:Z

    .line 252
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/signin/SignInTemplate$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 339
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 340
    return-object p0
.end method
