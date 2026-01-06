.class public final Landroidx/car/app/hardware/climate/FanSpeedLevelProfile$Builder;
.super Ljava/lang/Object;
.source "FanSpeedLevelProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/FanSpeedLevelProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCarZoneSetsToFanSpeedLevelRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 72
    .local p1, "carZoneSetsToFanSpeedLevelRanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Set<Landroidx/car/app/hardware/common/CarZone;>;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/FanSpeedLevelProfile$Builder;->mCarZoneSetsToFanSpeedLevelRanges:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/climate/FanSpeedLevelProfile;
    .locals 1

    .line 80
    new-instance v0, Landroidx/car/app/hardware/climate/FanSpeedLevelProfile;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/FanSpeedLevelProfile;-><init>(Landroidx/car/app/hardware/climate/FanSpeedLevelProfile$Builder;)V

    return-object v0
.end method
