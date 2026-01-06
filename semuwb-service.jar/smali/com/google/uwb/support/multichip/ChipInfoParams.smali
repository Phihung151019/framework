.class public final Lcom/google/uwb/support/multichip/ChipInfoParams;
.super Ljava/lang/Object;
.source "ChipInfoParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;
    }
.end annotation


# static fields
.field private static final KEY_CHIP_ID:Ljava/lang/String; = "KEY_CHIP_ID"

.field private static final KEY_POSITION_X:Ljava/lang/String; = "KEY_POSITION_X"

.field private static final KEY_POSITION_Y:Ljava/lang/String; = "KEY_POSITION_Y"

.field private static final KEY_POSITION_Z:Ljava/lang/String; = "KEY_POSITION_Z"

.field private static final UNKNOWN_CHIP_ID:Ljava/lang/String; = "UNKNOWN_CHIP_ID"


# instance fields
.field private final mChipId:Ljava/lang/String;

.field private final mPositionX:D

.field private final mPositionY:D

.field private final mPositionZ:D


# direct methods
.method private constructor <init>(Ljava/lang/String;DDD)V
    .locals 0
    .param p1, "chipId"    # Ljava/lang/String;
    .param p2, "positionX"    # D
    .param p4, "positionY"    # D
    .param p6, "positionZ"    # D

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mChipId:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionX:D

    .line 40
    iput-wide p4, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionY:D

    .line 41
    iput-wide p6, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionZ:D

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;DDDLcom/google/uwb/support/multichip/ChipInfoParams$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D
    .param p8, "x4"    # Lcom/google/uwb/support/multichip/ChipInfoParams$1;

    .line 24
    invoke-direct/range {p0 .. p7}, Lcom/google/uwb/support/multichip/ChipInfoParams;-><init>(Ljava/lang/String;DDD)V

    return-void
.end method

.method public static createBuilder()Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;
    .locals 1

    .line 85
    new-instance v0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;-><init>()V

    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/multichip/ChipInfoParams;
    .locals 10
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 76
    const-string v0, "KEY_CHIP_ID"

    const-string v1, "UNKNOWN_CHIP_ID"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "chipId":Ljava/lang/String;
    const-string v0, "KEY_POSITION_X"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 78
    .local v4, "positionX":D
    const-string v0, "KEY_POSITION_Y"

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 79
    .local v6, "positionY":D
    const-string v0, "KEY_POSITION_Z"

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 80
    .local v8, "positionZ":D
    new-instance v2, Lcom/google/uwb/support/multichip/ChipInfoParams;

    invoke-direct/range {v2 .. v9}, Lcom/google/uwb/support/multichip/ChipInfoParams;-><init>(Ljava/lang/String;DDD)V

    return-object v2
.end method


# virtual methods
.method public getChipId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mChipId:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionX()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionX:D

    return-wide v0
.end method

.method public getPositionY()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionY:D

    return-wide v0
.end method

.method public getPositionZ()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionZ:D

    return-wide v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 66
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "KEY_CHIP_ID"

    iget-object v2, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mChipId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "KEY_POSITION_X"

    iget-wide v2, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionX:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 69
    const-string v1, "KEY_POSITION_Y"

    iget-wide v2, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionY:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 70
    const-string v1, "KEY_POSITION_Z"

    iget-wide v2, p0, Lcom/google/uwb/support/multichip/ChipInfoParams;->mPositionZ:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 71
    return-object v0
.end method
