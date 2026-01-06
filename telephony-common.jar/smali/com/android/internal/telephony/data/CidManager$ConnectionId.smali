.class final Lcom/android/internal/telephony/data/CidManager$ConnectionId;
.super Ljava/lang/Object;
.source "CidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/CidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionId"
.end annotation


# instance fields
.field private blacklist mAllocated:[Z

.field private blacklist mDataProfiles:[Landroid/telephony/data/DataProfile;

.field private blacklist mIsAttachConnection:[Z

.field private blacklist mSlotId:[I


# direct methods
.method public constructor blacklist <init>()V
    .locals 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 38
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mSlotId:[I

    .line 39
    new-array v1, v0, [Landroid/telephony/data/DataProfile;

    iput-object v1, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mDataProfiles:[Landroid/telephony/data/DataProfile;

    .line 40
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mIsAttachConnection:[Z

    .line 42
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mAllocated:[Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 45
    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mSlotId:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 46
    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mDataProfiles:[Landroid/telephony/data/DataProfile;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 47
    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aput-boolean v1, v3, v2

    .line 48
    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mAllocated:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist allocate(IILandroid/telephony/data/DataProfile;Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mAllocated:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mDataProfiles:[Landroid/telephony/data/DataProfile;

    aput-object p3, v0, p2

    .line 64
    iget-object p3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mSlotId:[I

    aput p1, p3, p2

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aput-boolean p4, p0, p2

    return-void
.end method

.method public blacklist getDataProfile(I)Landroid/telephony/data/DataProfile;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mDataProfiles:[Landroid/telephony/data/DataProfile;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public blacklist getSlotId(I)I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mSlotId:[I

    aget p0, p0, p1

    return p0
.end method

.method public blacklist isAllocated()Z
    .locals 2

    const/4 v0, 0x2

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->isAllocated(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->isAllocated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist isAllocated(I)Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mAllocated:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public blacklist isAttachCid(I)Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public blacklist release(I)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mAllocated:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mDataProfiles:[Landroid/telephony/data/DataProfile;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mSlotId:[I

    const/4 v2, -0x1

    aput v2, v0, p1

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aput-boolean v1, p0, p1

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WWAN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mSlotId:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mDataProfiles:[Landroid/telephony/data/DataProfile;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mAllocated:[Z

    aget-boolean v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", WLAN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mSlotId:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mDataProfiles:[Landroid/telephony/data/DataProfile;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mIsAttachConnection:[Z

    aget-boolean v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->mAllocated:[Z

    aget-boolean p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
