.class public Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;
.super Ljava/lang/Object;
.source "FiraHybridSessionControllerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiraHybridSessionPhaseList"
.end annotation


# instance fields
.field private final mEndSlotIndex:S

.field private final mMacAddress:Landroid/uwb/UwbAddress;

.field private final mMessageControl:B

.field private final mSessionId:I

.field private final mStartSlotIndex:S


# direct methods
.method public constructor <init>(ISSBLandroid/uwb/UwbAddress;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "startSlotIndex"    # S
    .param p3, "endSlotIndex"    # S
    .param p4, "messageControl"    # B
    .param p5, "macAddress"    # Landroid/uwb/UwbAddress;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mSessionId:I

    .line 199
    iput-short p2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mStartSlotIndex:S

    .line 200
    iput-short p3, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mEndSlotIndex:S

    .line 201
    iput-byte p4, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mMessageControl:B

    .line 202
    iput-object p5, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mMacAddress:Landroid/uwb/UwbAddress;

    .line 203
    return-void
.end method


# virtual methods
.method public getEndSlotIndex()S
    .locals 1

    .line 216
    iget-short v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mEndSlotIndex:S

    return v0
.end method

.method public getMacAddress()Landroid/uwb/UwbAddress;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mMacAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public getMessageControl()B
    .locals 1

    .line 220
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mMessageControl:B

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mSessionId:I

    return v0
.end method

.method public getStartSlotIndex()S
    .locals 1

    .line 211
    iget-short v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->mStartSlotIndex:S

    return v0
.end method
