.class public Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;
.super Ljava/lang/Object;
.source "ChipInfoParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/multichip/ChipInfoParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mChipId:Ljava/lang/String;

.field mPositionX:D

.field mPositionY:D

.field mPositionZ:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "UNKNOWN_CHIP_ID"

    iput-object v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mChipId:Ljava/lang/String;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionX:D

    .line 95
    iput-wide v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionY:D

    .line 96
    iput-wide v0, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionZ:D

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/multichip/ChipInfoParams;
    .locals 9

    .line 127
    new-instance v0, Lcom/google/uwb/support/multichip/ChipInfoParams;

    iget-object v1, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mChipId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionX:D

    iget-wide v4, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionY:D

    iget-wide v6, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionZ:D

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/uwb/support/multichip/ChipInfoParams;-><init>(Ljava/lang/String;DDDLcom/google/uwb/support/multichip/ChipInfoParams$1;)V

    return-object v0
.end method

.method public setChipId(Ljava/lang/String;)Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;
    .locals 0
    .param p1, "chipId"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mChipId:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setPositionX(D)Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;
    .locals 0
    .param p1, "positionX"    # D

    .line 106
    iput-wide p1, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionX:D

    .line 107
    return-object p0
.end method

.method public setPositionY(D)Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;
    .locals 0
    .param p1, "positionY"    # D

    .line 112
    iput-wide p1, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionY:D

    .line 113
    return-object p0
.end method

.method public setPositionZ(D)Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;
    .locals 0
    .param p1, "positionZ"    # D

    .line 118
    iput-wide p1, p0, Lcom/google/uwb/support/multichip/ChipInfoParams$Builder;->mPositionZ:D

    .line 119
    return-object p0
.end method
