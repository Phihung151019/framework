.class public Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;
.super Ljava/lang/Object;
.source "FiraDataTransferPhaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDataTransferPhaseManagementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;",
            ">;"
        }
    .end annotation
.end field

.field private mDtpcmRepetition:B

.field private mMacAddressMode:B

.field private mSlotBitMapSize:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mDataTransferPhaseManagementList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;
    .locals 5

    .line 241
    new-instance v0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;

    iget-byte v1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mDtpcmRepetition:B

    iget-byte v2, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mSlotBitMapSize:B

    shl-int/lit8 v2, v2, 0x1

    iget-byte v3, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mMacAddressMode:B

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mDataTransferPhaseManagementList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;-><init>(BBLjava/util/List;Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$1;)V

    return-object v0
.end method

.method public setDataTransferPhaseManagementList(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;",
            ">;)",
            "Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;"
        }
    .end annotation

    .line 236
    .local p1, "dataTransferPhaseManagementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;>;"
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mDataTransferPhaseManagementList:Ljava/util/List;

    .line 237
    return-object p0
.end method

.method public setDtpcmRepetition(B)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;
    .locals 0
    .param p1, "dtpcmRepetition"    # B

    .line 220
    iput-byte p1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mDtpcmRepetition:B

    .line 221
    return-object p0
.end method

.method public setMacAddressMode(B)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;
    .locals 0
    .param p1, "macAddressMode"    # B

    .line 225
    iput-byte p1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mMacAddressMode:B

    .line 226
    return-object p0
.end method

.method public setSlotBitmapSize(B)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;
    .locals 0
    .param p1, "slotBitmapSize"    # B

    .line 230
    iput-byte p1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->mSlotBitMapSize:B

    .line 231
    return-object p0
.end method
