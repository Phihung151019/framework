.class public final Landroidx/car/app/model/Header$Builder;
.super Ljava/lang/Object;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mEndHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field mStartHeaderAction:Landroidx/car/app/model/Action;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/Header$Builder;->mEndHeaderActions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEndHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/Header$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 142
    iget-object v0, p0, Landroidx/car/app/model/Header$Builder;->mEndHeaderActions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object p0
.end method

.method public build()Landroidx/car/app/model/Header;
    .locals 2

    .line 213
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_MULTI_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    iget-object v1, p0, Landroidx/car/app/model/Header$Builder;->mEndHeaderActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Landroidx/car/app/model/Header$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->isNullOrEmpty(Landroidx/car/app/model/CarText;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/model/Header$Builder;->mStartHeaderAction:Landroidx/car/app/model/Action;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either the title or start header action must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    :goto_0
    new-instance v0, Landroidx/car/app/model/Header;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Header;-><init>(Landroidx/car/app/model/Header$Builder;)V

    return-object v0
.end method

.method public setStartHeaderAction(Landroidx/car/app/model/Action;)Landroidx/car/app/model/Header$Builder;
    .locals 2
    .param p1, "headerAction"    # Landroidx/car/app/model/Action;

    .line 161
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_HEADER:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Action;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 163
    iput-object p1, p0, Landroidx/car/app/model/Header$Builder;->mStartHeaderAction:Landroidx/car/app/model/Action;

    .line 164
    return-object p0
.end method

.method public setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/Header$Builder;
    .locals 2
    .param p1, "title"    # Landroidx/car/app/model/CarText;

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Header$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 195
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/model/Header$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 196
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/Header$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 179
    invoke-static {p1}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/app/model/Header$Builder;->setTitle(Landroidx/car/app/model/CarText;)Landroidx/car/app/model/Header$Builder;

    move-result-object v0

    return-object v0
.end method
