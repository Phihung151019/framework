.class public final Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;
.super Ljava/lang/Object;
.source "RoutePreviewNavigationTemplate.java"

# interfaces
.implements Landroidx/car/app/model/Template;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;
    }
.end annotation


# instance fields
.field private final mActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mHeader:Landroidx/car/app/model/Header;

.field private final mHeaderAction:Landroidx/car/app/model/Action;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mIsLoading:Z

.field private final mItemList:Landroidx/car/app/model/ItemList;

.field private final mMapActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mNavigateAction:Landroidx/car/app/model/Action;

.field private final mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

.field private final mTitle:Landroidx/car/app/model/CarText;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 265
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mIsLoading:Z

    .line 266
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mNavigateAction:Landroidx/car/app/model/Action;

    .line 267
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 268
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 269
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 270
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 271
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 272
    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 273
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 252
    iget-boolean v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mIsLoading:Z

    .line 253
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mNavigateAction:Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mNavigateAction:Landroidx/car/app/model/Action;

    .line 254
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 255
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mHeader:Landroidx/car/app/model/Header;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 256
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 257
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 258
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 259
    iget-object v0, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    iput-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 260
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 232
    return v0

    .line 234
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 235
    return v2

    .line 237
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;

    .line 239
    .local v1, "otherTemplate":Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;
    iget-boolean v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mIsLoading:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 240
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mNavigateAction:Landroidx/car/app/model/Action;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mNavigateAction:Landroidx/car/app/model/Action;

    .line 241
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 242
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 243
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 244
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 245
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 246
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

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

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    iget-object v4, v1, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 247
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 239
    :goto_2
    return v0
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getHeader()Landroidx/car/app/model/Header;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    return-object v0
.end method

.method public getHeaderAction()Landroidx/car/app/model/Action;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public getItemList()Landroidx/car/app/model/ItemList;
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    return-object v0
.end method

.method public getMapActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getNavigateAction()Landroidx/car/app/model/Action;
    .locals 1

    .line 203
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mNavigateAction:Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public getPanModeDelegate()Landroidx/car/app/navigation/model/PanModeDelegate;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 225
    iget-object v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-boolean v1, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mIsLoading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mNavigateAction:Landroidx/car/app/model/Action;

    iget-object v3, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v4, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v5, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v6, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v7, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 226
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 225
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Landroidx/car/app/navigation/model/RoutePreviewNavigationTemplate;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 220
    const-string v0, "RoutePreviewNavigationTemplate"

    return-object v0
.end method
