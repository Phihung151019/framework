.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field blacklist bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

.field blacklist param:Lcom/android/internal/telephony/cat/OpenChannelParams;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 453
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 348
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 454
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    instance-of v2, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    if-eqz v2, :cond_0

    .line 455
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 2

    .line 447
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 448
    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 449
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    instance-of v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    if-eqz v1, :cond_0

    .line 450
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    .line 351
    const-string v0, " OpenChannelResponseData: format() "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 358
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 359
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 365
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 371
    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v0, :cond_2

    or-int/lit8 v0, v2, -0x80

    :goto_0
    int-to-byte v2, v0

    goto :goto_2

    .line 366
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 367
    iget-byte v0, v0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    goto :goto_0

    .line 376
    :cond_2
    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-byte v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 382
    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    if-ne v0, v3, :cond_a

    .line 384
    :cond_5
    const-string v0, " OpenChannelResponseData: format() : bipcon is client including Bearer description terminal reponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 386
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 389
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 391
    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 392
    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v5, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    if-eq v5, v3, :cond_9

    if-eq v5, v1, :cond_8

    const/16 v6, 0xb

    if-eq v5, v6, :cond_7

    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    goto :goto_3

    .line 404
    :cond_6
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerNGRAN;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_3

    .line 401
    :cond_7
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerEUTRAN;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_3

    .line 398
    :cond_8
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerGPRS;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_3

    .line 395
    :cond_9
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerCSD;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 408
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v4, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 415
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    if-eqz v0, :cond_b

    .line 416
    iget v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    goto :goto_4

    .line 417
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    if-eqz v0, :cond_c

    .line 418
    iget v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    goto :goto_4

    .line 421
    :cond_c
    const-string v0, " OpenChannelResponseData: bipcon null param null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    .line 424
    :goto_4
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    .line 425
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    .line 428
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 429
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    if-eqz v1, :cond_e

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 433
    iget-object p0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_5
    if-ge v1, v0, :cond_e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, [B

    .line 434
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DNS_SERVER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 435
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    array-length v5, v4

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    array-length v5, v4

    const/16 v6, 0x10

    if-ne v5, v6, :cond_d

    const/16 v5, 0x57

    .line 439
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    :cond_d
    const/16 v5, 0x21

    .line 441
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    :goto_6
    array-length v5, v4

    invoke-virtual {p1, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_e
    return-void
.end method
