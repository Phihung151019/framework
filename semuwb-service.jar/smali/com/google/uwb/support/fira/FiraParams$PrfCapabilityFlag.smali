.class public final enum Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;
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
    name = "PrfCapabilityFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

.field public static final enum HAS_BPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

.field public static final enum HAS_HPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;
    .locals 2

    .line 895
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->HAS_BPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->HAS_HPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    filled-new-array {v0, v1}, [Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 896
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_BPRF_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->HAS_BPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    .line 897
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_HPRF_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->HAS_HPRF_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    .line 895
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

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

    .line 901
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 902
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->mValue:J

    .line 903
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;
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

    .line 895
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;
    .locals 1

    .line 895
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 907
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$PrfCapabilityFlag;->mValue:J

    return-wide v0
.end method
