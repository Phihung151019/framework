.class public final Landroidx/car/app/hardware/climate/ClimateStateRequest;
.super Ljava/lang/Object;
.source "ClimateStateRequest.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;
    }
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
.field private final mCarZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeature:I

.field private final mRequestedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<TT;>;"
    .local p1, "builder":Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;, "Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget v0, p1, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mRequestedFeature:I

    iput v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mFeature:I

    .line 71
    iget-object v0, p1, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mRequestedValue:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mRequestedValue:Ljava/lang/Object;

    .line 72
    iget-object v0, p1, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mCarZones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Landroidx/car/app/hardware/common/CarZone;->CAR_ZONE_GLOBAL:Landroidx/car/app/hardware/common/CarZone;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mCarZones:Ljava/util/List;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p1, Landroidx/car/app/hardware/climate/ClimateStateRequest$Builder;->mCarZones:Ljava/util/List;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mCarZones:Ljava/util/List;

    .line 77
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 92
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/car/app/hardware/climate/ClimateStateRequest;

    .line 98
    .local v2, "that":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<*>;"
    iget v3, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mFeature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mFeature:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mCarZones:Ljava/util/List;

    iget-object v4, v2, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mCarZones:Ljava/util/List;

    .line 99
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mRequestedValue:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mRequestedValue:Ljava/lang/Object;

    .line 100
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 95
    .end local v2    # "that":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<*>;"
    :cond_3
    :goto_1
    return v1
.end method

.method public getCarZones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<TT;>;"
    iget-object v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mCarZones:Ljava/util/List;

    return-object v0
.end method

.method public getRequestedFeature()I
    .locals 1

    .line 54
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<TT;>;"
    iget v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mFeature:I

    return v0
.end method

.method public getRequestedValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<TT;>;"
    iget-object v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mRequestedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<TT;>;"
    iget v0, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mFeature:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mCarZones:Ljava/util/List;

    iget-object v2, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mRequestedValue:Ljava/lang/Object;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    .local p0, "this":Landroidx/car/app/hardware/climate/ClimateStateRequest;, "Landroidx/car/app/hardware/climate/ClimateStateRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClimateStateRequest{mFeature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mFeature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCarZones="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mCarZones:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/climate/ClimateStateRequest;->mRequestedValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
