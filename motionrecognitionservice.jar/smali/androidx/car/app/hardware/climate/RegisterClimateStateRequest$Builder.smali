.class public final Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;
.super Ljava/lang/Object;
.source "RegisterClimateStateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/climate/CarClimateFeature;",
            ">;"
        }
    .end annotation
.end field

.field final mRegisterAllFeatures:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "registerAllFeatures"    # Z

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-boolean p1, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;->mRegisterAllFeatures:Z

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;->mFeatures:Ljava/util/List;

    .line 147
    return-void
.end method


# virtual methods
.method public varargs addClimateRegisterFeatures([Landroidx/car/app/hardware/climate/CarClimateFeature;)Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;
    .locals 5
    .param p1, "features"    # [Landroidx/car/app/hardware/climate/CarClimateFeature;

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 161
    .local v2, "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    sget-object v3, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->ALL_FEATURES:Ljava/util/Set;

    invoke-virtual {v2}, Landroidx/car/app/hardware/climate/CarClimateFeature;->getFeature()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v2    # "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .restart local v2    # "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid flag for registering climate request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {v2}, Landroidx/car/app/hardware/climate/CarClimateFeature;->getFeature()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    .end local v2    # "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    :cond_1
    return-object p0
.end method

.method public build()Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;
    .locals 1

    .line 175
    new-instance v0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;-><init>(Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;)V

    return-object v0
.end method
