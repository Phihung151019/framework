.class public final Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;
.super Ljava/lang/Object;
.source "ClimateProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/ClimateProfileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mAllProfiles:Z

.field mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/climate/CarClimateFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;->mAllProfiles:Z

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;->mFeatures:Ljava/util/List;

    .line 310
    return-void
.end method


# virtual methods
.method public varargs addClimateProfileFeatures([Landroidx/car/app/hardware/climate/CarClimateFeature;)Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;
    .locals 6
    .param p1, "features"    # [Landroidx/car/app/hardware/climate/CarClimateFeature;

    .line 332
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 333
    .local v2, "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    invoke-virtual {v2}, Landroidx/car/app/hardware/climate/CarClimateFeature;->getFeature()I

    move-result v3

    .line 334
    .local v3, "flag":I
    sget-object v4, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->ALL_FEATURES:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    iget-object v4, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    iget-object v4, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v2    # "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    .end local v3    # "flag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .restart local v2    # "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    .restart local v3    # "flag":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flag already registered in climate profile request: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid flag for climate profile request: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    .end local v2    # "feature":Landroidx/car/app/hardware/climate/CarClimateFeature;
    .end local v3    # "flag":I
    :cond_2
    return-object p0
.end method

.method public build()Landroidx/car/app/hardware/climate/ClimateProfileRequest;
    .locals 1

    .line 352
    new-instance v0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/ClimateProfileRequest;-><init>(Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;)V

    return-object v0
.end method

.method public setAllClimateProfiles()Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;
    .locals 1

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;->mAllProfiles:Z

    .line 318
    return-object p0
.end method
