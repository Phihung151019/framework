.class public Lcom/samsung/uwb/support/uci/UciPacket;
.super Ljava/lang/Object;
.source "UciPacket.java"


# static fields
.field private static final UCI_GID_MASK:I = 0xf

.field private static final UCI_GID_SHIFT:I = 0x0

.field private static final UCI_MAX_PAYLOAD_SIZE:I = 0xff

.field private static final UCI_MSG_HDR_SIZE:I = 0x4

.field private static final UCI_MTS_CMD:I = 0x20

.field private static final UCI_MTS_NTF:I = 0x60

.field private static final UCI_MTS_RSP:I = 0x40

.field private static final UCI_MT_MASK:I = 0xe0

.field private static final UCI_MT_SHIFT:B = 0x5t

.field private static final UCI_OID_MASK:I = 0x3f

.field private static final UCI_OID_SHIFT:I = 0x0

.field private static final UCI_PBF_MASK:I = 0x10

.field private static final UCI_PBF_SHIFT:B = 0x4t


# instance fields
.field private gid:B

.field private length:S

.field protected mDataTransferStatus:Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

.field protected mDeviceState:Lcom/samsung/uwb/support/data/code/DeviceState;

.field protected mReasonCode:Lcom/samsung/uwb/support/data/code/ReasonCode;

.field protected mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

.field private mt:B

.field private oid:B

.field private payload:[B

.field private pbf:B


# direct methods
.method public constructor <init>(BBBBS[B)V
    .locals 2
    .param p1, "mt"    # B
    .param p2, "pbf"    # B
    .param p3, "gid"    # B
    .param p4, "oid"    # B
    .param p5, "length"    # S
    .param p6, "payload"    # [B

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    .line 40
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->pbf:B

    .line 41
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    .line 42
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    .line 43
    iput-short v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    .line 45
    new-instance v1, Lcom/samsung/uwb/support/data/code/DeviceState;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/DeviceState;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mDeviceState:Lcom/samsung/uwb/support/data/code/DeviceState;

    .line 46
    new-instance v1, Lcom/samsung/uwb/support/data/code/ReasonCode;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/ReasonCode;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mReasonCode:Lcom/samsung/uwb/support/data/code/ReasonCode;

    .line 47
    new-instance v1, Lcom/samsung/uwb/support/data/code/StatusCode;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/StatusCode;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    .line 48
    new-instance v1, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mDataTransferStatus:Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    .line 55
    iput-byte p1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    .line 56
    iput-byte p2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->pbf:B

    .line 57
    iput-byte p3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    .line 58
    iput-byte p4, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    .line 59
    iput-short p5, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 60
    if-nez p6, :cond_0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    .line 61
    return-void
.end method

.method public constructor <init>(BBB[B)V
    .locals 2
    .param p1, "mt"    # B
    .param p2, "gid"    # B
    .param p3, "oid"    # B
    .param p4, "payload"    # [B

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    .line 40
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->pbf:B

    .line 41
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    .line 42
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    .line 43
    iput-short v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    .line 45
    new-instance v1, Lcom/samsung/uwb/support/data/code/DeviceState;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/DeviceState;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mDeviceState:Lcom/samsung/uwb/support/data/code/DeviceState;

    .line 46
    new-instance v1, Lcom/samsung/uwb/support/data/code/ReasonCode;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/ReasonCode;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mReasonCode:Lcom/samsung/uwb/support/data/code/ReasonCode;

    .line 47
    new-instance v1, Lcom/samsung/uwb/support/data/code/StatusCode;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/StatusCode;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    .line 48
    new-instance v1, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mDataTransferStatus:Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    .line 79
    iput-byte p1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    .line 80
    iput-byte p2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    .line 81
    iput-byte p3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    .line 82
    if-nez p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p4

    int-to-short v1, v1

    :goto_0
    iput-short v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 83
    if-nez p4, :cond_1

    new-array v0, v0, [B

    goto :goto_1

    :cond_1
    move-object v0, p4

    :goto_1
    iput-object v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    .line 84
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "uci"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    .line 40
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->pbf:B

    .line 41
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    .line 42
    iput-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    .line 43
    iput-short v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    .line 45
    new-instance v1, Lcom/samsung/uwb/support/data/code/DeviceState;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/DeviceState;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mDeviceState:Lcom/samsung/uwb/support/data/code/DeviceState;

    .line 46
    new-instance v1, Lcom/samsung/uwb/support/data/code/ReasonCode;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/ReasonCode;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mReasonCode:Lcom/samsung/uwb/support/data/code/ReasonCode;

    .line 47
    new-instance v1, Lcom/samsung/uwb/support/data/code/StatusCode;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/StatusCode;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    .line 48
    new-instance v1, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;-><init>()V

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mDataTransferStatus:Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    .line 64
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xe0

    shr-int/lit8 v1, v1, 0x5

    .line 65
    .local v1, "mt":I
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x4

    shr-int/2addr v2, v3

    .line 66
    .local v2, "pbf":I
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    .line 67
    .local v0, "gid":I
    const/4 v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x3f

    .line 68
    .local v4, "oid":I
    array-length v5, p1

    invoke-static {p1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 70
    .local v3, "payload":[B
    int-to-byte v5, v1

    iput-byte v5, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    .line 71
    int-to-byte v5, v2

    iput-byte v5, p0, Lcom/samsung/uwb/support/uci/UciPacket;->pbf:B

    .line 72
    int-to-byte v5, v0

    iput-byte v5, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    .line 73
    int-to-byte v5, v4

    iput-byte v5, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    .line 74
    array-length v5, v3

    int-to-short v5, v5

    iput-short v5, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 75
    iput-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    .line 76
    return-void
.end method


# virtual methods
.method public getGid()B
    .locals 1

    .line 95
    iget-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    return v0
.end method

.method public getLength()S
    .locals 1

    .line 103
    iget-short v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    return v0
.end method

.method public getMt()B
    .locals 1

    .line 87
    iget-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    return v0
.end method

.method public getOid()B
    .locals 1

    .line 99
    iget-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    return-object v0
.end method

.method public getPbf()B
    .locals 1

    .line 91
    iget-byte v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->pbf:B

    return v0
.end method

.method public getStatus()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public parse()Lcom/samsung/uwb/support/uci/UciPacket;
    .locals 11

    .line 121
    invoke-virtual {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->toByteArray()[B

    move-result-object v0

    .line 122
    .local v0, "uci":[B
    const/4 v1, 0x0

    .line 124
    .local v1, "res":Lcom/samsung/uwb/support/uci/UciPacket;
    :try_start_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 498
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 388
    :sswitch_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-nez v2, :cond_1

    .line 389
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_0

    .line 390
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 391
    :cond_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 392
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionSetVendorAppConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionSetVendorAppConfigResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 394
    :cond_1
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v10, :cond_4

    .line 395
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_2

    .line 396
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/UrskDeleteCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 397
    :cond_2
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_3

    .line 398
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/UrskDeleteResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/UrskDeleteResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 399
    :cond_3
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 400
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 402
    :cond_4
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v9, :cond_6

    .line 403
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_5

    .line 404
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/GetAllUwbSessionsCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/GetAllUwbSessionsCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 405
    :cond_5
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 406
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/GetAllUwbSessionsResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 408
    :cond_6
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v8, :cond_8

    .line 409
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_7

    .line 410
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionGetVendorAppConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionGetVendorAppConfigCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 411
    :cond_7
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 412
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionGetVendorAppConfigResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 414
    :cond_8
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x20

    if-ne v2, v3, :cond_b

    .line 415
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_9

    .line 416
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 417
    :cond_9
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_a

    .line 418
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/DoVcoPllCalibrationResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/DoVcoPllCalibrationResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 419
    :cond_a
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 420
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 422
    :cond_b
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x21

    if-ne v2, v3, :cond_d

    .line 423
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_c

    .line 424
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 425
    :cond_c
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 426
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SetDeviceCalibrationResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SetDeviceCalibrationResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 428
    :cond_d
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x22

    if-ne v2, v3, :cond_f

    .line 429
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_e

    .line 430
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 431
    :cond_e
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 432
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 434
    :cond_f
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x23

    if-ne v2, v3, :cond_11

    .line 435
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_10

    .line 436
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SetSecureCalibrationCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 437
    :cond_10
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 438
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SetSecureCalibrationResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SetSecureCalibrationResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 440
    :cond_11
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x30

    if-ne v2, v3, :cond_14

    .line 441
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_12

    .line 442
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/UwbEseConnectivityCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/UwbEseConnectivityCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 443
    :cond_12
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_13

    .line 444
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/UwbEseConnectivityResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/UwbEseConnectivityResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 445
    :cond_13
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 446
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/UwbEseConnectivityNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/UwbEseConnectivityNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 448
    :cond_14
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x31

    if-ne v2, v3, :cond_17

    .line 449
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_15

    .line 450
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 451
    :cond_15
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_16

    .line 452
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/UwbEseBindingResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/UwbEseBindingResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 453
    :cond_16
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 454
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 456
    :cond_17
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x32

    if-ne v2, v3, :cond_1a

    .line 457
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_18

    .line 458
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCheckCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCheckCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 459
    :cond_18
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_19

    .line 460
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/UwbEseBindingCheckResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/UwbEseBindingCheckResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 461
    :cond_19
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 462
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingCheckNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingCheckNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 464
    :cond_1a
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x35

    if-ne v2, v3, :cond_1b

    .line 465
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 466
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/UwbsSleepEntryPreventionNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/UwbsSleepEntryPreventionNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 468
    :cond_1b
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x36

    if-ne v2, v3, :cond_1c

    .line 469
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 470
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/CccDebugNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/CccDebugNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 472
    :cond_1c
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x37

    if-ne v2, v3, :cond_1f

    .line 473
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_1d

    .line 474
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/WriteCountryCodeCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/WriteCountryCodeCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 475
    :cond_1d
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_1e

    .line 476
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/WriteCountryCodeResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/WriteCountryCodeResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 477
    :cond_1e
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 478
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/WriteCountryCodeNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/WriteCountryCodeNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 480
    :cond_1f
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x39

    if-ne v2, v3, :cond_20

    .line 481
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 482
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 484
    :cond_20
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_21

    .line 485
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 486
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 488
    :cond_21
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_22

    .line 489
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 490
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanCoexMaxGrantDurationExceededWrnNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanCoexMaxGrantDurationExceededWrnNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 493
    :cond_22
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Not defined SAMSUNG_PROPRIETARY_GROUP oid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    goto/16 :goto_1

    .line 310
    :sswitch_1
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-nez v2, :cond_24

    .line 311
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_23

    .line 312
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestConfigSetCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/TestConfigSetCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 313
    :cond_23
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 314
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/TestConfigSetResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 316
    :cond_24
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v10, :cond_26

    .line 317
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_25

    .line 318
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestConfigGetCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/TestConfigGetCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 319
    :cond_25
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 320
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/TestConfigGetResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/TestConfigGetResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 322
    :cond_26
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v9, :cond_29

    .line 323
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_27

    .line 324
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestPeriodicTxCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/TestPeriodicTxCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 325
    :cond_27
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_28

    .line 326
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/TestPeriodicTxResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/TestPeriodicTxResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 327
    :cond_28
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 328
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/TestPeriodicTxNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/TestPeriodicTxNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 330
    :cond_29
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v8, :cond_2c

    .line 331
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_2a

    .line 332
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 333
    :cond_2a
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_2b

    .line 334
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/TestPerRxResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/TestPerRxResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 335
    :cond_2b
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 336
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/TestPerRxNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/TestPerRxNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 338
    :cond_2c
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v7, :cond_2f

    .line 339
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_2d

    .line 340
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestRxCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/TestRxCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 341
    :cond_2d
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_2e

    .line 342
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/TestRxResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/TestRxResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 343
    :cond_2e
    goto/16 :goto_1

    .line 346
    :cond_2f
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v5, :cond_32

    .line 347
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_30

    .line 348
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestLoopbackCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/TestLoopbackCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 349
    :cond_30
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_31

    .line 350
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/TestLoopbackResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/TestLoopbackResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 351
    :cond_31
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 352
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/TestLoopbackNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/TestLoopbackNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 354
    :cond_32
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v4, :cond_34

    .line 355
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_33

    .line 356
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestStopSessionCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/TestStopSessionCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 357
    :cond_33
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 358
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/TestStopSessionResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/TestStopSessionResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 360
    :cond_34
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v3, :cond_36

    .line 361
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_35

    goto/16 :goto_1

    .line 363
    :cond_35
    goto/16 :goto_1

    .line 367
    :cond_36
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Not defined TEST_GROUP oid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    goto/16 :goto_1

    .line 372
    :sswitch_2
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-nez v2, :cond_38

    .line 373
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_37

    .line 374
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/android/AndroidGetPowerStatsCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/android/AndroidGetPowerStatsCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 375
    :cond_37
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 376
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/android/AndroidGetPowerStatsResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/android/AndroidGetPowerStatsResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 378
    :cond_38
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v10, :cond_6f

    .line 379
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_39

    .line 380
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/android/AndroidSetCountryCodeCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/android/AndroidSetCountryCodeCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 381
    :cond_39
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 382
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 307
    :sswitch_3
    goto/16 :goto_1

    .line 266
    :sswitch_4
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-nez v2, :cond_3c

    .line 267
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_3a

    .line 268
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/RangeStartCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/RangeStartCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 269
    :cond_3a
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_3b

    .line 270
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/RangeStartResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/RangeStartResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 271
    :cond_3b
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 272
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/RangeDataNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/RangeDataNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 274
    :cond_3c
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v10, :cond_3e

    .line 275
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_3d

    .line 276
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/RangeStopCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/RangeStopCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 277
    :cond_3d
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 278
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/RangeStopResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/RangeStopResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 280
    :cond_3e
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v8, :cond_40

    .line 281
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_3f

    .line 282
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/RangeGetRangingCountCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/RangeGetRangingCountCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 283
    :cond_3f
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 284
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/RangeGetRangingCountResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/RangeGetRangingCountResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 286
    :cond_40
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v6, :cond_41

    .line 287
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 288
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/SessionDataCreditNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/SessionDataCreditNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 290
    :cond_41
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v7, :cond_42

    .line 291
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 292
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 294
    :cond_42
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v5, :cond_44

    .line 295
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_43

    goto/16 :goto_1

    .line 297
    :cond_43
    goto/16 :goto_1

    .line 301
    :cond_44
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Not defined UWB_RANGING_SESSION_CONTROL_GROUP oid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    goto/16 :goto_1

    .line 176
    :sswitch_5
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-nez v2, :cond_46

    .line 177
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_45

    .line 178
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionInitCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 179
    :cond_45
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 180
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionInitResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 182
    :cond_46
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v10, :cond_48

    .line 183
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_47

    .line 184
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionDeinitCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionDeinitCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 185
    :cond_47
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 186
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionDeinitResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionDeinitResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 188
    :cond_48
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v9, :cond_49

    .line 189
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 190
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 192
    :cond_49
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v8, :cond_4b

    .line 193
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_4a

    .line 194
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 195
    :cond_4a
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 196
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionSetAppConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionSetAppConfigResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 198
    :cond_4b
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v6, :cond_4d

    .line 199
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_4c

    .line 200
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionGetAppConfigCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 201
    :cond_4c
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 202
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionGetAppConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionGetAppConfigResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 204
    :cond_4d
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v7, :cond_4f

    .line 205
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_4e

    .line 206
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionGetCountCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/SessionGetCountCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 207
    :cond_4e
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 208
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionGetCountResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 210
    :cond_4f
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v5, :cond_51

    .line 211
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_50

    .line 212
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionGetStateCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionGetStateCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 213
    :cond_50
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 214
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionGetStateResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 216
    :cond_51
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v4, :cond_54

    .line 217
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_52

    .line 218
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateControllerMulticastListCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 219
    :cond_52
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_53

    .line 220
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateControllerMulticastListResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 221
    :cond_53
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 222
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/SessionUpdateControllerMulticastListNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/SessionUpdateControllerMulticastListNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 224
    :cond_54
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v3, :cond_56

    .line 225
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_55

    goto/16 :goto_1

    .line 227
    :cond_55
    goto/16 :goto_1

    .line 230
    :cond_56
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0x9

    if-ne v2, v3, :cond_58

    .line 231
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_57

    .line 232
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionUpdateActiveRoundsDtTagCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 233
    :cond_57
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 234
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionUpdateActiveRoundsDtTagResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 236
    :cond_58
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5a

    .line 237
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_59

    goto/16 :goto_1

    .line 239
    :cond_59
    goto/16 :goto_1

    .line 242
    :cond_5a
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5c

    .line 243
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_5b

    .line 244
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionQueryDataSizeInRangingCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionQueryDataSizeInRangingCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 245
    :cond_5b
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 246
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/rsp/SessionQueryDataSizeInRangingResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 248
    :cond_5c
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5e

    .line 249
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_5d

    .line 250
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControllerConfigCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 251
    :cond_5d
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 252
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionSetHusControllerConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionSetHusControllerConfigResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 254
    :cond_5e
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_60

    .line 255
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_5f

    .line 256
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionSetHusControleeConfigCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 257
    :cond_5f
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 258
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/SessionSetHusControleeConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/SessionSetHusControleeConfigResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 261
    :cond_60
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Not defined UWB_SESSION_CONFIG_GROUP oid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    goto/16 :goto_1

    .line 126
    :sswitch_6
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-nez v2, :cond_62

    .line 127
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_61

    .line 128
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/CoreDeviceResetCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/CoreDeviceResetCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 129
    :cond_61
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 130
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/CoreDeviceResetResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/CoreDeviceResetResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 132
    :cond_62
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v10, :cond_63

    .line 133
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 134
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/CoreDeviceStatusNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/CoreDeviceStatusNotification;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 136
    :cond_63
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v9, :cond_65

    .line 137
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_64

    .line 138
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/CoreGetDeviceInfoCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/CoreGetDeviceInfoCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 139
    :cond_64
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 140
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 142
    :cond_65
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v8, :cond_67

    .line 143
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_66

    .line 144
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/CoreGetCapsInfoCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/CoreGetCapsInfoCommand;-><init>()V

    move-object v1, v2

    goto/16 :goto_1

    .line 145
    :cond_66
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 146
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/CoreGetCapsInfoResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 148
    :cond_67
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v6, :cond_69

    .line 149
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_68

    .line 150
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/CoreSetConfigCommand;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 151
    :cond_68
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 152
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/CoreSetConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/CoreSetConfigResponse;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_1

    .line 154
    :cond_69
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v7, :cond_6b

    .line 155
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_6a

    .line 156
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;

    iget-object v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/cmd/CoreGetConfigCommand;-><init>([B)V

    move-object v1, v2

    goto :goto_1

    .line 157
    :cond_6a
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 158
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/CoreGetConfigResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/CoreGetConfigResponse;-><init>([B)V

    move-object v1, v2

    goto :goto_1

    .line 160
    :cond_6b
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v4, :cond_6c

    .line 161
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v8, :cond_6f

    .line 162
    new-instance v2, Lcom/samsung/uwb/support/uci/ntf/CoreGenericErrorNotification;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/ntf/CoreGenericErrorNotification;-><init>([B)V

    move-object v1, v2

    goto :goto_1

    .line 164
    :cond_6c
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    if-ne v2, v3, :cond_6e

    .line 165
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v10, :cond_6d

    .line 166
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/CoreQueryUwbsTimestampCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/CoreQueryUwbsTimestampCommand;-><init>()V

    move-object v1, v2

    goto :goto_1

    .line 167
    :cond_6d
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    if-ne v2, v9, :cond_6f

    .line 168
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/CoreQueryUwbsTimestampResponse;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/uci/rsp/CoreQueryUwbsTimestampResponse;-><init>([B)V

    move-object v1, v2

    goto :goto_1

    .line 171
    :cond_6e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Not defined UCI_CORE_GROUP oid"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    goto :goto_1

    .line 498
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not defined gid: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_6f
    :goto_1
    nop

    .line 506
    return-object v1

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 504
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x9 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public setPayload([B)V
    .locals 1
    .param p1, "payload"    # [B

    .line 111
    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 113
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    goto :goto_0

    .line 115
    :cond_0
    array-length v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    .line 116
    iput-object p1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    .line 118
    :goto_0
    return-void
.end method

.method public setVendorPropertyUci(Lcom/samsung/uwb/support/data/code/DeviceState;Lcom/samsung/uwb/support/data/code/ReasonCode;Lcom/samsung/uwb/support/data/code/StatusCode;)V
    .locals 0
    .param p1, "deviceState"    # Lcom/samsung/uwb/support/data/code/DeviceState;
    .param p2, "reasonCode"    # Lcom/samsung/uwb/support/data/code/ReasonCode;
    .param p3, "statusCode"    # Lcom/samsung/uwb/support/data/code/StatusCode;

    .line 529
    iput-object p1, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mDeviceState:Lcom/samsung/uwb/support/data/code/DeviceState;

    .line 530
    iput-object p2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mReasonCode:Lcom/samsung/uwb/support/data/code/ReasonCode;

    .line 531
    iput-object p3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    .line 532
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .line 510
    iget-short v0, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    add-int/lit8 v0, v0, 0x4

    .line 511
    .local v0, "packetSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 512
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->mt:B

    shl-int/lit8 v2, v2, 0x5

    iget-byte v3, p0, Lcom/samsung/uwb/support/uci/UciPacket;->gid:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 513
    iget-byte v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->oid:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 514
    iget-short v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 515
    iget-short v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->length:S

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/UciPacket;->payload:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 518
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 520
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
