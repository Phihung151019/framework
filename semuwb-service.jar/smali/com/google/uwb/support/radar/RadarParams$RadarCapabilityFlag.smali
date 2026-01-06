.class public final enum Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;
.super Ljava/lang/Enum;
.source "RadarParams.java"

# interfaces
.implements Lcom/google/uwb/support/base/FlagEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/radar/RadarParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadarCapabilityFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

.field public static final enum HAS_RADAR_SWEEP_SAMPLES_SUPPORT:Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;
    .locals 1

    .line 153
    sget-object v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->HAS_RADAR_SWEEP_SAMPLES_SUPPORT:Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    filled-new-array {v0}, [Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 154
    new-instance v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_RADAR_SWEEP_SAMPLES_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->HAS_RADAR_SWEEP_SAMPLES_SUPPORT:Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    .line 153
    invoke-static {}, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->$values()[Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput-wide p3, p0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->mValue:J

    .line 160
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    const-class v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;
    .locals 1

    .line 153
    sget-object v0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/google/uwb/support/radar/RadarParams$RadarCapabilityFlag;->mValue:J

    return-wide v0
.end method
