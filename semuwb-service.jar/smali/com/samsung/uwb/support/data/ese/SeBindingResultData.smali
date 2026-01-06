.class public Lcom/samsung/uwb/support/data/ese/SeBindingResultData;
.super Ljava/lang/Object;
.source "SeBindingResultData.java"


# instance fields
.field private final bindingState:I

.field private final remainedBindingCount:I

.field private final seErrorStatus:I

.field private final seInstructionCode:I

.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "payload"    # [B

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->status:I

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->remainedBindingCount:I

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->bindingState:I

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seInstructionCode:I

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seErrorStatus:I

    .line 28
    return-void
.end method


# virtual methods
.method public getBindingState()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->bindingState:I

    return v0
.end method

.method public getRemainedBindingCount()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->remainedBindingCount:I

    return v0
.end method

.method public getSeErrorStatus()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seErrorStatus:I

    return v0
.end method

.method public getSeInstructionCode()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seInstructionCode:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->status:I

    int-to-byte v1, v1

    .line 54
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->status:I

    invoke-static {v2}, Lcom/samsung/uwb/support/data/code/SeBindingResultCode;->getSeStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 53
    const-string v2, "Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 55
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->remainedBindingCount:I

    int-to-byte v1, v1

    .line 56
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->remainedBindingCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 55
    const-string v2, "Remained Chip Binding Count: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 57
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->bindingState:I

    int-to-byte v1, v1

    .line 58
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->bindingState:I

    invoke-static {v2}, Lcom/samsung/uwb/support/data/code/SeBindingState;->getSeStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 57
    const-string v2, "Binding State: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seInstructionCode:I

    int-to-short v1, v1

    .line 60
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seInstructionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 59
    const-string v2, "SE Instruction Code: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seErrorStatus:I

    int-to-short v1, v1

    .line 62
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->seErrorStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 61
    const-string v2, "SE Error Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 63
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
