.class public Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;
.super Ljava/lang/Object;
.source "SeConnectivityTestData.java"


# instance fields
.field private final seErrorStatus:I

.field private final seInstructionCode:I

.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "payload"    # [B

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->status:I

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seInstructionCode:I

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seErrorStatus:I

    .line 23
    return-void
.end method


# virtual methods
.method public getSeErrorStatus()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seErrorStatus:I

    return v0
.end method

.method public getSeInstructionCode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seInstructionCode:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->status:I

    int-to-byte v1, v1

    .line 41
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->status:I

    invoke-static {v2}, Lcom/samsung/uwb/support/data/code/SeStatusCode;->getSeStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 40
    const-string v2, "Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seInstructionCode:I

    int-to-short v1, v1

    .line 43
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seInstructionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 42
    const-string v2, "SE Instruction Code: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    iget v1, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seErrorStatus:I

    int-to-short v1, v1

    .line 45
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->seErrorStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 44
    const-string v2, "SE Error Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
