.class public final Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;
.super Ljava/lang/Object;
.source "PlaceListNavigationTemplate.java"

# interfaces
.implements Landroidx/car/app/model/Template;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;
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

.field private final mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

.field private final mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

.field private final mTitle:Landroidx/car/app/model/CarText;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mIsLoading:Z

    .line 264
    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 265
    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 266
    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 267
    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 268
    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 269
    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 270
    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    .line 271
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mTitle:Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 250
    iget-boolean v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mIsLoading:Z

    iput-boolean v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mIsLoading:Z

    .line 251
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 252
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mHeader:Landroidx/car/app/model/Header;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 253
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mHeaderAction:Landroidx/car/app/model/Action;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 254
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 255
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 256
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 257
    iget-object v0, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate$Builder;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    iput-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    .line 258
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 228
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 229
    return v0

    .line 231
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 232
    return v2

    .line 234
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;

    .line 236
    .local v1, "otherTemplate":Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;
    iget-boolean v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mIsLoading:Z

    iget-boolean v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mIsLoading:Z

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    .line 237
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 238
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    .line 239
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 240
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 241
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 242
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

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

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, v2

    .line 243
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v2

    .line 244
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 243
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    iget-object v4, v1, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 245
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    .line 236
    :goto_4
    return v0
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getHeader()Landroidx/car/app/model/Header;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x5
    .end annotation

    .line 134
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    return-object v0
.end method

.method public getHeaderAction()Landroidx/car/app/model/Action;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    return-object v0
.end method

.method public getItemList()Landroidx/car/app/model/ItemList;
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    return-object v0
.end method

.method public getMapActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 169
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getOnContentRefreshDelegate()Landroidx/car/app/model/OnContentRefreshDelegate;
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    return-object v0
.end method

.method public getPanModeDelegate()Landroidx/car/app/navigation/model/PanModeDelegate;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x4
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    return-object v0
.end method

.method public getTitle()Landroidx/car/app/model/CarText;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 221
    iget-object v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mTitle:Landroidx/car/app/model/CarText;

    iget-boolean v1, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mIsLoading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v3, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeaderAction:Landroidx/car/app/model/Action;

    iget-object v4, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v5, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v6, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 222
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v9, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mOnContentRefreshDelegate:Landroidx/car/app/model/OnContentRefreshDelegate;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mHeader:Landroidx/car/app/model/Header;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Landroidx/car/app/navigation/model/PlaceListNavigationTemplate;->mIsLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 216
    const-string v0, "PlaceListNavigationTemplate"

    return-object v0
.end method
