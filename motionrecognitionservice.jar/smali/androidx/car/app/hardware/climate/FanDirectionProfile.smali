.class public final Landroidx/car/app/hardware/climate/FanDirectionProfile;
.super Ljava/lang/Object;
.source "FanDirectionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/FanDirectionProfile$Builder;
    }
.end annotation


# instance fields
.field private final mCarZoneSetsToFanDirectionValues:Ljava/util/Map;
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
.method constructor <init>(Landroidx/car/app/hardware/climate/FanDirectionProfile$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/climate/FanDirectionProfile$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Landroidx/car/app/hardware/climate/FanDirectionProfile$Builder;->mCarZoneSetsToFanDirectionValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/climate/FanDirectionProfile;->mCarZoneSetsToFanDirectionValues:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public getCarZoneSetsToFanDirectionValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroidx/car/app/hardware/climate/FanDirectionProfile;->mCarZoneSetsToFanDirectionValues:Ljava/util/Map;

    return-object v0
.end method
