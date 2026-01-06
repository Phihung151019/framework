.class public final Landroidx/car/app/navigation/model/MessageInfo$Builder;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/MessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mImage:Landroidx/car/app/model/CarIcon;

.field mText:Landroidx/car/app/model/CarText;

.field mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>(Landroidx/car/app/model/CarText;)V
    .locals 1
    .param p1, "title"    # Landroidx/car/app/model/CarText;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 214
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 215
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/MessageInfo;
    .locals 1

    .line 200
    new-instance v0, Landroidx/car/app/navigation/model/MessageInfo;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/MessageInfo;-><init>(Landroidx/car/app/navigation/model/MessageInfo$Builder;)V

    return-object v0
.end method

.method public setImage(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/navigation/model/MessageInfo$Builder;
    .locals 2
    .param p1, "image"    # Landroidx/car/app/model/CarIcon;

    .line 192
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 193
    iput-object p1, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    .line 194
    return-object p0
.end method

.method public setText(Landroidx/car/app/model/CarText;)Landroidx/car/app/navigation/model/MessageInfo$Builder;
    .locals 2
    .param p1, "text"    # Landroidx/car/app/model/CarText;

    .line 170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mText:Landroidx/car/app/model/CarText;

    .line 171
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mText:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 172
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/MessageInfo$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mText:Landroidx/car/app/model/CarText;

    .line 154
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mText:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 155
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/car/app/navigation/model/MessageInfo$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 136
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mTitle:Landroidx/car/app/model/CarText;

    .line 137
    sget-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    iget-object v1, p0, Landroidx/car/app/navigation/model/MessageInfo$Builder;->mTitle:Landroidx/car/app/model/CarText;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->validateOrThrow(Landroidx/car/app/model/CarText;)V

    .line 138
    return-object p0
.end method
