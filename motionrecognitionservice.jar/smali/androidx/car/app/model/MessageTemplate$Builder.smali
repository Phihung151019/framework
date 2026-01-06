.class public final Landroidx/car/app/model/MessageTemplate$Builder;
.super Ljava/lang/Object;
.source "MessageTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/MessageTemplate;
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

.field mDebugCause:Ljava/lang/Throwable;

.field mDebugMessage:Landroidx/car/app/model/CarText;

.field mDebugString:Ljava/lang/String;

.field mHeaderAction:Landroidx/car/app/model/Action;

.field mIcon:Landroidx/car/app/model/CarIcon;

.field mIsLoading:Z

.field mMessage:Landroidx/car/app/model/CarText;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>(Landroidx/car/app/model/CarText;)V
    .locals 1
    .param p1, "message"    # Landroidx/car/app/model/CarText;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mActionList:Ljava/util/List;

    .line 437
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mMessage:Landroidx/car/app/model/CarText;

    .line 438
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mActionList:Ljava/util/List;

    .line 427
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mMessage:Landroidx/car/app/model/CarText;

    .line 428
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;

    .line 380
    iget-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mActionList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_BODY_WITH_PRIMARY_ACTION:Landroidx/car/app/model/constraints/ActionsConstraints;

    iget-object v1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mActionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 382
    return-object p0
.end method

.method public build()Landroidx/car/app/model/MessageTemplate;
    .locals 3

    .line 400
    iget-boolean v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mIsLoading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    if-nez v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Template in a loading state can not have an icon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mMessage:Landroidx/car/app/model/CarText;

    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 408
    iget-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mDebugString:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mDebugString:Ljava/lang/String;

    .line 409
    .local v0, "debugString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mDebugCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mDebugCause:Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 414
    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mDebugMessage:Landroidx/car/app/model/CarText;

    .line 417
    :cond_4
    new-instance v1, Landroidx/car/app/model/MessageTemplate;

    invoke-direct {v1, p0}, Landroidx/car/app/model/MessageTemplate;-><init>(Landroidx/car/app/model/MessageTemplate$Builder;)V

    return-object v1

    .line 405
    .end local v0    # "debugString":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 361
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_SIMPLE:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 362
    iput-object p1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 363
    return-object p0
.end method

.method public setDebugMessage(Ljava/lang/String;)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 1
    .param p1, "debugMessage"    # Ljava/lang/String;

    .line 293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mDebugString:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public setDebugMessage(Ljava/lang/Throwable;)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mDebugCause:Ljava/lang/Throwable;

    .line 276
    return-object p0
.end method

.method public setHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 337
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 339
    iput-object p1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 340
    return-object p0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 2
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 316
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 317
    iput-object p1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 318
    return-object p0
.end method

.method public setLoading(Z)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 0
    .param p1, "isLoading"    # Z
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 238
    iput-boolean p1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mIsLoading:Z

    .line 239
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/MessageTemplate$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 256
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 257
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/MessageTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 258
    return-object p0
.end method
