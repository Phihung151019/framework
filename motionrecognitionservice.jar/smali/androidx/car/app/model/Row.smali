.class public final Landroidx/car/app/model/Row;
.super Ljava/lang/Object;
.source "Row.java"

# interfaces
.implements Landroidx/car/app/model/Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Row$Builder;,
        Landroidx/car/app/model/Row$RowImageType;
    }
.end annotation


# static fields
.field public static final IMAGE_TYPE_ICON:I = 0x4

.field public static final IMAGE_TYPE_LARGE:I = 0x2

.field public static final IMAGE_TYPE_SMALL:I = 0x1

.field public static final NO_DECORATION:I = -0x1

.field private static final YOUR_BOAT:Ljava/lang/String; = "\ud83d\udea3"


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mImage:Landroidx/car/app/model/CarIcon;

.field private final mIsBrowsable:Z

.field private final mIsEnabled:Z

.field private final mMetadata:Landroidx/car/app/model/Metadata;

.field private final mNumericDecoration:I

.field private final mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

.field private final mRowImageType:I

.field private final mTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Landroidx/car/app/model/CarText;

.field private final mToggle:Landroidx/car/app/model/Toggle;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Row;->mTitle:Landroidx/car/app/model/CarText;

    .line 321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    .line 322
    iput-object v0, p0, Landroidx/car/app/model/Row;->mImage:Landroidx/car/app/model/CarIcon;

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/app/model/Row;->mActions:Ljava/util/List;

    .line 324
    const/4 v1, -0x1

    iput v1, p0, Landroidx/car/app/model/Row;->mNumericDecoration:I

    .line 325
    iput-object v0, p0, Landroidx/car/app/model/Row;->mToggle:Landroidx/car/app/model/Toggle;

    .line 326
    iput-object v0, p0, Landroidx/car/app/model/Row;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 327
    sget-object v0, Landroidx/car/app/model/Metadata;->EMPTY_METADATA:Landroidx/car/app/model/Metadata;

    iput-object v0, p0, Landroidx/car/app/model/Row;->mMetadata:Landroidx/car/app/model/Metadata;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/Row;->mIsBrowsable:Z

    .line 329
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/Row;->mRowImageType:I

    .line 330
    iput-boolean v0, p0, Landroidx/car/app/model/Row;->mIsEnabled:Z

    .line 331
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Row$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Row$Builder;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iget-object v0, p1, Landroidx/car/app/model/Row$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/Row;->mTitle:Landroidx/car/app/model/CarText;

    .line 306
    iget-object v0, p1, Landroidx/car/app/model/Row$Builder;->mTexts:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    .line 307
    iget-object v0, p1, Landroidx/car/app/model/Row$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/Row;->mImage:Landroidx/car/app/model/CarIcon;

    .line 308
    iget-object v0, p1, Landroidx/car/app/model/Row$Builder;->mActions:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Row;->mActions:Ljava/util/List;

    .line 309
    iget v0, p1, Landroidx/car/app/model/Row$Builder;->mDecoration:I

    iput v0, p0, Landroidx/car/app/model/Row;->mNumericDecoration:I

    .line 310
    iget-object v0, p1, Landroidx/car/app/model/Row$Builder;->mToggle:Landroidx/car/app/model/Toggle;

    iput-object v0, p0, Landroidx/car/app/model/Row;->mToggle:Landroidx/car/app/model/Toggle;

    .line 311
    iget-object v0, p1, Landroidx/car/app/model/Row$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    iput-object v0, p0, Landroidx/car/app/model/Row;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 312
    iget-object v0, p1, Landroidx/car/app/model/Row$Builder;->mMetadata:Landroidx/car/app/model/Metadata;

    iput-object v0, p0, Landroidx/car/app/model/Row;->mMetadata:Landroidx/car/app/model/Metadata;

    .line 313
    iget-boolean v0, p1, Landroidx/car/app/model/Row$Builder;->mIsBrowsable:Z

    iput-boolean v0, p0, Landroidx/car/app/model/Row;->mIsBrowsable:Z

    .line 314
    iget v0, p1, Landroidx/car/app/model/Row$Builder;->mRowImageType:I

    iput v0, p0, Landroidx/car/app/model/Row;->mRowImageType:I

    .line 315
    iget-boolean v0, p1, Landroidx/car/app/model/Row$Builder;->mIsEnabled:Z

    iput-boolean v0, p0, Landroidx/car/app/model/Row;->mIsEnabled:Z

    .line 316
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 284
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 285
    return v0

    .line 287
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/Row;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 288
    return v2

    .line 290
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/Row;

    .line 293
    .local v1, "otherRow":Landroidx/car/app/model/Row;
    iget-object v3, p0, Landroidx/car/app/model/Row;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/Row;->mTitle:Landroidx/car/app/model/CarText;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    .line 294
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/Row;->mImage:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/model/Row;->mImage:Landroidx/car/app/model/CarIcon;

    .line 295
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/Row;->mToggle:Landroidx/car/app/model/Toggle;

    iget-object v4, v1, Landroidx/car/app/model/Row;->mToggle:Landroidx/car/app/model/Toggle;

    .line 296
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/Row;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 297
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/model/Row;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/Row;->mMetadata:Landroidx/car/app/model/Metadata;

    iget-object v4, v1, Landroidx/car/app/model/Row;->mMetadata:Landroidx/car/app/model/Metadata;

    .line 298
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroidx/car/app/model/Row;->mIsBrowsable:Z

    iget-boolean v4, v1, Landroidx/car/app/model/Row;->mIsBrowsable:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroidx/car/app/model/Row;->mRowImageType:I

    iget v4, v1, Landroidx/car/app/model/Row;->mRowImageType:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroidx/car/app/model/Row;->mIsEnabled:Z

    .line 301
    invoke-virtual {v1}, Landroidx/car/app/model/Row;->isEnabled()Z

    move-result v4

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 293
    :goto_2
    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroidx/car/app/model/Row;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getImage()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/car/app/model/Row;->mImage:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getMetadata()Landroidx/car/app/model/Metadata;
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/car/app/model/Row;->mMetadata:Landroidx/car/app/model/Metadata;

    return-object v0
.end method

.method public getNumericDecoration()I
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .line 181
    iget v0, p0, Landroidx/car/app/model/Row;->mNumericDecoration:I

    return v0
.end method

.method public getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/car/app/model/Row;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    return-object v0
.end method

.method public getRowImageType()I
    .locals 1

    .line 165
    iget v0, p0, Landroidx/car/app/model/Row;->mRowImageType:I

    return v0
.end method

.method public getTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/car/app/model/Row;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getToggle()Landroidx/car/app/model/Toggle;
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/car/app/model/Row;->mToggle:Landroidx/car/app/model/Toggle;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 270
    iget-object v0, p0, Landroidx/car/app/model/Row;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v1, p0, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    iget-object v2, p0, Landroidx/car/app/model/Row;->mImage:Landroidx/car/app/model/CarIcon;

    iget-object v3, p0, Landroidx/car/app/model/Row;->mToggle:Landroidx/car/app/model/Toggle;

    iget-object v4, p0, Landroidx/car/app/model/Row;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 275
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroidx/car/app/model/Row;->mMetadata:Landroidx/car/app/model/Metadata;

    iget-boolean v6, p0, Landroidx/car/app/model/Row;->mIsBrowsable:Z

    .line 277
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, p0, Landroidx/car/app/model/Row;->mRowImageType:I

    .line 278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, p0, Landroidx/car/app/model/Row;->mIsEnabled:Z

    .line 279
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 270
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBrowsable()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Landroidx/car/app/model/Row;->mIsBrowsable:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 249
    iget-boolean v0, p0, Landroidx/car/app/model/Row;->mIsEnabled:Z

    return v0
.end method

.method public row()Landroidx/car/app/model/Row;
    .locals 0

    .line 241
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Row;->mTitle:Landroidx/car/app/model/CarText;

    .line 256
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    iget-object v1, p0, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/car/app/model/Row;->mTexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/Row;->mImage:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBrowsable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/Row;->mIsBrowsable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/Row;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public yourBoat()Ljava/lang/CharSequence;
    .locals 1

    .line 235
    const-string v0, "\ud83d\udea3"

    return-object v0
.end method
