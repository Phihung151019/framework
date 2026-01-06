.class public final Landroidx/car/app/model/GridTemplate;
.super Ljava/lang/Object;
.source "GridTemplate.java"

# interfaces
.implements Landroidx/car/app/model/Template;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/GridTemplate$Builder;,
        Landroidx/car/app/model/GridTemplate$ItemImageShape;,
        Landroidx/car/app/model/GridTemplate$ItemSize;
    }
.end annotation


# static fields
.field public static final ITEM_IMAGE_SHAPE_CIRCLE:I = 0x2
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation
.end field

.field public static final ITEM_IMAGE_SHAPE_UNSET:I = 0x1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation
.end field

.field public static final ITEM_SIZE_LARGE:I = 0x4
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation
.end field

.field public static final ITEM_SIZE_MEDIUM:I = 0x2
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation
.end field

.field public static final ITEM_SIZE_SMALL:I = 0x1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation
.end field


# instance fields
.field private final mActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderAction:Landroidx/car/app/model/Action;

.field private final mIsLoading:Z

.field private final mItemImageShape:I

.field private final mItemSize:I

.field private final mSingleList:Landroidx/car/app/model/ItemList;

.field private final mTitle:Landroidx/car/app/model/CarText;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/model/GridTemplate;->mIsLoading:Z

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 299
    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 300
    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mSingleList:Landroidx/car/app/model/ItemList;

    .line 301
    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mActions:Ljava/util/List;

    .line 303
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/GridTemplate;->mItemSize:I

    .line 304
    iput v0, p0, Landroidx/car/app/model/GridTemplate;->mItemImageShape:I

    .line 305
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/GridTemplate$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/GridTemplate$Builder;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iget-boolean v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/model/GridTemplate;->mIsLoading:Z

    .line 285
    iget-object v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 286
    iget-object v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 287
    iget-object v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mSingleList:Landroidx/car/app/model/ItemList;

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mSingleList:Landroidx/car/app/model/ItemList;

    .line 288
    iget-object v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 289
    iget-object v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mActions:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->unmodifiableCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/GridTemplate;->mActions:Ljava/util/List;

    .line 290
    iget v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mItemSize:I

    iput v0, p0, Landroidx/car/app/model/GridTemplate;->mItemSize:I

    .line 291
    iget v0, p1, Landroidx/car/app/model/GridTemplate$Builder;->mItemImageShape:I

    iput v0, p0, Landroidx/car/app/model/GridTemplate;->mItemImageShape:I

    .line 292
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 265
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 266
    return v0

    .line 268
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/GridTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 269
    return v2

    .line 271
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/GridTemplate;

    .line 273
    .local v1, "otherTemplate":Landroidx/car/app/model/GridTemplate;
    iget-boolean v3, p0, Landroidx/car/app/model/GridTemplate;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/model/GridTemplate;->mIsLoading:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/GridTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/model/GridTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 274
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/GridTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, v1, Landroidx/car/app/model/GridTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 275
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/GridTemplate;->mSingleList:Landroidx/car/app/model/ItemList;

    iget-object v4, v1, Landroidx/car/app/model/GridTemplate;->mSingleList:Landroidx/car/app/model/ItemList;

    .line 276
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/GridTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/model/GridTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 277
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/GridTemplate;->mActions:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/model/GridTemplate;->mActions:Ljava/util/List;

    .line 278
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/car/app/model/GridTemplate;->mItemSize:I

    iget v4, v1, Landroidx/car/app/model/GridTemplate;->mItemSize:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/model/GridTemplate;->mItemImageShape:I

    iget v4, v1, Landroidx/car/app/model/GridTemplate;->mItemImageShape:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 273
    :goto_0
    return v0
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/car/app/model/GridTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
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

    .line 222
    iget-object v0, p0, Landroidx/car/app/model/GridTemplate;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderAction()Landroidx/car/app/model/Action;
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/car/app/model/GridTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public getItemImageShape()I
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation

    .line 248
    iget v0, p0, Landroidx/car/app/model/GridTemplate;->mItemImageShape:I

    return v0
.end method

.method public getItemSize()I
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x7
    .end annotation

    .line 234
    iget v0, p0, Landroidx/car/app/model/GridTemplate;->mItemSize:I

    return v0
.end method

.method public getSingleList()Landroidx/car/app/model/ItemList;
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/car/app/model/GridTemplate;->mSingleList:Landroidx/car/app/model/ItemList;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/car/app/model/GridTemplate;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 259
    iget-boolean v0, p0, Landroidx/car/app/model/GridTemplate;->mIsLoading:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/model/GridTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v3, p0, Landroidx/car/app/model/GridTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, p0, Landroidx/car/app/model/GridTemplate;->mSingleList:Landroidx/car/app/model/ItemList;

    iget-object v5, p0, Landroidx/car/app/model/GridTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget v0, p0, Landroidx/car/app/model/GridTemplate;->mItemSize:I

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroidx/car/app/model/GridTemplate;->mItemImageShape:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 259
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Landroidx/car/app/model/GridTemplate;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 254
    const-string v0, "GridTemplate"

    return-object v0
.end method
