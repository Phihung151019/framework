.class public final Landroidx/car/app/suggestion/model/Suggestion$Builder;
.super Ljava/lang/Object;
.source "Suggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/suggestion/model/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mAction:Landroid/app/PendingIntent;

.field mIcon:Landroidx/car/app/model/CarIcon;

.field mId:Ljava/lang/String;

.field mSubtitle:Landroidx/car/app/model/CarText;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/suggestion/model/Suggestion;
    .locals 2

    .line 256
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mTitle:Landroidx/car/app/model/CarText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Landroidx/car/app/suggestion/model/Suggestion;

    invoke-direct {v0, p0}, Landroidx/car/app/suggestion/model/Suggestion;-><init>(Landroidx/car/app/suggestion/model/Suggestion$Builder;)V

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action is a required field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Title is a required field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Identifier is a required field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAction(Landroid/app/PendingIntent;)Landroidx/car/app/suggestion/model/Suggestion$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;

    .line 220
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mAction:Landroid/app/PendingIntent;

    .line 221
    return-object p0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/suggestion/model/Suggestion$Builder;
    .locals 2
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 243
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 244
    iput-object p1, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 245
    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Landroidx/car/app/suggestion/model/Suggestion$Builder;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mId:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/car/app/suggestion/model/Suggestion$Builder;
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mSubtitle:Landroidx/car/app/model/CarText;

    .line 210
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/suggestion/model/Suggestion$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/suggestion/model/Suggestion$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 196
    return-object p0
.end method
