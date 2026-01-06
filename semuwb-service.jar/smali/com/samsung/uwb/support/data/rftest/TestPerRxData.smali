.class public Lcom/samsung/uwb/support/data/rftest/TestPerRxData;
.super Lcom/samsung/uwb/support/data/rftest/TestMeasurement;
.source "TestPerRxData.java"


# instance fields
.field private final acqDetect:J

.field private final acqReject:J

.field private final attempts:J

.field private final eof:J

.field private final phrBitError:J

.field private final phrDecError:J

.field private final psduBitError:J

.field private final psduDecError:J

.field private final rxFail:J

.field private final samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

.field private final sfdFail:J

.field private final sfdFound:J

.field private final status:I

.field private final stsFound:J

.field private final syncCirReady:J


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "payload"    # [B

    .line 26
    invoke-direct {p0}, Lcom/samsung/uwb/support/data/rftest/TestMeasurement;-><init>()V

    .line 27
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->status:I

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->attempts:J

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->acqDetect:J

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->acqReject:J

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->rxFail:J

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->syncCirReady:J

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->sfdFail:J

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->sfdFound:J

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->phrDecError:J

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->phrBitError:J

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->psduDecError:J

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->psduBitError:J

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->stsFound:J

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->eof:J

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 47
    .local v1, "extraData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 48
    new-instance v2, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    invoke-direct {v2, v1}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;-><init>([B)V

    iput-object v2, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    .line 50
    .end local v1    # "extraData":[B
    :goto_0
    return-void
.end method


# virtual methods
.method public getAcqDetect()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->acqDetect:J

    return-wide v0
.end method

.method public getAcqReject()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->acqReject:J

    return-wide v0
.end method

.method public getAttempts()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->attempts:J

    return-wide v0
.end method

.method public getEof()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->eof:J

    return-wide v0
.end method

.method public getPhrBitError()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->phrBitError:J

    return-wide v0
.end method

.method public getPhrDecError()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->phrDecError:J

    return-wide v0
.end method

.method public getPsduBitError()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->psduBitError:J

    return-wide v0
.end method

.method public getPsduDecError()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->psduDecError:J

    return-wide v0
.end method

.method public getRxFail()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->rxFail:J

    return-wide v0
.end method

.method public getSamsungSpecificDataForRfTest()Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    return-object v0
.end method

.method public getSfdFail()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->sfdFail:J

    return-wide v0
.end method

.method public getSfdFound()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->sfdFound:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->status:I

    return v0
.end method

.method public getStsFound()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->stsFound:J

    return-wide v0
.end method

.method public getSyncCirReady()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->syncCirReady:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 115
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->status:I

    int-to-byte v1, v1

    .line 117
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 116
    const-string v2, "Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->attempts:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Attempts: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 119
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->acqDetect:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ACQ Detect: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 120
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->acqReject:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ACQ Reject: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 121
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->rxFail:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RX Fail: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 122
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->syncCirReady:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Sync Cir Ready: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 123
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->sfdFail:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SFD Fail: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->sfdFound:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SFD Found: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 125
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->phrDecError:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PHR Decoding error: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->phrBitError:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PHR Bit error: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->psduDecError:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PSDU Decoding Error: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 128
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->psduBitError:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PSDU bit Error: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 129
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->stsFound:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "STS Found: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 130
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->eof:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "EOF: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 131
    iget-object v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
