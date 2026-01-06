.class public Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
.super Lcom/google/uwb/support/aliro/AliroParams;
.source "AliroPulseShapeCombo.java"


# static fields
.field private static final ALIRO_PACKED_BYTE_COUNT:I = 0x1

.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_INITIATOR_TX:Ljava/lang/String; = "initiator_tx"

.field private static final KEY_RESPONDER_TX:Ljava/lang/String; = "responder_tx"


# instance fields
.field private final mInitiatorTx:I

.field private final mResponderTx:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "initiatorTx"    # I
    .param p2, "responderTx"    # I

    .line 41
    invoke-direct {p0}, Lcom/google/uwb/support/aliro/AliroParams;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mInitiatorTx:I

    .line 43
    iput p2, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mResponderTx:I

    .line 44
    return-void
.end method

.method public static bytesUsed()I
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public static fromBytes([BI)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I

    .line 51
    aget-byte v0, p0, p1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    .line 52
    .local v0, "initiatorTx":B
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 53
    .local v1, "responderTx":B
    new-instance v2, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    invoke-direct {v2, v0, v1}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;-><init>(II)V

    return-object v2
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    .locals 4
    .param p0, "aliroPulseShapeCombo"    # Ljava/lang/String;

    .line 77
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "bundleVersion":I
    packed-switch v1, :pswitch_data_0

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown bundle version"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->parseBundleVersion1(Ljava/lang/String;)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    move-result-object v2

    return-object v2

    .line 79
    .end local v1    # "bundleVersion":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pulse shape combo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseBundleVersion1(Ljava/lang/String;)Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    .locals 5
    .param p0, "aliroPulseShapeCombo"    # Ljava/lang/String;

    .line 95
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 101
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 103
    .local v1, "protocolName":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->isCorrectProtocol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "initiatorTx":I
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 110
    .local v3, "responderTx":I
    new-instance v4, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    invoke-direct {v4, v2, v3}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;-><init>(II)V

    return-object v4

    .line 104
    .end local v2    # "initiatorTx":I
    .end local v3    # "responderTx":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid protocol"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    .end local v1    # "protocolName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version 1 pulse shape combo: "

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

    .line 125
    instance-of v0, p1, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;

    .line 127
    .local v0, "otherPulseShapeCombo":Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    iget v2, v0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mInitiatorTx:I

    iget v3, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mInitiatorTx:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mResponderTx:I

    iget v3, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mResponderTx:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 130
    .end local v0    # "otherPulseShapeCombo":Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;
    :cond_1
    return v1
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public getInitiatorTx()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mInitiatorTx:I

    return v0
.end method

.method public getResponderTx()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mResponderTx:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 135
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mInitiatorTx:I

    iget v1, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mResponderTx:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toBytes()[B
    .locals 2

    .line 57
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mInitiatorTx:I

    shl-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mResponderTx:I

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 58
    .local v0, "pulseShapeCombo":B
    invoke-static {}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->bytesUsed()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->getBundleVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->getProtocolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mInitiatorTx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/uwb/support/aliro/AliroPulseShapeCombo;->mResponderTx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
