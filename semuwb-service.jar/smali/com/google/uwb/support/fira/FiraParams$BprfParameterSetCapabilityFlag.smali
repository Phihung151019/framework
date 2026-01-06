.class public final enum Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;
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
    name = "BprfParameterSetCapabilityFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

.field public static final enum HAS_SET_1_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

.field public static final enum HAS_SET_2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

.field public static final enum HAS_SET_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

.field public static final enum HAS_SET_4_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

.field public static final enum HAS_SET_5_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

.field public static final enum HAS_SET_6_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;
    .locals 6

    .line 987
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_1_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_4_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    sget-object v4, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_5_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    sget-object v5, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_6_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    filled-new-array/range {v0 .. v5}, [Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 988
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_SET_1_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_1_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 989
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_SET_2_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_2_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 990
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4

    const-string v4, "HAS_SET_3_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 991
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    const/4 v1, 0x3

    const-wide/16 v2, 0x8

    const-string v4, "HAS_SET_4_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_4_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 992
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    const/4 v1, 0x4

    const-wide/16 v2, 0x10

    const-string v4, "HAS_SET_5_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_5_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 993
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    const/4 v1, 0x5

    const-wide/16 v2, 0x20

    const-string v4, "HAS_SET_6_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->HAS_SET_6_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    .line 987
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

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

    .line 997
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 998
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->mValue:J

    .line 999
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;
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

    .line 987
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;
    .locals 1

    .line 987
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1003
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$BprfParameterSetCapabilityFlag;->mValue:J

    return-wide v0
.end method
