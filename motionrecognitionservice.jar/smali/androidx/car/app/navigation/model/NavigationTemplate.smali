.class public final Landroidx/car/app/navigation/model/NavigationTemplate;
.super Ljava/lang/Object;
.source "NavigationTemplate.java"

# interfaces
.implements Landroidx/car/app/model/Template;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;,
        Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
    }
.end annotation


# instance fields
.field private final mActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mBackgroundColor:Landroidx/car/app/model/CarColor;

.field private final mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

.field private final mMapActionStrip:Landroidx/car/app/model/ActionStrip;

.field private final mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

.field private final mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

.field private final mPanModeToggle:Landroidx/car/app/model/Toggle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    .line 255
    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 256
    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    .line 257
    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 258
    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 259
    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    .line 260
    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 261
    return-void
.end method

.method constructor <init>(Landroidx/car/app/navigation/model/NavigationTemplate$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/navigation/model/NavigationTemplate$Builder;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iget-object v0, p1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    .line 244
    iget-object v0, p1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 245
    iget-object v0, p1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    .line 246
    iget-object v0, p1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 247
    iget-object v0, p1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 248
    iget-object v0, p1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    .line 249
    iget-object v0, p1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 250
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 225
    return v0

    .line 227
    :cond_0
    instance-of v1, p1, Landroidx/car/app/navigation/model/NavigationTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 228
    return v2

    .line 230
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/navigation/model/NavigationTemplate;

    .line 232
    .local v1, "otherTemplate":Landroidx/car/app/navigation/model/NavigationTemplate;
    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    iget-object v4, v1, Landroidx/car/app/navigation/model/NavigationTemplate;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    iget-object v4, v1, Landroidx/car/app/navigation/model/NavigationTemplate;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 233
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    iget-object v4, v1, Landroidx/car/app/navigation/model/NavigationTemplate;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    .line 234
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/NavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 236
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, v1, Landroidx/car/app/navigation/model/NavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 237
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    iget-object v4, v1, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    .line 238
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 239
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

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

    goto :goto_2

    :cond_4
    move v0, v2

    .line 232
    :goto_2
    return v0
.end method

.method public getActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getBackgroundColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getDestinationTravelEstimate()Landroidx/car/app/navigation/model/TravelEstimate;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    return-object v0
.end method

.method public getMapActionStrip()Landroidx/car/app/model/ActionStrip;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    return-object v0
.end method

.method public getNavigationInfo()Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    return-object v0
.end method

.method public getPanModeDelegate()Landroidx/car/app/navigation/model/PanModeDelegate;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 180
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    return-object v0
.end method

.method public getPanModeToggle()Landroidx/car/app/model/Toggle;
    .locals 1
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 218
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    iget-object v1, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    iget-object v2, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    iget-object v3, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v4, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    iget-object v5, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    iget-object v6, p0, Landroidx/car/app/navigation/model/NavigationTemplate;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 219
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 218
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 213
    const-string v0, "NavigationTemplate"

    return-object v0
.end method
