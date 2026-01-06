.class public final Landroidx/car/app/hardware/climate/MaxDefrosterProfile;
.super Ljava/lang/Object;
.source "MaxDefrosterProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/climate/MaxDefrosterProfile$Builder;
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
.method constructor <init>(Landroidx/car/app/hardware/climate/MaxDefrosterProfile$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/climate/MaxDefrosterProfile$Builder;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Landroidx/car/app/hardware/climate/MaxDefrosterProfile$Builder;->mSupportedCarZoneSets:Ljava/util/List;

    iput-object v0, p0, Landroidx/car/app/hardware/climate/MaxDefrosterProfile;->mSupportedCarZoneSets:Ljava/util/List;

    .line 47
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

    .line 42
    iget-object v0, p0, Landroidx/car/app/hardware/climate/MaxDefrosterProfile;->mSupportedCarZoneSets:Ljava/util/List;

    return-object v0
.end method
