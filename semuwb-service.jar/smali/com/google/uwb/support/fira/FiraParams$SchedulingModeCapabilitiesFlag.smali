.class public final enum Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;
.super Ljava/lang/Enum;
.source "FiraParams.java"

# interfaces
.implements Lcom/google/uwb/support/base/FlagEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchedulingModeCapabilitiesFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

.field public static final enum HAS_CONTENTION_BASED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

.field public static final enum HAS_HYBRID_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

.field public static final enum HAS_TIME_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;
    .locals 3

    .line 862
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_CONTENTION_BASED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_TIME_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_HYBRID_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    filled-new-array {v0, v1, v2}, [Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 863
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_CONTENTION_BASED_RANGING_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_CONTENTION_BASED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    .line 864
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_TIME_SCHEDULED_RANGING_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_TIME_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    .line 865
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4

    const-string v4, "HAS_HYBRID_SCHEDULED_RANGING_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->HAS_HYBRID_SCHEDULED_RANGING_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    .line 862
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

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

    .line 869
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 870
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->mValue:J

    .line 871
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;
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

    .line 862
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;
    .locals 1

    .line 862
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 875
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$SchedulingModeCapabilitiesFlag;->mValue:J

    return-wide v0
.end method
