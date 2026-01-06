.class public final Landroidx/car/app/model/PlaceMarker$Builder;
.super Ljava/lang/Object;
.source "PlaceMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/PlaceMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mColor:Landroidx/car/app/model/CarColor;

.field mIcon:Landroidx/car/app/model/CarIcon;

.field mIconType:I

.field mLabel:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mIconType:I

    .line 278
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/PlaceMarker;
    .locals 2

    .line 269
    iget-object v0, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mColor:Landroidx/car/app/model/CarColor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mIconType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Color cannot be set for icon set with TYPE_IMAGE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    :goto_0
    new-instance v0, Landroidx/car/app/model/PlaceMarker;

    invoke-direct {v0, p0}, Landroidx/car/app/model/PlaceMarker;-><init>(Landroidx/car/app/model/PlaceMarker$Builder;)V

    return-object v0
.end method

.method public setColor(Landroidx/car/app/model/CarColor;)Landroidx/car/app/model/PlaceMarker$Builder;
    .locals 2
    .param p1, "color"    # Landroidx/car/app/model/CarColor;

    .line 256
    sget-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarColorConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarColorConstraints;->validateOrThrow(Landroidx/car/app/model/CarColor;)V

    .line 257
    iput-object p1, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mColor:Landroidx/car/app/model/CarColor;

    .line 258
    return-object p0
.end method

.method public setIcon(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/PlaceMarker$Builder;
    .locals 2
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;
    .param p2, "iconType"    # I

    .line 199
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 200
    iput-object p1, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 201
    iput p2, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mIconType:I

    .line 202
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroidx/car/app/model/PlaceMarker$Builder;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 228
    invoke-static {p1}, Landroidx/car/app/model/CarText;->create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/PlaceMarker$Builder;->mLabel:Landroidx/car/app/model/CarText;

    .line 229
    return-object p0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Marker label cannot contain more than 3 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
