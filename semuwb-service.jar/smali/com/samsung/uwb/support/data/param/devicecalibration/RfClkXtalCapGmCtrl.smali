.class public Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "RfClkXtalCapGmCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RF_CLK_XTAL_CAP_GM_CTRL"


# instance fields
.field private final numOfRegister:B

.field private final rfClkRegisters:[S


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 4
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 18
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->numOfRegister:B

    .line 21
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->numOfRegister:B

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->rfClkRegisters:[S

    .line 22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->numOfRegister:B

    if-ge v1, v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->rfClkRegisters:[S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>([S)V
    .locals 3
    .param p1, "registers"    # [S

    .line 28
    invoke-static {p1}, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->getLength([S)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->getPayload([S)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 29
    array-length v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->numOfRegister:B

    .line 30
    iput-object p1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->rfClkRegisters:[S

    .line 31
    return-void
.end method

.method private static getLength([S)I
    .locals 1
    .param p0, "registers"    # [S

    .line 43
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 44
    .local v0, "length":I
    return v0
.end method

.method private static getPayload([S)[B
    .locals 6
    .param p0, "registers"    # [S

    .line 48
    invoke-static {p0}, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->getLength([S)I

    move-result v0

    .line 50
    .local v0, "length":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 51
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p0

    int-to-byte v2, v2

    .line 52
    .local v2, "numOfRxRegister":B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-short v5, p0, v4

    .line 54
    .local v5, "data":S
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 53
    .end local v5    # "data":S
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 57
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getNumOfRegister()B
    .locals 1

    .line 34
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->numOfRegister:B

    return v0
.end method

.method public getRfClkRegisters()[S
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->rfClkRegisters:[S

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "RF_CLK_XTAL_CAP_GM_CTRL"

    invoke-super {p0, v1}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 64
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->numOfRegister:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "NUM_OF_REGISTER: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->numOfRegister:B

    if-ge v1, v2, :cond_0

    .line 66
    nop

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/RfClkXtalCapGmCtrl;->rfClkRegisters:[S

    aget-short v3, v3, v1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 66
    const-string v3, "REGISTER_ID: %d,  Value: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
