.class public Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionGetVendorAppConfigResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_GET_VENDOR_APP_CONFIG_RSP"


# instance fields
.field public final numOfParam:I

.field public final status:I

.field public final tlvParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "uci"    # [B

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 22
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->status:I

    .line 25
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->status:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->numOfParam:I

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->tlvParams:Ljava/util/List;

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->numOfParam:I

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 28
    .local v1, "tlvArray":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->numOfParam:I

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;->parse([BI)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->tlvParams:Ljava/util/List;

    .line 30
    .end local v1    # "tlvArray":[B
    nop

    .line 34
    :goto_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 38
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->status:I

    int-to-byte v1, v1

    .line 40
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->numOfParam:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SESSION_GET_VENDOR_APP_CONFIG_RSP"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 39
    const-string v2, "%s, Status:0x%s(%s) Number of Parameters:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 41
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->status:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 42
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->tlvParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 43
    .local v2, "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    iget-object v4, v2, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    aget-byte v4, v4, v3

    .line 44
    .local v4, "tag":B
    nop

    .line 45
    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;->getTagName(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 44
    const-string v6, "Tag:0x%s, %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 46
    .end local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    .end local v4    # "tag":B
    goto :goto_0

    :cond_0
    goto :goto_3

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;->tlvParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 49
    .restart local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    iget v4, v2, Lcom/samsung/uwb/support/data/param/TlvParam;->length:I

    if-nez v4, :cond_2

    .line 50
    iget-object v4, v2, Lcom/samsung/uwb/support/data/param/TlvParam;->tag:[B

    aget-byte v4, v4, v3

    invoke-static {v4}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 54
    .end local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_2
    goto :goto_1

    .line 56
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
