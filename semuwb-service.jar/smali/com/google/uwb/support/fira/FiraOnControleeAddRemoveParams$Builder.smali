.class public Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;
.super Ljava/lang/Object;
.source "FiraOnControleeAddRemoveParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAddress:Landroid/uwb/UwbAddress;

.field private mReason:I


# direct methods
.method public constructor <init>(Landroid/uwb/UwbAddress;)V
    .locals 1
    .param p1, "address"    # Landroid/uwb/UwbAddress;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;->mReason:I

    .line 101
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;->mAddress:Landroid/uwb/UwbAddress;

    .line 102
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;

    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;->mAddress:Landroid/uwb/UwbAddress;

    iget v2, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;->mReason:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;-><init>(Landroid/uwb/UwbAddress;ILcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$1;)V

    return-object v0
.end method

.method public setReason(I)Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;
    .locals 0
    .param p1, "reason"    # I

    .line 108
    iput p1, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;->mReason:I

    .line 109
    return-object p0
.end method
