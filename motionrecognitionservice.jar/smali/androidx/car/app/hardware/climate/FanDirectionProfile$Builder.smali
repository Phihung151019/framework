.class public final Landroidx/car/app/hardware/climate/FanDirectionProfile$Builder;
.super Ljava/lang/Object;
.source "FanDirectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/FanDirectionProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mCarZoneSetsToFanDirectionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 69
    .local p1, "carZoneSetsToFanDirectionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Set<Landroidx/car/app/hardware/common/CarZone;>;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/FanDirectionProfile$Builder;->mCarZoneSetsToFanDirectionValues:Ljava/util/Map;

    .line 72
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/climate/FanDirectionProfile;
    .locals 1

    .line 77
    new-instance v0, Landroidx/car/app/hardware/climate/FanDirectionProfile;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/FanDirectionProfile;-><init>(Landroidx/car/app/hardware/climate/FanDirectionProfile$Builder;)V

    return-object v0
.end method
