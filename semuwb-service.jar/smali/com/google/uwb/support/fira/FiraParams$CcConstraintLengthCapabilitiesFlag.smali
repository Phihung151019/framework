.class public final enum Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;
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
    name = "CcConstraintLengthCapabilitiesFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

.field public static final enum HAS_CONSTRAINT_LENGTH_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

.field public static final enum HAS_CONSTRAINT_LENGTH_7_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;
    .locals 2

    .line 879
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_7_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    filled-new-array {v0, v1}, [Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 880
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_CONSTRAINT_LENGTH_3_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_3_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    .line 881
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_CONSTRAINT_LENGTH_7_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->HAS_CONSTRAINT_LENGTH_7_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    .line 879
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

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

    .line 885
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 886
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->mValue:J

    .line 887
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;
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

    .line 879
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;
    .locals 1

    .line 879
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 891
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$CcConstraintLengthCapabilitiesFlag;->mValue:J

    return-wide v0
.end method
