.class public final Landroidx/car/app/navigation/model/MapTemplate;
.super Ljava/lang/Object;
.source "MapTemplate.java"

# interfaces
.implements Landroidx/car/app/model/Template;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/MapTemplate$Builder;
    }
.end annotation


# instance fields
.field private final mActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mHeader:Landroidx/car/app/model/Header;

.field private final mItemList:Landroidx/car/app/model/ItemList;

.field private final mMapController:Landroidx/car/app/navigation/model/MapController;

.field private final mPane:Landroidx/car/app/model/Pane;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 91
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    .line 92
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 93
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 94
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 95
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/MapTemplate$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/MapTemplate$Builder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mMapController:Landroidx/car/app/navigation/model/MapController;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 82
    iget-object v0, p1, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mPane:Landroidx/car/app/model/Pane;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    .line 83
    iget-object v0, p1, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mItemList:Landroidx/car/app/model/ItemList;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 84
    iget-object v0, p1, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mHeader:Landroidx/car/app/model/Header;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 85
    iget-object v0, p1, Landroidx/car/app/navigation/model/MapTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 86
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 156
    return v0

    .line 158
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/MapTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 159
    return v2

    .line 161
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/MapTemplate;

    .line 163
    .local v1, "otherTemplate":Landroidx/car/app/navigation/model/MapTemplate;
    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    .line 164
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    .line 165
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    .line 166
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 167
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 163
    :goto_0
    return v0
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getHeader()Landroidx/car/app/model/Header;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    return-object v0
.end method

.method public getItemList()Landroidx/car/app/model/ItemList;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    return-object v0
.end method

.method public getMapController()Landroidx/car/app/navigation/model/MapController;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    return-object v0
.end method

.method public getPane()Landroidx/car/app/model/Pane;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 150
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapTemplate;->mMapController:Landroidx/car/app/navigation/model/MapController;

    iget-object v1, p0, Landroidx/car/app/navigation/model/MapTemplate;->mPane:Landroidx/car/app/model/Pane;

    iget-object v2, p0, Landroidx/car/app/navigation/model/MapTemplate;->mItemList:Landroidx/car/app/model/ItemList;

    iget-object v3, p0, Landroidx/car/app/navigation/model/MapTemplate;->mHeader:Landroidx/car/app/model/Header;

    iget-object v4, p0, Landroidx/car/app/navigation/model/MapTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
