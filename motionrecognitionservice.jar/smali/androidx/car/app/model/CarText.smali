.class public final Landroidx/car/app/model/CarText;
.super Ljava/lang/Object;
.source "CarText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/CarText$Builder;,
        Landroidx/car/app/model/CarText$SpanWrapper;
    }
.end annotation


# instance fields
.field private final mSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText$SpanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpansForVariants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText$SpanWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mText:Ljava/lang/String;

.field private final mTextVariants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string v0, ""

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    .line 202
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/CarText$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroidx/car/app/model/CarText$Builder;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iget-object v0, p1, Landroidx/car/app/model/CarText$Builder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Landroidx/car/app/model/CarText$Builder;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroidx/car/app/model/CarText;->getSpans(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    .line 215
    iget-object v0, p1, Landroidx/car/app/model/CarText$Builder;->mTextVariants:Ljava/util/List;

    .line 216
    .local v0, "textVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, "spanList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroidx/car/app/model/CarText$SpanWrapper;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 219
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 220
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {v4}, Landroidx/car/app/model/CarText;->getSpans(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v4    # "text":Ljava/lang/CharSequence;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "i":I
    :cond_0
    invoke-static {v1}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    .line 224
    invoke-static {v2}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    .line 225
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    .line 206
    invoke-static {p1}, Landroidx/car/app/model/CarText;->getSpans(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    .line 209
    return-void
.end method

.method public static create(Ljava/lang/CharSequence;)Landroidx/car/app/model/CarText;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 111
    new-instance v0, Landroidx/car/app/model/CarText;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroidx/car/app/model/CarText;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static getCharSequence(Ljava/lang/String;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText$SpanWrapper;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 242
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/CarText$SpanWrapper;>;"
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 243
    .local v0, "spannableString":Landroid/text/SpannableString;
    invoke-static {p1}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/model/CarText$SpanWrapper;

    .line 244
    .local v2, "spanWrapper":Landroidx/car/app/model/CarText$SpanWrapper;
    nop

    .line 245
    invoke-virtual {v2}, Landroidx/car/app/model/CarText$SpanWrapper;->getCarSpan()Landroidx/car/app/model/CarSpan;

    move-result-object v3

    .line 246
    invoke-virtual {v2}, Landroidx/car/app/model/CarText$SpanWrapper;->getStart()I

    move-result v4

    .line 247
    invoke-virtual {v2}, Landroidx/car/app/model/CarText$SpanWrapper;->getEnd()I

    move-result v5

    .line 248
    invoke-virtual {v2}, Landroidx/car/app/model/CarText$SpanWrapper;->getFlags()I

    move-result v6

    .line 244
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 249
    .end local v2    # "spanWrapper":Landroidx/car/app/model/CarText$SpanWrapper;
    goto :goto_0

    .line 250
    :cond_0
    return-object v0
.end method

.method private static getSpans(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText$SpanWrapper;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/CarText$SpanWrapper;>;"
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 230
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    .line 232
    .local v1, "spanned":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 233
    .local v5, "span":Ljava/lang/Object;
    instance-of v6, v5, Landroidx/car/app/model/CarSpan;

    if-eqz v6, :cond_0

    .line 234
    new-instance v6, Landroidx/car/app/model/CarText$SpanWrapper;

    move-object v7, v5

    check-cast v7, Landroidx/car/app/model/CarSpan;

    invoke-direct {v6, v1, v7}, Landroidx/car/app/model/CarText$SpanWrapper;-><init>(Landroid/text/Spanned;Landroidx/car/app/model/CarSpan;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v5    # "span":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "spanned":Landroid/text/Spanned;
    :cond_1
    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static isNullOrEmpty(Landroidx/car/app/model/CarText;)Z
    .locals 1
    .param p0, "carText"    # Landroidx/car/app/model/CarText;

    .line 98
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/car/app/model/CarText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Landroidx/car/app/model/CarText;

    .line 194
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/car/app/model/CarText;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/utils/StringUtils;->shortenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 256
    return v0

    .line 258
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/CarText;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 259
    return v2

    .line 261
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/CarText;

    .line 262
    .local v1, "otherText":Landroidx/car/app/model/CarText;
    iget-object v3, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    iget-object v4, v1, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    .line 263
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    .line 264
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    .line 265
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 262
    :goto_0
    return v0
.end method

.method public getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText$SpanWrapper;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    return-object v0
.end method

.method public getSpansForVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText$SpanWrapper;",
            ">;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "charSequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 166
    iget-object v2, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2, v3}, Landroidx/car/app/model/CarText;->getCharSequence(Ljava/lang/String;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 270
    iget-object v0, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    iget-object v2, p0, Landroidx/car/app/model/CarText;->mTextVariants:Ljava/util/List;

    iget-object v3, p0, Landroidx/car/app/model/CarText;->mSpansForVariants:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .line 144
    iget-object v0, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroidx/car/app/model/CarText;->mSpans:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/car/app/model/CarText;->getCharSequence(Ljava/lang/String;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/car/app/model/CarText;->mText:Ljava/lang/String;

    return-object v0
.end method
