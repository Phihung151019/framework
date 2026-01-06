.class public final enum Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;
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
    name = "RangeDataNtfConfigCapabilityFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_DISABLE:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_ENABLE:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

.field public static final enum HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;
    .locals 8

    .line 1056
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_DISABLE:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    sget-object v4, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    sget-object v5, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    sget-object v6, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    sget-object v7, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    filled-new-array/range {v0 .. v7}, [Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1057
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_DISABLE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_DISABLE:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1058
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_ENABLE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1059
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_LEVEL_TRIG"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1061
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x3

    const-wide/16 v2, 0x8

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_LEVEL_TRIG"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1063
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x4

    const-wide/16 v2, 0x10

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_LEVEL_TRIG"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_LEVEL_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1065
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x5

    const-wide/16 v2, 0x20

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_EDGE_TRIG"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1067
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x6

    const-wide/16 v2, 0x40

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_EDGE_TRIG"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_AOA_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1069
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    const/4 v1, 0x7

    const-wide/16 v2, 0x80

    const-string v4, "HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_EDGE_TRIG"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->HAS_RANGE_DATA_NTF_CONFIG_ENABLE_PROXIMITY_AOA_EDGE_TRIG:Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    .line 1056
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

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

    .line 1076
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1077
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->mValue:J

    .line 1078
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;
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

    .line 1056
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;
    .locals 1

    .line 1056
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1082
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$RangeDataNtfConfigCapabilityFlag;->mValue:J

    return-wide v0
.end method
