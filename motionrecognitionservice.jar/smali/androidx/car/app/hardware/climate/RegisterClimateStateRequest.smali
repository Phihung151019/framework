.class public final Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;
.super Ljava/lang/Object;
.source "RegisterClimateStateRequest.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;
    }
.end annotation


# static fields
.field static final ALL_FEATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRequestFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/climate/CarClimateFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 62
    new-instance v0, Ljava/util/HashSet;

    .line 63
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 64
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 65
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 66
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 67
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 68
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 69
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 70
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 71
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 72
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 73
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 74
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 75
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 76
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 77
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 78
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Integer;

    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->ALL_FEATURES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iget-boolean v0, p1, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;->mRegisterAllFeatures:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->constructAllFeatures()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->mRequestFeatures:Ljava/util/List;

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p1, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest$Builder;->mFeatures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->mRequestFeatures:Ljava/util/List;

    .line 97
    :goto_0
    return-void
.end method

.method private constructAllFeatures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/climate/CarClimateFeature;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->ALL_FEATURES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v0, "features":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/hardware/climate/CarClimateFeature;>;"
    sget-object v1, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->ALL_FEATURES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    .local v2, "flag":I
    new-instance v3, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;

    invoke-direct {v3, v2}, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;-><init>(I)V

    invoke-virtual {v3}, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;->build()Landroidx/car/app/hardware/climate/CarClimateFeature;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v2    # "flag":I
    goto :goto_0

    .line 130
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    if-ne p0, p1, :cond_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;

    .line 116
    .local v0, "that":Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;
    iget-object v1, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->mRequestFeatures:Ljava/util/List;

    iget-object v2, v0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->mRequestFeatures:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 113
    .end local v0    # "that":Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClimateRegisterFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/climate/CarClimateFeature;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->mRequestFeatures:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->mRequestFeatures:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterClimateStateRequest{mRequestFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/climate/RegisterClimateStateRequest;->mRequestFeatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
