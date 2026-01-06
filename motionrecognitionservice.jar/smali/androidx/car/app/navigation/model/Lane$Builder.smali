.class public final Landroidx/car/app/navigation/model/Lane$Builder;
.super Ljava/lang/Object;
.source "Lane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/navigation/model/Lane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mDirections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/navigation/model/LaneDirection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/navigation/model/Lane$Builder;->mDirections:Ljava/util/List;

    .line 109
    return-void
.end method


# virtual methods
.method public addDirection(Landroidx/car/app/navigation/model/LaneDirection;)Landroidx/car/app/navigation/model/Lane$Builder;
    .locals 2
    .param p1, "direction"    # Landroidx/car/app/navigation/model/LaneDirection;

    .line 97
    iget-object v0, p0, Landroidx/car/app/navigation/model/Lane$Builder;->mDirections:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/navigation/model/LaneDirection;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object p0
.end method

.method public build()Landroidx/car/app/navigation/model/Lane;
    .locals 2

    .line 104
    new-instance v0, Landroidx/car/app/navigation/model/Lane;

    iget-object v1, p0, Landroidx/car/app/navigation/model/Lane$Builder;->mDirections:Ljava/util/List;

    invoke-direct {v0, v1}, Landroidx/car/app/navigation/model/Lane;-><init>(Ljava/util/List;)V

    return-object v0
.end method
