.class public final Landroidx/car/app/model/Tab$Builder;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mContentId:Ljava/lang/String;

.field mIcon:Landroidx/car/app/model/CarIcon;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/Tab;)V
    .locals 1
    .param p1, "tab"    # Landroidx/car/app/model/Tab;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p1}, Landroidx/car/app/model/Tab;->getContentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Tab$Builder;->mContentId:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroidx/car/app/model/Tab;->getIcon()Landroidx/car/app/model/CarIcon;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Tab$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 234
    invoke-virtual {p1}, Landroidx/car/app/model/Tab;->getTitle()Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Tab$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 235
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/Tab;
    .locals 2

    .line 209
    iget-object v0, p0, Landroidx/car/app/model/Tab$Builder;->mTitle:Landroidx/car/app/model/CarText;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Landroidx/car/app/model/Tab$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Landroidx/car/app/model/Tab$Builder;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Landroidx/car/app/model/Tab;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Tab;-><init>(Landroidx/car/app/model/Tab$Builder;)V

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A content ID must be set for the tab"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A icon must be set for the tab"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A title must be set for the tab"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentId(Ljava/lang/String;)Landroidx/car/app/model/Tab$Builder;
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .line 173
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Landroidx/car/app/model/Tab$Builder;->mContentId:Ljava/lang/String;

    .line 177
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/Tab$Builder;
    .locals 2
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 197
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 198
    iput-object p1, p0, Landroidx/car/app/model/Tab$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 199
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/model/Tab$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    .line 157
    .local v0, "titleText":Landroidx/car/app/model/CarText;
    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    sget-object v1, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    invoke-virtual {v1, v0}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 161
    iput-object v0, p0, Landroidx/car/app/model/Tab$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 162
    return-object p0

    .line 158
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The title cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
