.class public final Landroidx/car/app/navigation/model/MapController;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/MapController$Builder;
    }
.end annotation


# instance fields
.field private final mMapActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapController;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 56
    iput-object v0, p0, Landroidx/car/app/navigation/model/MapController;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 57
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/MapController$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/MapController$Builder;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Landroidx/car/app/navigation/model/MapController$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapController;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 50
    iget-object v0, p1, Landroidx/car/app/navigation/model/MapController$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapController;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 89
    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/MapController;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 92
    return v2

    .line 94
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/MapController;

    .line 96
    .local v1, "otherComponent":Landroidx/car/app/navigation/model/MapController;
    iget-object v3, p0, Landroidx/car/app/navigation/model/MapController;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/navigation/model/MapController;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

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

    iget-object v3, p0, Landroidx/car/app/navigation/model/MapController;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/MapController;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 97
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 96
    :goto_2
    return v0
.end method

.method public getMapActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapController;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getPanModeDelegate()Landroidx/car/app/navigation/model/PanModeDelegate;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapController;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/car/app/navigation/model/MapController;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    iget-object v1, p0, Landroidx/car/app/navigation/model/MapController;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
