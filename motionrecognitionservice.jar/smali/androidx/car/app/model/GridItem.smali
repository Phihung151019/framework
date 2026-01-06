.class public final Landroidx/car/app/model/GridItem;
.super Ljava/lang/Object;
.source "GridItem.java"

# interfaces
.implements Landroidx/car/app/model/Item;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/GridItem$Builder;,
        Landroidx/car/app/model/GridItem$GridItemImageType;
    }
.end annotation


# static fields
.field public static final IMAGE_TYPE_ICON:I = 0x1

.field public static final IMAGE_TYPE_LARGE:I = 0x2


# instance fields
.field private final mBadge:Landroidx/car/app/model/Badge;

.field private final mImage:Landroidx/car/app/model/CarIcon;

.field private final mImageType:I

.field private final mIsLoading:Z

.field private final mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

.field private final mText:Landroidx/car/app/model/CarText;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/GridItem;->mIsLoading:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mTitle:Landroidx/car/app/model/CarText;

    .line 216
    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mText:Landroidx/car/app/model/CarText;

    .line 217
    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mImage:Landroidx/car/app/model/CarIcon;

    .line 218
    const/4 v1, 0x2

    iput v1, p0, Landroidx/car/app/model/GridItem;->mImageType:I

    .line 219
    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 220
    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mBadge:Landroidx/car/app/model/Badge;

    .line 221
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/GridItem$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/GridItem$Builder;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-boolean v0, p1, Landroidx/car/app/model/GridItem$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/model/GridItem;->mIsLoading:Z

    .line 204
    iget-object v0, p1, Landroidx/car/app/model/GridItem$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mTitle:Landroidx/car/app/model/CarText;

    .line 205
    iget-object v0, p1, Landroidx/car/app/model/GridItem$Builder;->mText:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mText:Landroidx/car/app/model/CarText;

    .line 206
    iget-object v0, p1, Landroidx/car/app/model/GridItem$Builder;->mImage:Landroidx/car/app/model/CarIcon;

    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mImage:Landroidx/car/app/model/CarIcon;

    .line 207
    iget v0, p1, Landroidx/car/app/model/GridItem$Builder;->mImageType:I

    iput v0, p0, Landroidx/car/app/model/GridItem;->mImageType:I

    .line 208
    iget-object v0, p1, Landroidx/car/app/model/GridItem$Builder;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    .line 209
    iget-object v0, p1, Landroidx/car/app/model/GridItem$Builder;->mBadge:Landroidx/car/app/model/Badge;

    iput-object v0, p0, Landroidx/car/app/model/GridItem;->mBadge:Landroidx/car/app/model/Badge;

    .line 210
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 186
    return v0

    .line 188
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/GridItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 189
    return v2

    .line 191
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/GridItem;

    .line 193
    .local v1, "otherGridItem":Landroidx/car/app/model/GridItem;
    iget-boolean v3, p0, Landroidx/car/app/model/GridItem;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/model/GridItem;->mIsLoading:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/GridItem;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/GridItem;->mTitle:Landroidx/car/app/model/CarText;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/GridItem;->mText:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/GridItem;->mText:Landroidx/car/app/model/CarText;

    .line 195
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/GridItem;->mImage:Landroidx/car/app/model/CarIcon;

    iget-object v4, v1, Landroidx/car/app/model/GridItem;->mImage:Landroidx/car/app/model/CarIcon;

    .line 196
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/model/GridItem;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 197
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/model/GridItem;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

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

    iget-object v3, p0, Landroidx/car/app/model/GridItem;->mBadge:Landroidx/car/app/model/Badge;

    iget-object v4, v1, Landroidx/car/app/model/GridItem;->mBadge:Landroidx/car/app/model/Badge;

    .line 198
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/car/app/model/GridItem;->mImageType:I

    iget v4, v1, Landroidx/car/app/model/GridItem;->mImageType:I

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 193
    :goto_2
    return v0
.end method

.method public getBadge()Landroidx/car/app/model/Badge;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation

    .line 158
    iget-object v0, p0, Landroidx/car/app/model/GridItem;->mBadge:Landroidx/car/app/model/Badge;

    return-object v0
.end method

.method public getImage()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/car/app/model/GridItem;->mImage:Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .line 136
    iget v0, p0, Landroidx/car/app/model/GridItem;->mImageType:I

    return v0
.end method

.method public getOnClickDelegate()Landroidx/car/app/model/OnClickDelegate;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/car/app/model/GridItem;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    return-object v0
.end method

.method public getText()Landroidx/car/app/model/CarText;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/car/app/model/GridItem;->mText:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/car/app/model/GridItem;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 179
    iget-boolean v0, p0, Landroidx/car/app/model/GridItem;->mIsLoading:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/model/GridItem;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v3, p0, Landroidx/car/app/model/GridItem;->mImage:Landroidx/car/app/model/CarIcon;

    iget v0, p0, Landroidx/car/app/model/GridItem;->mImageType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroidx/car/app/model/GridItem;->mOnClickDelegate:Landroidx/car/app/model/OnClickDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Landroidx/car/app/model/GridItem;->mBadge:Landroidx/car/app/model/Badge;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroidx/car/app/model/GridItem;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/GridItem;->mTitle:Landroidx/car/app/model/CarText;

    .line 165
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/GridItem;->mText:Landroidx/car/app/model/CarText;

    .line 167
    invoke-static {v1}, Landroidx/car/app/model/CarText;->toShortString(Landroidx/car/app/model/CarText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/GridItem;->mImage:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/app/model/GridItem;->mIsLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", badge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/GridItem;->mBadge:Landroidx/car/app/model/Badge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    return-object v0
.end method
