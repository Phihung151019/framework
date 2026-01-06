.class public final Landroidx/car/app/model/signin/ProviderSignInMethod;
.super Ljava/lang/Object;
.source "ProviderSignInMethod.java"

# interfaces
.implements Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x2
.end annotation


# instance fields
.field private final mAction:Landroidx/car/app/model/Action;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/signin/ProviderSignInMethod;->mAction:Landroidx/car/app/model/Action;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/Action;)V
    .locals 2
    .param p1, "action"    # Landroidx/car/app/model/Action;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Action;

    invoke-virtual {v0}, Landroidx/car/app/model/Action;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroidx/car/app/model/Action;->getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/OnClickDelegate;

    invoke-interface {v0}, Landroidx/car/app/model/OnClickDelegate;->isParkedOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Landroidx/car/app/model/signin/ProviderSignInMethod;->mAction:Landroidx/car/app/model/Action;

    .line 71
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The action must use a ParkedOnlyOnClickListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The action must not be a standard action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/signin/ProviderSignInMethod;

    if-nez v0, :cond_1

    .line 94
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/signin/ProviderSignInMethod;

    .line 98
    .local v0, "that":Landroidx/car/app/model/signin/ProviderSignInMethod;
    iget-object v1, p0, Landroidx/car/app/model/signin/ProviderSignInMethod;->mAction:Landroidx/car/app/model/Action;

    iget-object v2, v0, Landroidx/car/app/model/signin/ProviderSignInMethod;->mAction:Landroidx/car/app/model/Action;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAction()Landroidx/car/app/model/Action;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/car/app/model/signin/ProviderSignInMethod;->mAction:Landroidx/car/app/model/Action;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/car/app/model/signin/ProviderSignInMethod;->mAction:Landroidx/car/app/model/Action;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/signin/ProviderSignInMethod;->mAction:Landroidx/car/app/model/Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
