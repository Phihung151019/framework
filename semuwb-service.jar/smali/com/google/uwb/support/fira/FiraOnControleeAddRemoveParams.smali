.class public Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;
.super Ljava/lang/Object;
.source "FiraOnControleeAddRemoveParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;,
        Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Reason;
    }
.end annotation


# static fields
.field private static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final KEY_MAC_ADDRESS_MODE:Ljava/lang/String; = "mac_address_mode"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"


# instance fields
.field private final mAddress:Landroid/uwb/UwbAddress;

.field private final mReason:I


# direct methods
.method private constructor <init>(Landroid/uwb/UwbAddress;I)V
    .locals 0
    .param p1, "address"    # Landroid/uwb/UwbAddress;
    .param p2, "reason"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;->mAddress:Landroid/uwb/UwbAddress;

    .line 53
    iput p2, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;->mReason:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/uwb/UwbAddress;ILcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/uwb/UwbAddress;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$1;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;-><init>(Landroid/uwb/UwbAddress;I)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;
    .locals 4
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 73
    const-string v0, "mac_address_mode"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "addressMode":I
    nop

    .line 75
    const-string v1, "address"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 76
    if-nez v0, :cond_0

    .line 77
    const/4 v3, 0x2

    goto :goto_0

    .line 78
    :cond_0
    const/16 v3, 0x8

    .line 74
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/google/uwb/support/fira/FiraParams;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v1

    .line 80
    .local v1, "uwbAddress":Landroid/uwb/UwbAddress;
    new-instance v2, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;

    invoke-direct {v2, v1}, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;-><init>(Landroid/uwb/UwbAddress;)V

    const-string v3, "reason"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;->setReason(I)Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams$Builder;->build()Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAddress()Landroid/uwb/UwbAddress;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;->mAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;->mReason:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 5

    .line 58
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;->mAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/UwbAddress;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 60
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    nop

    .line 61
    .local v2, "addressMode":I
    :goto_0
    const-string v1, "mac_address_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;->mAddress:Landroid/uwb/UwbAddress;

    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraParams;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v3

    const-string v1, "address"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 63
    const-string v1, "reason"

    iget v3, p0, Lcom/google/uwb/support/fira/FiraOnControleeAddRemoveParams;->mReason:I

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    return-object v0
.end method
