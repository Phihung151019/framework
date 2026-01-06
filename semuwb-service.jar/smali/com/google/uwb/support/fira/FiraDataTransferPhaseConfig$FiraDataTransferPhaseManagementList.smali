.class public Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;
.super Ljava/lang/Object;
.source "FiraDataTransferPhaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiraDataTransferPhaseManagementList"
.end annotation


# instance fields
.field private final mSlotBitMap:[B

.field private final mStopDataTransfer:B

.field private final mUwbAddress:Landroid/uwb/UwbAddress;


# direct methods
.method public constructor <init>(Landroid/uwb/UwbAddress;[BB)V
    .locals 0
    .param p1, "uwbAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "slotBitmap"    # [B
    .param p3, "stopDataTransfer"    # B

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->mUwbAddress:Landroid/uwb/UwbAddress;

    .line 195
    iput-object p2, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->mSlotBitMap:[B

    .line 196
    iput-byte p3, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->mStopDataTransfer:B

    .line 197
    return-void
.end method


# virtual methods
.method public getSlotBitMap()[B
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->mSlotBitMap:[B

    return-object v0
.end method

.method public getStopDataTransfer()B
    .locals 1

    .line 207
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->mStopDataTransfer:B

    return v0
.end method

.method public getUwbAddress()Landroid/uwb/UwbAddress;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->mUwbAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method
