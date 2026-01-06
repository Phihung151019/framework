.class public final enum Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;
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
    name = "DeviceRoleCapabilityFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;",
        ">;",
        "Lcom/google/uwb/support/base/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_ADVERTISER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_CONTROLEE_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_CONTROLEE_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_CONTROLLER_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_CONTROLLER_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_DT_ANCHOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_DT_TAG_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_OBSERVER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_UT_ANCHOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_UT_SYNCHRONIZATION_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

.field public static final enum HAS_UT_TAG_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;


# instance fields
.field private final mValue:J


# direct methods
.method private static synthetic $values()[Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;
    .locals 11

    .line 804
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLEE_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v1, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLEE_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v2, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLLER_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v3, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLLER_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v4, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_UT_SYNCHRONIZATION_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v5, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_UT_ANCHOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v6, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_UT_TAG_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v7, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_ADVERTISER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v8, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_OBSERVER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v9, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_DT_ANCHOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    sget-object v10, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_DT_TAG_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    filled-new-array/range {v0 .. v10}, [Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 805
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "HAS_CONTROLEE_INITIATOR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLEE_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 806
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2

    const-string v4, "HAS_CONTROLEE_RESPONDER_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLEE_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 807
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4

    const-string v4, "HAS_CONTROLLER_INITIATOR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLLER_INITIATOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 808
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x3

    const-wide/16 v2, 0x8

    const-string v4, "HAS_CONTROLLER_RESPONDER_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_CONTROLLER_RESPONDER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 809
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x4

    const-wide/16 v2, 0x10

    const-string v4, "HAS_UT_SYNCHRONIZATION_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_UT_SYNCHRONIZATION_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 810
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x5

    const-wide/16 v2, 0x20

    const-string v4, "HAS_UT_ANCHOR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_UT_ANCHOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 811
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x6

    const-wide/16 v2, 0x40

    const-string v4, "HAS_UT_TAG_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_UT_TAG_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 812
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/4 v1, 0x7

    const-wide/16 v2, 0x80

    const-string v4, "HAS_ADVERTISER_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_ADVERTISER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 813
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/16 v1, 0x8

    const-wide/16 v2, 0x100

    const-string v4, "HAS_OBSERVER_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_OBSERVER_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 814
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/16 v1, 0x9

    const-wide/16 v2, 0x200

    const-string v4, "HAS_DT_ANCHOR_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_DT_ANCHOR_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 815
    new-instance v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    const/16 v1, 0xa

    const-wide/16 v2, 0x400

    const-string v4, "HAS_DT_TAG_SUPPORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->HAS_DT_TAG_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    .line 804
    invoke-static {}, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->$values()[Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    move-result-object v0

    sput-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

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

    .line 819
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 820
    iput-wide p3, p0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->mValue:J

    .line 821
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;
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

    .line 804
    const-class v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    return-object v0
.end method

.method public static values()[Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;
    .locals 1

    .line 804
    sget-object v0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->$VALUES:[Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    invoke-virtual {v0}, [Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 825
    iget-wide v0, p0, Lcom/google/uwb/support/fira/FiraParams$DeviceRoleCapabilityFlag;->mValue:J

    return-wide v0
.end method
