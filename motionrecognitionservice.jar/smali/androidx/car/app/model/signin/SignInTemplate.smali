.class public final Landroidx/car/app/model/signin/SignInTemplate;
.super Ljava/lang/Object;
.source "SignInTemplate.java"

# interfaces
.implements Landroidx/car/app/model/Template;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;,
        Landroidx/car/app/model/signin/SignInTemplate$Builder;
    }
.end annotation


# instance fields
.field private final mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mAdditionalText:Landroidx/car/app/model/CarText;

.field private final mHeaderAction:Landroidx/car/app/model/Action;

.field private final mInstructions:Landroidx/car/app/model/CarText;

.field private final mIsLoading:Z

.field private final mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mIsLoading:Z

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 217
    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 218
    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mInstructions:Landroidx/car/app/model/CarText;

    .line 219
    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mAdditionalText:Landroidx/car/app/model/CarText;

    .line 220
    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionList:Ljava/util/List;

    .line 222
    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    .line 223
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/signin/SignInTemplate$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/signin/SignInTemplate$Builder;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-boolean v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mIsLoading:Z

    .line 204
    iget-object v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 205
    iget-object v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 206
    iget-object v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mInstructions:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mInstructions:Landroidx/car/app/model/CarText;

    .line 207
    iget-object v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mAdditionalText:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mAdditionalText:Landroidx/car/app/model/CarText;

    .line 208
    iget-object v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 209
    iget-object v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mActionList:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionList:Ljava/util/List;

    .line 210
    iget-object v0, p1, Landroidx/car/app/model/signin/SignInTemplate$Builder;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    iput-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    .line 211
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 165
    return v0

    .line 168
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/signin/SignInTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 169
    return v2

    .line 172
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/signin/SignInTemplate;

    .line 173
    .local v1, "that":Landroidx/car/app/model/signin/SignInTemplate;
    iget-boolean v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mIsLoading:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 174
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 175
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mInstructions:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mInstructions:Landroidx/car/app/model/CarText;

    .line 176
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mAdditionalText:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mAdditionalText:Landroidx/car/app/model/CarText;

    .line 177
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 178
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionList:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mActionList:Ljava/util/List;

    .line 179
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    iget-object v4, v1, Landroidx/car/app/model/signin/SignInTemplate;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    .line 180
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 173
    :goto_0
    return v0
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionList:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalText()Landroidx/car/app/model/CarText;
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mAdditionalText:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getHeaderAction()Landroidx/car/app/model/Action;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public getInstructions()Landroidx/car/app/model/CarText;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mInstructions:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getSignInMethod()Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 185
    iget-boolean v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mIsLoading:Z

    .line 186
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/model/signin/SignInTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v3, p0, Landroidx/car/app/model/signin/SignInTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, p0, Landroidx/car/app/model/signin/SignInTemplate;->mInstructions:Landroidx/car/app/model/CarText;

    iget-object v5, p0, Landroidx/car/app/model/signin/SignInTemplate;->mAdditionalText:Landroidx/car/app/model/CarText;

    iget-object v6, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v7, p0, Landroidx/car/app/model/signin/SignInTemplate;->mActionList:Ljava/util/List;

    iget-object v8, p0, Landroidx/car/app/model/signin/SignInTemplate;->mSignInMethod:Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroidx/car/app/model/signin/SignInTemplate;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 199
    const-string v0, "SignInTemplate"

    return-object v0
.end method
