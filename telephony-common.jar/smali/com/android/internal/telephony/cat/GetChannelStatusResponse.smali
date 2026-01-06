.class Lcom/android/internal/telephony/cat/GetChannelStatusResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field blacklist channelIds:[Z

.field blacklist i:Ljava/util/Iterator;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Iterator;[Z)V
    .locals 0

    .line 580
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 582
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    const/4 v0, 0x0

    .line 549
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 550
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 554
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 555
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 556
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 559
    iget v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 562
    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 567
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 568
    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, -0x80

    :goto_1
    int-to-byte v2, v2

    goto :goto_3

    .line 563
    :cond_1
    :goto_2
    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 564
    iget-byte v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    goto :goto_1

    .line 573
    :cond_2
    :goto_3
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 574
    iget-byte v1, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    const-string v1, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
