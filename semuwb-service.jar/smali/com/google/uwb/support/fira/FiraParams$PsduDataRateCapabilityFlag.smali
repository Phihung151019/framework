.class public final enum Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;
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
    name = "PsduDataRateCapabilityFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

.field public static final enum HAS_27M2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

.field public static final enum HAS_31M2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

.field public static final enum HAS_6M81_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

.field public static final enum HAS_7M80_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;
    .locals 4

    .line 969
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_6M81_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_7M80_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_27M2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_31M2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 970
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_6M81_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_6M81_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    .line 971
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_7M80_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_7M80_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    .line 972
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4

    const-string v4, "HAS_27M2_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_27M2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    .line 973
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    const/4 v1, 0x3

    const-wide/16 v2, 0x8

    const-string v4, "HAS_31M2_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->HAS_31M2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    .line 969
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

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

    .line 977
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 978
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->mValue:J

    .line 979
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;
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

    .line 969
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;
    .locals 1

    .line 969
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 983
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$PsduDataRateCapabilityFlag;->mValue:J

    return-wide v0
.end method
