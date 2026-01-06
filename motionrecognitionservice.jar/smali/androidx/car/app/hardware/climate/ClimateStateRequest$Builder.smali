.class public final Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;
.super Ljava/lang/Object;
.source "ClimateStateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/ClimateStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCarZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation
.end field

.field final mRequestedFeature:I

.field final mRequestedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "requestedFeature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;, "Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder<TT;>;"
    .local p2, "requestedValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mCarZones:Ljava/util/List;

    .line 127
    iput-object p2, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mRequestedValue:Ljava/lang/Object;

    .line 128
    iput p1, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mRequestedFeature:I

    .line 129
    return-void
.end method


# virtual methods
.method public addCarZones(Landroidx/car/app/hardware/common/CarZone;)Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;
    .locals 1
    .param p1, "carZone"    # Landroidx/car/app/hardware/common/CarZone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarZone;",
            ")",
            "Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;, "Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder<TT;>;"
    iget-object v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mCarZones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-object p0
.end method

.method public build()Landroidx/car/app/hardware/climate/ClimateStateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/climate/ClimateStateRequest<",
            "TT;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;, "Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder<TT;>;"
    new-instance v0, Landroidx/car/app/hardware/climate/ClimateStateRequest;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/ClimateStateRequest;-><init>(Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;)V

    return-object v0
.end method
