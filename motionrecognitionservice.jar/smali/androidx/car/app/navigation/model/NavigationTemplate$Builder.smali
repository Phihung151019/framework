.class public final Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
.super Ljava/lang/Object;
.source "NavigationTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/NavigationTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mActionStrip:Landroidx/car/app/model/ActionStrip;

.field mBackgroundColor:Landroidx/car/app/model/CarColor;

.field mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

.field mMapActionStrip:Landroidx/car/app/model/ActionStrip;

.field mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

.field mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

.field mPanModeToggle:Landroidx/car/app/model/Toggle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method static synthetic lambda$setPanModeListener$0(Landroidx/car/app/navigation/model/PanModeListener;Z)V
    .locals 0
    .param p0, "panModeListener"    # Landroidx/car/app/navigation/model/PanModeListener;
    .param p1, "isInPanMode"    # Z

    .line 401
    invoke-interface {p0, p1}, Landroidx/car/app/navigation/model/PanModeListener;->onPanModeChanged(Z)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/NavigationTemplate;
    .locals 2

    .line 413
    iget-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Landroidx/car/app/navigation/model/NavigationTemplate;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/NavigationTemplate;-><init>(Landroidx/car/app/navigation/model/NavigationTemplate$Builder;)V

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action strip for this template must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 348
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_NAVIGATION:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 349
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 350
    iput-object p1, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 351
    return-object p0
.end method

.method public setBackgroundColor(Landroidx/car/app/model/CarColor;)Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
    .locals 2
    .param p1, "backgroundColor"    # Landroidx/car/app/model/CarColor;

    .line 301
    sget-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarColorConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarColorConstraints;->validateOrThrow(Landroidx/car/app/model/CarColor;)V

    .line 302
    iput-object p1, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mBackgroundColor:Landroidx/car/app/model/CarColor;

    .line 303
    return-object p0
.end method

.method public setDestinationTravelEstimate(Landroidx/car/app/navigation/model/TravelEstimate;)Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
    .locals 4
    .param p1, "destinationTravelEstimate"    # Landroidx/car/app/navigation/model/TravelEstimate;

    .line 317
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/model/TravelEstimate;

    invoke-virtual {v0}, Landroidx/car/app/navigation/model/TravelEstimate;->getRemainingTimeSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 322
    iput-object p1, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mDestinationTravelEstimate:Landroidx/car/app/navigation/model/TravelEstimate;

    .line 323
    return-object p0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination travel estimate\'s remaining time must be greater or equal to zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMapActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 377
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_MAP:Landroidx/car/app/model/constraints/ActionsConstraints;

    .line 378
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 379
    iput-object p1, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 380
    return-object p0
.end method

.method public setNavigationInfo(Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;)Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
    .locals 1
    .param p1, "navigationInfo"    # Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    .line 289
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mNavigationInfo:Landroidx/car/app/navigation/model/NavigationTemplate$NavigationInfo;

    .line 290
    return-object p0
.end method

.method public setPanModeListener(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/NavigationTemplate$Builder;
    .locals 2
    .param p1, "panModeListener"    # Landroidx/car/app/navigation/model/PanModeListener;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation

    .line 398
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v0, Landroidx/car/app/model/Toggle$Builder;

    new-instance v1, Landroidx/car/app/navigation/model/NavigationTemplate$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/car/app/navigation/model/NavigationTemplate$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/navigation/model/PanModeListener;)V

    invoke-direct {v0, v1}, Landroidx/car/app/model/Toggle$Builder;-><init>(Landroidx/car/app/model/Toggle$OnCheckedChangeListener;)V

    .line 401
    invoke-virtual {v0}, Landroidx/car/app/model/Toggle$Builder;->build()Landroidx/car/app/model/Toggle;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mPanModeToggle:Landroidx/car/app/model/Toggle;

    .line 402
    invoke-static {p1}, Landroidx/car/app/navigation/model/PanModeDelegateImpl;->create(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/PanModeDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/NavigationTemplate$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 403
    return-object p0
.end method
