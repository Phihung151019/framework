.class public final Landroidx/car/app/hardware/climate/CarZoneMappingInfoProfile$Builder;
.super Ljava/lang/Object;
.source "CarZoneMappingInfoProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/climate/CarZoneMappingInfoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mSupportedCarZoneSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;>;)V"
        }
    .end annotation

    .line 58
    .local p1, "supportedCarZoneSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Landroidx/car/app/hardware/common/CarZone;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/car/app/hardware/climate/CarZoneMappingInfoProfile$Builder;->mSupportedCarZoneSets:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/climate/CarZoneMappingInfoProfile;
    .locals 1

    .line 65
    new-instance v0, Landroidx/car/app/hardware/climate/CarZoneMappingInfoProfile;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/climate/CarZoneMappingInfoProfile;-><init>(Landroidx/car/app/hardware/climate/CarZoneMappingInfoProfile$Builder;)V

    return-object v0
.end method
