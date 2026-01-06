.class public final Landroidx/car/app/hardware/climate/ClimateProfileRequest;
.super Ljava/lang/Object;
.source "ClimateProfileRequest.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;,
        Landroidx/car/app/hardware/climate/ClimateProfileRequest$ClimateProfileFeature;
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

.field public static final FEATURE_CABIN_TEMPERATURE:I = 0x4

.field public static final FEATURE_CAR_ZONE_MAPPING:I = 0x11

.field public static final FEATURE_FAN_DIRECTION:I = 0x6

.field public static final FEATURE_FAN_SPEED:I = 0x5

.field public static final FEATURE_HVAC_AC:I = 0x2

.field public static final FEATURE_HVAC_AUTO_MODE:I = 0xc

.field public static final FEATURE_HVAC_AUTO_RECIRCULATION:I = 0xb

.field public static final FEATURE_HVAC_DEFROSTER:I = 0xe

.field public static final FEATURE_HVAC_DUAL_MODE:I = 0xd

.field public static final FEATURE_HVAC_ELECTRIC_DEFROSTER:I = 0x10

.field public static final FEATURE_HVAC_MAX_AC:I = 0x3

.field public static final FEATURE_HVAC_MAX_DEFROSTER:I = 0xf

.field public static final FEATURE_HVAC_POWER:I = 0x1

.field public static final FEATURE_HVAC_RECIRCULATION:I = 0xa

.field public static final FEATURE_SEAT_TEMPERATURE_LEVEL:I = 0x7

.field public static final FEATURE_SEAT_VENTILATION_LEVEL:I = 0x8

.field public static final FEATURE_STEERING_WHEEL_HEAT:I = 0x9


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
    .locals 19

    .line 223
    new-instance v0, Ljava/util/HashSet;

    .line 225
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 226
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 227
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 228
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 229
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 230
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 231
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 232
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 233
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 234
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 235
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 236
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 237
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 238
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 239
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 240
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 241
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Integer;

    move-result-object v1

    .line 224
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 223
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->ALL_FEATURES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iget-boolean v0, p1, Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;->mAllProfiles:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->constructAllFeatures()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->mRequestFeatures:Ljava/util/List;

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p1, Landroidx/car/app/hardware/climate/ClimateProfileRequest$Builder;->mFeatures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->mRequestFeatures:Ljava/util/List;

    .line 253
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

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->ALL_FEATURES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v0, "features":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/hardware/climate/CarClimateFeature;>;"
    sget-object v1, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->ALL_FEATURES:Ljava/util/Set;

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

    .line 295
    .local v2, "flag":I
    new-instance v3, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;

    invoke-direct {v3, v2}, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;-><init>(I)V

    invoke-virtual {v3}, Landroidx/car/app/hardware/climate/CarClimateFeature$Builder;->build()Landroidx/car/app/hardware/climate/CarClimateFeature;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "flag":I
    goto :goto_0

    .line 297
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 277
    if-ne p0, p1, :cond_0

    .line 278
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;

    .line 284
    .local v0, "that":Landroidx/car/app/hardware/climate/ClimateProfileRequest;
    iget-object v1, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->mRequestFeatures:Ljava/util/List;

    iget-object v2, v0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->mRequestFeatures:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 281
    .end local v0    # "that":Landroidx/car/app/hardware/climate/ClimateProfileRequest;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllClimateProfiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 264
    sget-object v0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->ALL_FEATURES:Ljava/util/Set;

    return-object v0
.end method

.method public getClimateProfileFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/climate/CarClimateFeature;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->mRequestFeatures:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 289
    iget-object v0, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->mRequestFeatures:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClimateProfileRequest{mRequestFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/climate/ClimateProfileRequest;->mRequestFeatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
