.class public Lcom/google/uwb/support/radar/RadarSpecificationParams;
.super Lcom/google/uwb/support/radar/RadarParams;
.source "RadarSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_RADAR_CAPABILITIES:Ljava/lang/String; = "radar_capabilities"


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
.method private constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "radarCapabilities":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;>;"
    invoke-direct {p0}, Lcom/google/uwb/support/radar/RadarParams;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/uwb/support/radar/RadarSpecificationParams;->mRadarCapabilities:Ljava/util/EnumSet;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/google/uwb/support/radar/RadarSpecificationParams$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/EnumSet;
    .param p2, "x1"    # Lcom/google/uwb/support/radar/RadarSpecificationParams$1;

    .line 32
    invoke-direct {p0, p1}, Lcom/google/uwb/support/radar/RadarSpecificationParams;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSpecificationParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 58
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarSpecificationParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarSpecificationParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarSpecificationParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSpecificationParams;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSpecificationParams;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 71
    new-instance v0, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;-><init>()V

    .line 74
    const-string v1, "radar_capabilities"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-static {}, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->values()[Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    move-result-object v2

    .line 73
    invoke-static {v1, v2}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;->setRadarCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/uwb/support/radar/RadarSpecificationParams$Builder;->build()Lcom/google/uwb/support/radar/RadarSpecificationParams;

    move-result-object v0

    .line 71
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public getRadarCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSpecificationParams;->mRadarCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 51
    invoke-super {p0}, Lcom/google/uwb/support/radar/RadarParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 52
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/radar/RadarSpecificationParams;->mRadarCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "radar_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    return-object v0
.end method
