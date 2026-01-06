.class public Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionUpdateControllerMulticastListResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_UPDATE_CONTROLLER_MULTICAST_LIST_RSP"


# instance fields
.field public final controleeAddressList:[S

.field public final controleeStatusList:[I

.field public final numOfControlee:I

.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .param p1, "uci"    # [B

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 20
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->status:I

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->numOfControlee:I

    .line 24
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->numOfControlee:I

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->controleeAddressList:[S

    .line 25
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->numOfControlee:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->controleeStatusList:[I

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->numOfControlee:I

    if-ge v1, v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->controleeAddressList:[S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 28
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->controleeStatusList:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 34
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->status:I

    int-to-byte v1, v1

    .line 36
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SESSION_UPDATE_CONTROLLER_MULTICAST_LIST_RSP"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 35
    const-string v2, "%s, Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->numOfControlee:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Number of Controlee: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->numOfControlee:I

    if-ge v1, v2, :cond_0

    .line 39
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 40
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->controleeAddressList:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Controlee Address: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 41
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->controleeStatusList:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;->controleeStatusList:[I

    aget v3, v3, v1

    .line 42
    invoke-static {v3}, Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 41
    const-string v3, "Controlee Status: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
