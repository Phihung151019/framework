.class public final Landroidx/car/app/model/ModelUtils;
.super Ljava/lang/Object;
.source "ModelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method private static checkCarTextHasSpanType(Landroidx/car/app/model/CarText;Ljava/lang/Class;)Z
    .locals 9
    .param p0, "carText"    # Landroidx/car/app/model/CarText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/model/CarText;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/text/style/CharacterStyle;",
            ">;)Z"
        }
    .end annotation

    .line 165
    .local p1, "spanType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/text/style/CharacterStyle;>;"
    invoke-virtual {p0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/car/app/model/CarText;->toCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 169
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 170
    .local v5, "span":Ljava/lang/Object;
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 171
    .local v6, "start":I
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 172
    .local v7, "end":I
    invoke-virtual {p1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ltz v6, :cond_1

    if-eq v6, v7, :cond_1

    .line 175
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 176
    const/4 v1, 0x1

    return v1

    .line 169
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_2
    return v1
.end method

.method private static checkRowHasSpanType(Landroidx/car/app/model/Row;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "row"    # Landroidx/car/app/model/Row;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/model/Row;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/text/style/CharacterStyle;",
            ">;)Z"
        }
    .end annotation

    .line 143
    .local p1, "spanType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/text/style/CharacterStyle;>;"
    invoke-virtual {p0}, Landroidx/car/app/model/Row;->getTitle()Landroidx/car/app/model/CarText;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    .line 144
    .local v0, "title":Landroidx/car/app/model/CarText;
    invoke-static {v0, p1}, Landroidx/car/app/model/ModelUtils;->checkCarTextHasSpanType(Landroidx/car/app/model/CarText;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 145
    return v2

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroidx/car/app/model/Row;->getTexts()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "texts":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/CarText;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/car/app/model/CarText;

    .line 151
    .local v4, "text":Landroidx/car/app/model/CarText;
    invoke-static {v4, p1}, Landroidx/car/app/model/ModelUtils;->checkCarTextHasSpanType(Landroidx/car/app/model/CarText;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    return v2

    .line 149
    .end local v4    # "text":Landroidx/car/app/model/CarText;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static validateAllNonBrowsableRowsHaveDistance(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p0, "rows":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    const/4 v0, 0x0

    .line 47
    .local v0, "spanSetCount":I
    const/4 v1, 0x0

    .line 48
    .local v1, "nonBrowsableRowCount":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/app/model/Item;

    .line 49
    .local v3, "rowObj":Landroidx/car/app/model/Item;
    instance-of v4, v3, Landroidx/car/app/model/Row;

    if-eqz v4, :cond_2

    .line 52
    move-object v4, v3

    check-cast v4, Landroidx/car/app/model/Row;

    .line 54
    .local v4, "row":Landroidx/car/app/model/Row;
    invoke-virtual {v4}, Landroidx/car/app/model/Row;->isBrowsable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 58
    :cond_0
    const-class v5, Landroidx/car/app/model/DistanceSpan;

    invoke-static {v4, v5}, Landroidx/car/app/model/ModelUtils;->checkRowHasSpanType(Landroidx/car/app/model/Row;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 61
    .end local v3    # "rowObj":Landroidx/car/app/model/Item;
    .end local v4    # "row":Landroidx/car/app/model/Row;
    :cond_1
    goto :goto_0

    .line 50
    .restart local v3    # "rowObj":Landroidx/car/app/model/Item;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Item in the list is not a Row"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    .end local v3    # "rowObj":Landroidx/car/app/model/Item;
    :cond_3
    if-gt v1, v0, :cond_4

    .line 68
    return-void

    .line 64
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "All non-browsable rows must have a distance span attached to either its title or texts"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static validateAllRowsHaveDistanceOrDuration(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p0, "rows":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Item;

    .line 80
    .local v1, "rowObj":Landroidx/car/app/model/Item;
    instance-of v2, v1, Landroidx/car/app/model/Row;

    if-eqz v2, :cond_2

    .line 83
    move-object v2, v1

    check-cast v2, Landroidx/car/app/model/Row;

    .line 84
    .local v2, "row":Landroidx/car/app/model/Row;
    const-class v3, Landroidx/car/app/model/DistanceSpan;

    invoke-static {v2, v3}, Landroidx/car/app/model/ModelUtils;->checkRowHasSpanType(Landroidx/car/app/model/Row;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Landroidx/car/app/model/DurationSpan;

    .line 85
    invoke-static {v2, v3}, Landroidx/car/app/model/ModelUtils;->checkRowHasSpanType(Landroidx/car/app/model/Row;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "All rows must have either a distance or duration span attached to either its title or texts"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    .end local v2    # "row":Landroidx/car/app/model/Row;
    :cond_1
    :goto_1
    goto :goto_0

    .line 81
    .restart local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Item in the list is not a Row"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_3
    return-void
.end method

.method public static validateAllRowsHaveOnlySmallImages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p0, "rows":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Item;

    .line 101
    .local v1, "rowObj":Landroidx/car/app/model/Item;
    instance-of v2, v1, Landroidx/car/app/model/Row;

    if-eqz v2, :cond_2

    .line 104
    move-object v2, v1

    check-cast v2, Landroidx/car/app/model/Row;

    .line 105
    .local v2, "row":Landroidx/car/app/model/Row;
    invoke-virtual {v2}, Landroidx/car/app/model/Row;->getImage()Landroidx/car/app/model/CarIcon;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/car/app/model/Row;->getRowImageType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Rows must only use small-sized images"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    .end local v2    # "row":Landroidx/car/app/model/Row;
    :cond_1
    :goto_1
    goto :goto_0

    .line 102
    .restart local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Item in the list is not a Row"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_3
    return-void
.end method

.method public static validateNoRowsHaveBothMarkersAndImages(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p0, "rows":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/Item;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Item;

    .line 119
    .local v1, "rowObj":Landroidx/car/app/model/Item;
    instance-of v2, v1, Landroidx/car/app/model/Row;

    if-eqz v2, :cond_4

    .line 122
    move-object v2, v1

    check-cast v2, Landroidx/car/app/model/Row;

    .line 125
    .local v2, "row":Landroidx/car/app/model/Row;
    invoke-virtual {v2}, Landroidx/car/app/model/Row;->getMetadata()Landroidx/car/app/model/Metadata;

    move-result-object v3

    .line 126
    .local v3, "metadata":Landroidx/car/app/model/Metadata;
    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {v2}, Landroidx/car/app/model/Row;->getImage()Landroidx/car/app/model/CarIcon;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v6

    .line 128
    .local v4, "hasImage":Z
    :goto_1
    invoke-virtual {v3}, Landroidx/car/app/model/Metadata;->getPlace()Landroidx/car/app/model/Place;

    move-result-object v7

    .line 129
    .local v7, "place":Landroidx/car/app/model/Place;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/car/app/model/Place;->getMarker()Landroidx/car/app/model/PlaceMarker;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    .line 131
    .local v5, "hasMarker":Z
    :goto_2
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_3

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Rows can\'t have both a marker and an image"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    .end local v2    # "row":Landroidx/car/app/model/Row;
    .end local v3    # "metadata":Landroidx/car/app/model/Metadata;
    .end local v4    # "hasImage":Z
    .end local v5    # "hasMarker":Z
    .end local v7    # "place":Landroidx/car/app/model/Place;
    :cond_3
    :goto_3
    goto :goto_0

    .line 120
    .restart local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Item in the list is not a Row"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    .end local v1    # "rowObj":Landroidx/car/app/model/Item;
    :cond_5
    return-void
.end method
