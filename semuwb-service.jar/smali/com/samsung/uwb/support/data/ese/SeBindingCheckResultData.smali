.class public Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;
.super Ljava/lang/Object;
.source "SeBindingCheckResultData.java"


# instance fields
.field private final bindingStatus:I

.field private final remainedBindingCount:I

.field private final remainedSeBindingCount:I

.field private final seErrorStatus:I

.field private final seInstructionCode:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "payload"    # [B

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->bindingStatus:I

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedSeBindingCount:I

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedBindingCount:I

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seInstructionCode:I

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seErrorStatus:I

    .line 27
    return-void
.end method


# virtual methods
.method public getBindingStatus()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->bindingStatus:I

    return v0
.end method

.method public getRemainedBindingCount()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedBindingCount:I

    return v0
.end method

.method public getRemainedSeBindingCount()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedSeBindingCount:I

    return v0
.end method

.method public getSeErrorStatus()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seErrorStatus:I

    return v0
.end method

.method public getSeInstructionCode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seInstructionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->bindingStatus:I

    int-to-byte v1, v1

    .line 53
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->bindingStatus:I

    invoke-static {v2}, Lcom/samsung/uwb/support/data/code/SeBindingState;->getSeStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 52
    const-string v2, "Binding Status:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 54
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedSeBindingCount:I

    int-to-byte v1, v1

    .line 55
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedSeBindingCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 54
    const-string v2, "Remained SE Binding Count:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedBindingCount:I

    int-to-byte v1, v1

    .line 57
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->remainedBindingCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 56
    const-string v2, "Remained Chip Binding Count:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 58
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seInstructionCode:I

    int-to-short v1, v1

    .line 59
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seInstructionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 58
    const-string v2, "SE Instruction Code:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 60
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seErrorStatus:I

    int-to-short v1, v1

    .line 61
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->seErrorStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 60
    const-string v2, "SE Error Status:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
