.class public final Landroidx/car/app/hardware/climate/HvacDualModeProfile;
.super Ljava/lang/Object;
.source "HvacDualModeProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/HvacDualModeProfile$Builder;
    }
.end annotation


# instance fields
.field private final mSupportedCarZoneSets:Ljava/util/List;
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
.method constructor <init>(Landroidx/car/app/hardware/climate/HvacDualModeProfile$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/climate/HvacDualModeProfile$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-object v0, p1, Landroidx/car/app/hardware/climate/HvacDualModeProfile$Builder;->mSupportedCarZoneSets:Ljava/util/List;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/HvacDualModeProfile;->mSupportedCarZoneSets:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public getSupportedCarZoneSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroidx/car/app/hardware/climate/HvacDualModeProfile;->mSupportedCarZoneSets:Ljava/util/List;

    return-object v0
.end method
