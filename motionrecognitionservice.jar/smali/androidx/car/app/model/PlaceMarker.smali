.class public final Landroidx/car/app/model/PlaceMarker;
.super Ljava/lang/Object;
.source "PlaceMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/PlaceMarker$Builder;,
        Landroidx/car/app/model/PlaceMarker$MarkerIconType;
    }
.end annotation


# static fields
.field private static final MAX_LABEL_LENGTH:I = 0x3

.field public static final TYPE_ICON:I = 0x0

.field public static final TYPE_IMAGE:I = 0x1


# instance fields
.field private final mColor:Landroidx/car/app/model/CarColor;

.field private final mIcon:Landroidx/car/app/model/CarIcon;

.field private final mIconType:I

.field private final mLabel:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 161
    const/4 v1, 0x0

    iput v1, p0, Landroidx/car/app/model/PlaceMarker;->mIconType:I

    .line 162
    iput-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    .line 163
    iput-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mColor:Landroidx/car/app/model/CarColor;

    .line 164
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/PlaceMarker$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/PlaceMarker$Builder;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget-object v0, p1, Landroidx/car/app/model/PlaceMarker$Builder;->mIcon:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 153
    iget v0, p1, Landroidx/car/app/model/PlaceMarker$Builder;->mIconType:I

    iput v0, p0, Landroidx/car/app/model/PlaceMarker;->mIconType:I

    .line 154
    iget-object v0, p1, Landroidx/car/app/model/PlaceMarker$Builder;->mLabel:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    .line 155
    iget-object v0, p1, Landroidx/car/app/model/PlaceMarker$Builder;->mColor:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mColor:Landroidx/car/app/model/CarColor;

    .line 156
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 138
    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/PlaceMarker;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 141
    return v2

    .line 143
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/PlaceMarker;

    .line 145
    .local v1, "otherMarker":Landroidx/car/app/model/PlaceMarker;
    iget-object v3, p0, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    .line 146
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/PlaceMarker;->mColor:Landroidx/car/app/model/CarColor;

    iget-object v4, v1, Landroidx/car/app/model/PlaceMarker;->mColor:Landroidx/car/app/model/CarColor;

    .line 147
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/car/app/model/PlaceMarker;->mIconType:I

    iget v4, v1, Landroidx/car/app/model/PlaceMarker;->mIconType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 145
    :goto_0
    return v0
.end method

.method public getColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getIconType()I
    .locals 1

    .line 95
    iget v0, p0, Landroidx/car/app/model/PlaceMarker;->mIconType:I

    return v0
.end method

.method public getLabel()Landroidx/car/app/model/CarText;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 132
    iget-object v0, p0, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v1, p0, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    iget-object v2, p0, Landroidx/car/app/model/PlaceMarker;->mColor:Landroidx/car/app/model/CarColor;

    iget v3, p0, Landroidx/car/app/model/PlaceMarker;->mIconType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    iget-object v1, p0, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Landroidx/car/app/model/PlaceMarker;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v1}, Landroidx/car/app/model/CarIcon;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/car/app/model/PlaceMarker;->mLabel:Landroidx/car/app/model/CarText;

    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method
