.class public final Landroidx/car/app/model/CarIcon$Builder;
.super Ljava/lang/Object;
.source "CarIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/CarIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mTint:Landroidx/car/app/model/CarColor;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroidx/car/app/model/CarIcon;)V
    .locals 1
    .param p1, "carIcon"    # Landroidx/car/app/model/CarIcon;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {p1}, Landroidx/car/app/model/CarIcon;->getType()I

    move-result v0

    iput v0, p0, Landroidx/car/app/model/CarIcon$Builder;->mType:I

    .line 416
    invoke-virtual {p1}, Landroidx/car/app/model/CarIcon;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarIcon$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 417
    invoke-virtual {p1}, Landroidx/car/app/model/CarIcon;->getTint()Landroidx/car/app/model/CarColor;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/CarIcon$Builder;->mTint:Landroidx/car/app/model/CarColor;

    .line 418
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 2
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarIconConstraints;->checkSupportedIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/graphics/drawable/IconCompat;

    .line 402
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/CarIcon$Builder;->mType:I

    .line 403
    iput-object p1, p0, Landroidx/car/app/model/CarIcon$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/CarIcon$Builder;->mTint:Landroidx/car/app/model/CarColor;

    .line 405
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/CarIcon;
    .locals 4

    .line 374
    new-instance v0, Landroidx/car/app/model/CarIcon;

    iget-object v1, p0, Landroidx/car/app/model/CarIcon$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v2, p0, Landroidx/car/app/model/CarIcon$Builder;->mTint:Landroidx/car/app/model/CarColor;

    iget v3, p0, Landroidx/car/app/model/CarIcon$Builder;->mType:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/car/app/model/CarIcon;-><init>(Landroidx/core/graphics/drawable/IconCompat;Landroidx/car/app/model/CarColor;I)V

    return-object v0
.end method

.method public setTint(Landroidx/car/app/model/CarColor;)Landroidx/car/app/model/CarIcon$Builder;
    .locals 2
    .param p1, "tint"    # Landroidx/car/app/model/CarColor;

    .line 366
    sget-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarColorConstraints;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/constraints/CarColorConstraints;->validateOrThrow(Landroidx/car/app/model/CarColor;)V

    .line 367
    iput-object p1, p0, Landroidx/car/app/model/CarIcon$Builder;->mTint:Landroidx/car/app/model/CarColor;

    .line 368
    return-object p0
.end method
