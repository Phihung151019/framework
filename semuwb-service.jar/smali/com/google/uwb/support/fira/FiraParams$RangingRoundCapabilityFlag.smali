.class public final enum Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;
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
    name = "RangingRoundCapabilityFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

.field public static final enum HAS_ADS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

.field public static final enum HAS_DS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

.field public static final enum HAS_ESS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

.field public static final enum HAS_OWR_AOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

.field public static final enum HAS_OWR_DL_TDOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

.field public static final enum HAS_OWR_UL_TDOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

.field public static final enum HAS_SS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;
    .locals 7

    .line 911
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_DS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_SS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_OWR_UL_TDOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_OWR_DL_TDOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    sget-object v4, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_OWR_AOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    sget-object v5, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_ESS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    sget-object v6, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_ADS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    filled-new-array/range {v0 .. v6}, [Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 912
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_DS_TWR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_DS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 913
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_SS_TWR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_SS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 915
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4

    const-string v4, "HAS_OWR_UL_TDOA_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_OWR_UL_TDOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 916
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    const/4 v1, 0x3

    const-wide/16 v2, 0x8

    const-string v4, "HAS_OWR_DL_TDOA_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_OWR_DL_TDOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 917
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    const/4 v1, 0x4

    const-wide/16 v2, 0x10

    const-string v4, "HAS_OWR_AOA_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_OWR_AOA_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 918
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    const/4 v1, 0x5

    const-wide/16 v2, 0x20

    const-string v4, "HAS_ESS_TWR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_ESS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 919
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    const/4 v1, 0x6

    const-wide/16 v2, 0x40

    const-string v4, "HAS_ADS_TWR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->HAS_ADS_TWR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    .line 911
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

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

    .line 923
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 924
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->mValue:J

    .line 925
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;
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

    .line 911
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;
    .locals 1

    .line 911
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 929
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$RangingRoundCapabilityFlag;->mValue:J

    return-wide v0
.end method
