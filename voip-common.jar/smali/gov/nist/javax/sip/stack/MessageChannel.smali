.class public abstract Lgov/nist/javax/sip/stack/MessageChannel;
.super Ljava/lang/Object;
.source "MessageChannel.java"


# instance fields
.field protected transient greylist messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

.field protected greylist useCount:I


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final greylist copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fromReq"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, "start":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 445
    const-string v2, "\r\n"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 446
    .local v2, "end":I
    if-eq v2, v1, :cond_0

    .line 448
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 450
    const/4 v1, 0x1

    return v1

    .line 453
    .end local v2    # "end":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static final greylist copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p0, "fromReq"    # Ljava/lang/String;
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 466
    const-string v0, "Via"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 467
    .local v1, "start":I
    const/4 v2, 0x0

    .line 468
    .local v2, "found":Z
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 469
    const-string v4, "\r\n"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 470
    .local v4, "end":I
    if-eq v4, v3, :cond_0

    .line 472
    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 474
    const/4 v2, 0x1

    .line 475
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 479
    .end local v4    # "end":I
    goto :goto_0

    .line 477
    .restart local v4    # "end":I
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 480
    .end local v4    # "end":I
    :cond_1
    return v2
.end method

.method public static greylist getKey(Lgov/nist/core/HostPort;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hostPort"    # Lgov/nist/core/HostPort;
    .param p1, "transport"    # Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method public static greylist getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inetAddr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract greylist close()V
.end method

.method protected final greylist createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;
    .locals 8
    .param p1, "badReq"    # Ljava/lang/String;
    .param p2, "pe"    # Ljava/text/ParseException;

    .line 383
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 384
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP/2.0 400 Bad Request ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-static {p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyViaHeaders(Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 388
    return-object v2

    .line 389
    :cond_0
    const-string v1, "CSeq"

    invoke-static {v1, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    return-object v2

    .line 391
    :cond_1
    const-string v1, "Call-ID"

    invoke-static {v1, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    return-object v2

    .line 393
    :cond_2
    const-string v1, "From"

    invoke-static {v1, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 394
    return-object v2

    .line 395
    :cond_3
    const-string v1, "To"

    invoke-static {v1, p1, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->copyHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 396
    return-object v2

    .line 399
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "toStart":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const-string v3, "tag"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 401
    const-string v2, ";tag=badreq"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :cond_5
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    .line 406
    .local v2, "s":Ljavax/sip/header/ServerHeader;
    const-string v3, "\r\n"

    if-eqz v2, :cond_6

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/sip/header/ServerHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 410
    .local v4, "clength":I
    instance-of v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    if-eqz v5, :cond_8

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/2addr v5, v4

    const-string v6, "Content-Type"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 412
    const-string v6, ": message/sipfrag\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 413
    const-string v6, "Content-Length"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x514

    if-ge v5, v6, :cond_7

    goto :goto_0

    .line 424
    :cond_7
    new-instance v5, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    .line 425
    .local v5, "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ContentLength;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 418
    .end local v5    # "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    :cond_8
    :goto_0
    new-instance v5, Lgov/nist/javax/sip/header/ContentType;

    const-string v6, "message"

    const-string v7, "sipfrag"

    invoke-direct {v5, v6, v7}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v5, "cth":Ljavax/sip/header/ContentTypeHeader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljavax/sip/header/ContentTypeHeader;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    new-instance v6, Lgov/nist/javax/sip/header/ContentLength;

    invoke-direct {v6, v4}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    .line 421
    .local v6, "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/ContentLength;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n\r\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    .end local v5    # "cth":Ljavax/sip/header/ContentTypeHeader;
    .end local v6    # "clengthHeader":Lgov/nist/javax/sip/header/ContentLength;
    nop

    .line 428
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public greylist getHost()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHostPort()Lgov/nist/core/HostPort;
    .locals 3

    .line 288
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    .line 289
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 290
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 291
    return-object v0
.end method

.method public abstract greylist getKey()Ljava/lang/String;
.end method

.method public greylist getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 1

    .line 487
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    return-object v0
.end method

.method public abstract greylist getPeerAddress()Ljava/lang/String;
.end method

.method public greylist getPeerHostPort()Lgov/nist/core/HostPort;
    .locals 3

    .line 300
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    .line 301
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 302
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 303
    return-object v0
.end method

.method protected abstract greylist getPeerInetAddress()Ljava/net/InetAddress;
.end method

.method public abstract greylist getPeerPacketSourceAddress()Ljava/net/InetAddress;
.end method

.method public abstract greylist getPeerPacketSourcePort()I
.end method

.method public abstract greylist getPeerPort()I
.end method

.method protected abstract greylist getPeerProtocol()Ljava/lang/String;
.end method

.method public greylist getPort()I
    .locals 1

    .line 186
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v0

    return v0

    .line 189
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public greylist getRawIpSourceAddress()Ljava/lang/String;
    .locals 4

    .line 258
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "sourceAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 261
    .local v1, "rawIpSourceAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 262
    .local v2, "sourceInetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 265
    .end local v2    # "sourceInetAddress":Ljava/net/InetAddress;
    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 266
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public abstract greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end method

.method public abstract greylist getTransport()Ljava/lang/String;
.end method

.method public greylist getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 2

    .line 314
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 316
    .local v0, "channelViaHeader":Lgov/nist/javax/sip/header/Via;
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 319
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 320
    return-object v0
.end method

.method public abstract greylist getViaHost()Ljava/lang/String;
.end method

.method public greylist getViaHostPort()Lgov/nist/core/HostPort;
    .locals 3

    .line 330
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    .line 331
    .local v0, "retval":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 332
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 333
    return-object v0
.end method

.method public abstract greylist getViaPort()I
.end method

.method public abstract greylist isReliable()Z
.end method

.method public abstract greylist isSecure()Z
.end method

.method protected greylist logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V
    .locals 8
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "time"    # J

    .line 344
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 349
    const/16 p3, 0x13c4

    .line 350
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 350
    const/4 v5, 0x1

    move-object v2, p1

    move-wide v6, p4

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local p4    # "time":J
    .local v2, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v6, "time":J
    invoke-interface/range {v1 .. v7}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 352
    return-void
.end method

.method public greylist logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V
    .locals 11
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "receptionTime"    # J
    .param p4, "status"    # Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v0

    .line 364
    .local v0, "peerport":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ContactHeader;

    .line 366
    .local v1, "contact":Ljavax/sip/header/ContactHeader;
    invoke-interface {v1}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/AddressImpl;->getPort()I

    move-result v0

    .line 369
    .end local v1    # "contact":Ljavax/sip/header/ContactHeader;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "from":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "to":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    iget-object v3, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    const/4 v8, 0x0

    move-object v4, p1

    move-wide v9, p2

    move-object v7, p4

    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local p2    # "receptionTime":J
    .end local p4    # "status":Ljava/lang/String;
    .local v4, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .local v7, "status":Ljava/lang/String;
    .local v9, "receptionTime":J
    invoke-interface/range {v3 .. v10}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 373
    return-void
.end method

.method public abstract greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    .locals 7
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 249
    .local v4, "time":J
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 250
    .local v6, "bytes":[B
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v6, p2, p3, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V

    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local p2    # "receiverAddress":Ljava/net/InetAddress;
    .end local p3    # "receiverPort":I
    .local v1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v2, "receiverAddress":Ljava/net/InetAddress;
    .local v3, "receiverPort":I
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 252
    return-void
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljavax/sip/address/Hop;)V
    .locals 10
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "hop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 201
    .local v5, "time":J
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 205
    .local v3, "hopAddr":Ljava/net/InetAddress;
    const/16 v1, 0x10

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    array-length v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    :try_start_1
    aget-object v7, v0, v4

    .line 206
    .local v7, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 207
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v8

    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 208
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 209
    nop

    .line 210
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v8

    .line 209
    invoke-virtual {v7, v3, v8}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v8

    .line 211
    .local v8, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    instance-of v9, v8, Lgov/nist/javax/sip/stack/RawMessageChannel;

    if-eqz v9, :cond_2

    .line 212
    move-object v0, v8

    check-cast v0, Lgov/nist/javax/sip/stack/RawMessageChannel;

    invoke-interface {v0, p1}, Lgov/nist/javax/sip/stack/RawMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 213
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 214
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "Self routing message"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 234
    .end local v7    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v8    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :catchall_0
    move-exception v0

    move-object v2, p1

    goto/16 :goto_7

    .line 226
    :catch_0
    move-exception v0

    move-object v2, p1

    goto/16 :goto_5

    .line 224
    :catch_1
    move-exception v0

    move-object v2, p1

    goto/16 :goto_6

    .line 234
    .restart local v7    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    .restart local v8    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v2, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    move-object p1, v1

    move-object v9, v3

    move-object v3, v2

    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v9, "hopAddr":Ljava/net/InetAddress;
    goto :goto_2

    .line 234
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_1
    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    .line 215
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    :goto_2
    return-void

    .line 211
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_2
    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    goto :goto_3

    .line 208
    .end local v8    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_3
    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    goto :goto_3

    .line 207
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_4
    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    goto :goto_3

    .line 206
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_5
    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    .line 205
    .end local v7    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_0

    .line 234
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catchall_1
    move-exception v0

    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    move-object v2, v3

    move-object v3, v9

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    goto/16 :goto_7

    .line 226
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_2
    move-exception v0

    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    move-object v2, v3

    move-object v3, v9

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    goto/16 :goto_5

    .line 224
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_3
    move-exception v0

    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    move-object v2, v3

    move-object v3, v9

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    goto/16 :goto_6

    .line 220
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_6
    move-object v9, v3

    move-object v3, p1

    move-object p1, p0

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 222
    .local v0, "msg":[B
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    instance-of v4, v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v0, v9, v2, v4}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 234
    .end local v0    # "msg":[B
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    move-object v1, p1

    move-object v2, v3

    move-object v3, v9

    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_4

    .line 234
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    :cond_7
    move-object v2, v3

    move-object v3, v9

    .line 237
    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    :goto_4
    return-void

    .line 234
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v3, v9

    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    goto :goto_7

    .line 226
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    :catch_4
    move-exception v0

    move-object v2, v3

    move-object v3, v9

    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    goto :goto_5

    .line 224
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v9    # "hopAddr":Ljava/net/InetAddress;
    :catch_5
    move-exception v0

    move-object v2, v3

    move-object v3, v9

    .end local v9    # "hopAddr":Ljava/net/InetAddress;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "hopAddr":Ljava/net/InetAddress;
    goto :goto_6

    .line 234
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catchall_3
    move-exception v0

    move-object v2, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    goto :goto_7

    .line 226
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_6
    move-exception v0

    move-object v2, p1

    .line 227
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object p1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object p1

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 228
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object p1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object p1

    const-string v4, "Error self routing message cause by: "

    invoke-interface {p1, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 231
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v4, "Error self routing message"

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v3    # "hopAddr":Ljava/net/InetAddress;
    .end local v5    # "time":J
    .end local p0    # "this":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local p2    # "hop":Ljavax/sip/address/Hop;
    throw p1

    .line 224
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "hopAddr":Ljava/net/InetAddress;
    .restart local v5    # "time":J
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p2    # "hop":Ljavax/sip/address/Hop;
    :catch_7
    move-exception v0

    move-object v2, p1

    .line 225
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_6
    nop

    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v3    # "hopAddr":Ljava/net/InetAddress;
    .end local v5    # "time":J
    .end local p0    # "this":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local p2    # "hop":Ljavax/sip/address/Hop;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 234
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v3    # "hopAddr":Ljava/net/InetAddress;
    .restart local v5    # "time":J
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local p2    # "hop":Ljavax/sip/address/Hop;
    :catchall_4
    move-exception v0

    :goto_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object p1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object p1

    invoke-interface {p1, v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 235
    invoke-interface {p2}, Ljavax/sip/address/Hop;->getPort()I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/MessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    .line 236
    :cond_9
    throw v0
.end method

.method protected abstract greylist sendMessage([BLjava/net/InetAddress;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected greylist uncache()V
    .locals 0

    .line 80
    return-void
.end method
