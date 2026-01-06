.class public final Landroidx/car/app/navigation/model/MapController$Builder;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mMapActionStrip:Landroidx/car/app/model/ActionStrip;

.field mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/navigation/model/MapController;
    .locals 1

    .line 158
    new-instance v0, Landroidx/car/app/navigation/model/MapController;

    invoke-direct {v0, p0}, Landroidx/car/app/navigation/model/MapController;-><init>(Landroidx/car/app/navigation/model/MapController$Builder;)V

    return-object v0
.end method

.method public setMapActionStrip(Landroidx/car/app/model/ActionStrip;)Landroidx/car/app/navigation/model/MapController$Builder;
    .locals 2
    .param p1, "actionStrip"    # Landroidx/car/app/model/ActionStrip;

    .line 148
    sget-object v0, Landroidx/car/app/model/constraints/ActionsConstraints;->ACTIONS_CONSTRAINTS_MAP:Landroidx/car/app/model/constraints/ActionsConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/ActionStrip;

    invoke-virtual {v1}, Landroidx/car/app/model/ActionStrip;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/ActionsConstraints;->validateOrThrow(Ljava/util/List;)V

    .line 149
    iput-object p1, p0, Landroidx/car/app/navigation/model/MapController$Builder;->mMapActionStrip:Landroidx/car/app/model/ActionStrip;

    .line 150
    return-object p0
.end method

.method public setPanModeListener(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/MapController$Builder;
    .locals 1
    .param p1, "panModeListener"    # Landroidx/car/app/navigation/model/PanModeListener;

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Landroidx/car/app/navigation/model/PanModeDelegateImpl;->create(Landroidx/car/app/navigation/model/PanModeListener;)Landroidx/car/app/navigation/model/PanModeDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/navigation/model/MapController$Builder;->mPanModeDelegate:Landroidx/car/app/navigation/model/PanModeDelegate;

    .line 123
    return-object p0
.end method
