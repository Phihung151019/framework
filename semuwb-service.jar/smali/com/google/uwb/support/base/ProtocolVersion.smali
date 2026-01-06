.class public Lcom/google/uwb/support/base/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"


# instance fields
.field private final mMajor:I

.field private final mMinor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMajor:I

    .line 41
    iput p2, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMinor:I

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMajor:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMinor:I

    .line 47
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/uwb/support/base/ProtocolVersion;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;

    .line 28
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 33
    new-instance v1, Lcom/google/uwb/support/base/ProtocolVersion;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/uwb/support/base/ProtocolVersion;-><init>(II)V

    return-object v1

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid protocol version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Lcom/google/uwb/support/base/ProtocolVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/google/uwb/support/base/ProtocolVersion;

    .line 71
    .local v0, "otherProtocol":Lcom/google/uwb/support/base/ProtocolVersion;
    iget v2, v0, Lcom/google/uwb/support/base/ProtocolVersion;->mMajor:I

    iget v3, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMajor:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/google/uwb/support/base/ProtocolVersion;->mMinor:I

    iget v3, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMinor:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 73
    .end local v0    # "otherProtocol":Lcom/google/uwb/support/base/ProtocolVersion;
    :cond_1
    return v1
.end method

.method public getMajor()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMajor:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMinor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget v0, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMajor:I

    iget v1, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMinor:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/uwb/support/base/ProtocolVersion;->mMinor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
