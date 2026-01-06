.class public final Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;
.super Ljava/lang/Object;
.source "RadarSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/radar/RadarSpecificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mRadarCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-class v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    .line 86
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;->mRadarCapabilities:Ljava/util/EnumSet;

    .line 85
    return-void
.end method


# virtual methods
.method public addRadarCapability(Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;)Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;
    .locals 1
    .param p1, "radarCapability"    # Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    .line 96
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;->mRadarCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 97
    return-object p0
.end method

.method public build()Lcom/google/uwb/support/radar/RadarSpecificationParams;
    .locals 3

    .line 102
    new-instance v0, Lcom/google/uwb/support/radar/RadarSpecificationParams;

    iget-object v1, p0, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;->mRadarCapabilities:Ljava/util/EnumSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/uwb/support/radar/RadarSpecificationParams;-><init>(Ljava/util/EnumSet;Lcom/google/uwb/support/radar/RadarSpecificationParams$1;)V

    return-object v0
.end method

.method public setRadarCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;"
        }
    .end annotation

    .line 90
    .local p1, "radarCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;->mRadarCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-object p0
.end method
