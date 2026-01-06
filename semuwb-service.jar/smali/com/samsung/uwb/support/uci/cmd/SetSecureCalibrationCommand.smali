.class public Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SetSecureCalibrationCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SET_SECURE_CALIBRATION_CMD"


# instance fields
.field public final channelId:B

.field public final configVersion:I

.field public final cryptographicTag:[B

.field public final tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;


# direct methods
.method public constructor <init>(BLcom/samsung/uwb/support/data/param/TlvParam;I[B)V
    .locals 4
    .param p1, "channelId"    # B
    .param p2, "tlvParam"    # Lcom/samsung/uwb/support/data/param/TlvParam;
    .param p3, "configVersion"    # I
    .param p4, "cryptographicTag"    # [B

    .line 46
    nop

    .line 49
    invoke-static {p1, p2}, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->getPayload(BLcom/samsung/uwb/support/data/param/TlvParam;)[B

    move-result-object v0

    .line 46
    const/4 v1, 0x1

    const/16 v2, 0xf

    const/16 v3, 0x23

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->cryptographicTag:[B

    .line 50
    iput-byte p1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->channelId:B

    .line 51
    iput-object p2, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 52
    iput p3, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->configVersion:I

    .line 53
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->cryptographicTag:[B

    array-length v0, v0

    array-length v1, p4

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->cryptographicTag:[B

    aget-byte v2, p4, v0

    aput-byte v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 8
    .param p1, "payload"    # [B

    .line 21
    const/16 v0, 0xf

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->cryptographicTag:[B

    .line 25
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->channelId:B

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 29
    .local v1, "tag":B
    array-length v3, p1

    iget-object v4, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->cryptographicTag:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x6

    sub-int/2addr v3, v4

    .line 30
    .local v3, "length":I
    new-array v4, v3, [B

    .line 31
    .local v4, "value":[B
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    array-length v5, v4

    add-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 34
    .local v5, "tlvBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    int-to-byte v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 40
    .local v6, "tlvArray":[B
    invoke-static {v6, v2}, Lcom/samsung/uwb/support/data/param/securecalibration/SecureCalibrationParameter;->parse([BI)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->configVersion:I

    .line 42
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->cryptographicTag:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 43
    return-void
.end method

.method private static getPayload(BLcom/samsung/uwb/support/data/param/TlvParam;)[B
    .locals 3
    .param p0, "channelId"    # B
    .param p1, "tlvParam"    # Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 61
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 62
    .local v0, "payloadLen":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 63
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 66
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 67
    .local v2, "payload":[B
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->channelId:B

    .line 74
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "SET_SECURE_CALIBRATION_CMD"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 73
    const-string v2, "%s, Channel:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 75
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->tlvParam:Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 78
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->configVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Config Version:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 79
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;->cryptographicTag:[B

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cryptographic Tag:0x%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
