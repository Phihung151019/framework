.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "SipUri.java"

# interfaces
.implements Ljavax/sip/address/SipURI;
.implements Lgov/nist/javax/sip/address/SipURIExt;


# static fields
.field private static final whitelist serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected greylist authority:Lgov/nist/javax/sip/address/Authority;

.field protected greylist qheaders:Lgov/nist/core/NameValueList;

.field protected greylist telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected greylist uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor greylist <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    .line 82
    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 83
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 84
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public greylist clearPassword()V
    .locals 1

    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v0

    .line 117
    .local v0, "userInfo":Lgov/nist/javax/sip/address/UserInfo;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/UserInfo;->clearPassword()V

    .line 120
    .end local v0    # "userInfo":Lgov/nist/javax/sip/address/UserInfo;
    :cond_0
    return-void
.end method

.method public greylist clearQheaders()V
    .locals 1

    .line 132
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 133
    return-void
.end method

.method public greylist clearUriParms()V
    .locals 1

    .line 109
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 110
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 2

    .line 713
    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 714
    .local v0, "retval":Lgov/nist/javax/sip/address/SipUri;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 716
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 718
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_2

    .line 719
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 720
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz v1, :cond_3

    .line 721
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 722
    :cond_3
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .locals 1

    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 242
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 245
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 249
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 253
    :cond_2
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "that"    # Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Ljavax/sip/address/SipURI;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 158
    move-object v1, p0

    .line 159
    .local v1, "a":Ljavax/sip/address/SipURI;
    move-object v3, p1

    check-cast v3, Ljavax/sip/address/SipURI;

    .line 162
    .local v3, "b":Ljavax/sip/address/SipURI;
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    return v2

    .line 166
    :cond_1
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    xor-int/2addr v4, v5

    if-eqz v4, :cond_4

    return v2

    .line 167
    :cond_4
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move v5, v0

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    xor-int/2addr v4, v5

    if-eqz v4, :cond_7

    return v2

    .line 169
    :cond_7
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    return v2

    .line 170
    :cond_8
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    return v2

    .line 171
    :cond_9
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v0

    goto :goto_4

    :cond_a
    move v4, v2

    :goto_4
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    move v5, v0

    goto :goto_5

    :cond_b
    move v5, v2

    :goto_5
    xor-int/2addr v4, v5

    if-eqz v4, :cond_c

    return v2

    .line 172
    :cond_c
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    return v2

    .line 173
    :cond_d
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v5

    if-eq v4, v5, :cond_e

    return v2

    .line 176
    :cond_e
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getParameterNames()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 177
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "pname":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "p1":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "p2":Ljava/lang/String;
    if-eqz v6, :cond_f

    if-eqz v7, :cond_f

    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    return v2

    .line 184
    .end local v5    # "pname":Ljava/lang/String;
    .end local v6    # "p1":Ljava/lang/String;
    .end local v7    # "p2":Ljava/lang/String;
    :cond_f
    goto :goto_6

    .line 187
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v0

    goto :goto_7

    :cond_11
    move v4, v2

    :goto_7
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    move v5, v0

    goto :goto_8

    :cond_12
    move v5, v2

    :goto_8
    xor-int/2addr v4, v5

    if-eqz v4, :cond_13

    return v2

    .line 188
    :cond_13
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v0

    goto :goto_9

    :cond_14
    move v4, v2

    :goto_9
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_15

    move v5, v0

    goto :goto_a

    :cond_15
    move v5, v2

    :goto_a
    xor-int/2addr v4, v5

    if-eqz v4, :cond_16

    return v2

    .line 189
    :cond_16
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    move v4, v0

    goto :goto_b

    :cond_17
    move v4, v2

    :goto_b
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v6

    if-ne v6, v5, :cond_18

    move v5, v0

    goto :goto_c

    :cond_18
    move v5, v2

    :goto_c
    xor-int/2addr v4, v5

    if-eqz v4, :cond_19

    return v2

    .line 190
    :cond_19
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v0

    goto :goto_d

    :cond_1a
    move v4, v2

    :goto_d
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    move v5, v0

    goto :goto_e

    :cond_1b
    move v5, v2

    :goto_e
    xor-int/2addr v4, v5

    if-eqz v4, :cond_1c

    return v2

    .line 191
    :cond_1c
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v0

    goto :goto_f

    :cond_1d
    move v4, v2

    :goto_f
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1e

    move v5, v0

    goto :goto_10

    :cond_1e
    move v5, v2

    :goto_10
    xor-int/2addr v4, v5

    if-eqz v4, :cond_1f

    return v2

    .line 194
    :cond_1f
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_20

    return v2

    .line 195
    :cond_20
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    return v2

    .line 197
    :cond_21
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 198
    const/4 v4, 0x0

    .line 200
    .local v4, "headerFactory":Ljavax/sip/header/HeaderFactory;
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v5
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .end local v4    # "headerFactory":Ljavax/sip/header/HeaderFactory;
    .local v5, "headerFactory":Ljavax/sip/header/HeaderFactory;
    nop

    .line 205
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 206
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    .local v6, "hname":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "h1":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "h2":Ljava/lang/String;
    if-nez v7, :cond_22

    if-eqz v8, :cond_22

    return v2

    .line 212
    :cond_22
    if-nez v8, :cond_23

    if-eqz v7, :cond_23

    return v2

    .line 214
    :cond_23
    if-nez v7, :cond_24

    if-nez v8, :cond_24

    goto :goto_11

    .line 216
    :cond_24
    :try_start_1
    invoke-static {v7}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    .line 217
    .local v9, "header1":Ljavax/sip/header/Header;
    invoke-static {v8}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v10

    .line 219
    .local v10, "header2":Ljavax/sip/header/Header;
    invoke-interface {v9, v10}, Ljavax/sip/header/Header;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v11, :cond_25

    return v2

    .line 223
    .end local v9    # "header1":Ljavax/sip/header/Header;
    .end local v10    # "header2":Ljavax/sip/header/Header;
    :cond_25
    nop

    .line 224
    .end local v6    # "hname":Ljava/lang/String;
    .end local v7    # "h1":Ljava/lang/String;
    .end local v8    # "h2":Ljava/lang/String;
    goto :goto_11

    .line 220
    .restart local v6    # "hname":Ljava/lang/String;
    .restart local v7    # "h1":Ljava/lang/String;
    .restart local v8    # "h2":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/text/ParseException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot parse one of the header of the sip uris to compare "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 222
    return v2

    .line 201
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v5    # "headerFactory":Ljavax/sip/header/HeaderFactory;
    .end local v6    # "hname":Ljava/lang/String;
    .end local v7    # "h1":Ljava/lang/String;
    .end local v8    # "h2":Ljava/lang/String;
    .local v4, "headerFactory":Ljavax/sip/header/HeaderFactory;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljavax/sip/PeerUnavailableException;
    const-string v5, "Cannot get the header factory to parse the header of the sip uris to compare"

    invoke-static {v5, v0}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    return v2

    .line 228
    .end local v0    # "e":Ljavax/sip/PeerUnavailableException;
    .end local v4    # "headerFactory":Ljavax/sip/header/HeaderFactory;
    :cond_26
    return v0

    .line 230
    .end local v1    # "a":Ljavax/sip/address/SipURI;
    .end local v3    # "b":Ljavax/sip/address/SipURI;
    :cond_27
    return v2
.end method

.method public greylist getAuthority()Lgov/nist/javax/sip/address/Authority;
    .locals 1

    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    return-object v0
.end method

.method public greylist getGrParam()Ljava/lang/String;
    .locals 2

    .line 1051
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 737
    :cond_0
    const/4 v0, 0x0

    .line 735
    :goto_0
    return-object v0
.end method

.method public greylist getHeaderNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHost()Ljava/lang/String;
    .locals 2

    .line 424
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 425
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 426
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    .line 402
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    return-object v0

    .line 403
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getLrParam()Ljava/lang/String;
    .locals 2

    .line 758
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    .line 759
    .local v0, "haslr":Z
    if-eqz v0, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public greylist getMAddrParam()Ljava/lang/String;
    .locals 2

    .line 768
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 769
    .local v0, "maddr":Lgov/nist/core/NameValue;
    if-nez v0, :cond_0

    .line 770
    const/4 v1, 0x0

    return-object v1

    .line 771
    :cond_0
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 772
    .local v1, "host":Ljava/lang/String;
    return-object v1
.end method

.method public greylist getMethod()Ljava/lang/String;
    .locals 1

    .line 326
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMethodParam()Ljava/lang/String;
    .locals 1

    .line 782
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 794
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 795
    const/4 v1, 0x0

    return-object v1

    .line 796
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_1

    .line 797
    move-object v1, v0

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 799
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    .line 334
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist getParm(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "parmname"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public greylist getPort()I
    .locals 2

    .line 414
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    .line 415
    .local v0, "hp":Lgov/nist/core/HostPort;
    if-nez v0, :cond_0

    .line 416
    const/4 v1, -0x1

    return v1

    .line 417
    :cond_0
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    return v1
.end method

.method public greylist getQheaders()Lgov/nist/core/NameValueList;
    .locals 1

    .line 350
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTTLParam()I
    .locals 2

    .line 822
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 823
    .local v0, "ttl":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 826
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public greylist getTelephoneSubscriber()Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 1

    .line 388
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 392
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    return-object v0
.end method

.method public greylist getTransportParam()Ljava/lang/String;
    .locals 2

    .line 835
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 838
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getUser()Ljava/lang/String;
    .locals 1

    .line 849
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserAtHost()Ljava/lang/String;
    .locals 5

    .line 272
    const-string v0, ""

    .line 273
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 278
    .local v2, "s":Ljava/lang/StringBuffer;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .end local v2    # "s":Ljava/lang/StringBuffer;
    .local v3, "s":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 281
    .end local v3    # "s":Ljava/lang/StringBuffer;
    .restart local v2    # "s":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 283
    .end local v2    # "s":Ljava/lang/StringBuffer;
    .restart local v3    # "s":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist getUserAtHostPort()Ljava/lang/String;
    .locals 6

    .line 291
    const-string v0, ""

    .line 292
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "host":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/Authority;->getPort()I

    move-result v2

    .line 298
    .local v2, "port":I
    const/4 v3, 0x0

    .line 299
    .local v3, "s":Ljava/lang/StringBuffer;
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .end local v3    # "s":Ljava/lang/StringBuffer;
    .local v4, "s":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 302
    .end local v4    # "s":Ljava/lang/StringBuffer;
    .restart local v3    # "s":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 304
    .end local v3    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 305
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 307
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public greylist getUserParam()Ljava/lang/String;
    .locals 1

    .line 1012
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserPassword()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserType()Ljava/lang/String;
    .locals 2

    .line 358
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist hasGrParam()Z
    .locals 2

    .line 1033
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist hasLrParam()Z
    .locals 2

    .line 1023
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist hasTransport()Z
    .locals 1

    .line 689
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isSecure()Z
    .locals 2

    .line 859
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isSipURI()Z
    .locals 1

    .line 867
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isUserTelephoneSubscriber()Z
    .locals 2

    .line 456
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, "usrtype":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 458
    const/4 v1, 0x0

    return v1

    .line 459
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public greylist removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 492
    :cond_0
    return-void
.end method

.method public greylist removeHeaders()V
    .locals 1

    .line 497
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 498
    return-void
.end method

.method public greylist removeMAddr()V
    .locals 2

    .line 474
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 476
    :cond_0
    return-void
.end method

.method public greylist removeMethod()V
    .locals 2

    .line 519
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 521
    :cond_0
    return-void
.end method

.method public greylist removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 698
    return-void
.end method

.method public greylist removeParameters()V
    .locals 1

    .line 341
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 342
    return-void
.end method

.method public greylist removePort()V
    .locals 1

    .line 512
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removePort()V

    .line 513
    return-void
.end method

.method public greylist removeTTL()V
    .locals 2

    .line 466
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 468
    :cond_0
    return-void
.end method

.method public greylist removeTransport()V
    .locals 2

    .line 482
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 484
    :cond_0
    return-void
.end method

.method public greylist removeUser()V
    .locals 1

    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removeUserInfo()V

    .line 543
    return-void
.end method

.method public greylist removeUserType()V
    .locals 2

    .line 504
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 506
    :cond_0
    return-void
.end method

.method public greylist setAuthority(Lgov/nist/javax/sip/address/Authority;)V
    .locals 0
    .param p1, "authority"    # Lgov/nist/javax/sip/address/Authority;

    .line 562
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 563
    return-void
.end method

.method public greylist setDefaultParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 556
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_0
    return-void
.end method

.method public greylist setGrParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    return-void
.end method

.method public greylist setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 878
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 881
    return-void
.end method

.method public greylist setHost(Lgov/nist/core/Host;)V
    .locals 1
    .param p1, "h"    # Lgov/nist/core/Host;

    .line 569
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 571
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHost(Lgov/nist/core/Host;)V

    .line 572
    return-void
.end method

.method public greylist setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 889
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, "h":Lgov/nist/core/Host;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->setHost(Lgov/nist/core/Host;)V

    .line 891
    return-void
.end method

.method public greylist setHostPort(Lgov/nist/core/HostPort;)V
    .locals 1
    .param p1, "hostPort"    # Lgov/nist/core/HostPort;

    .line 704
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 707
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHostPort(Lgov/nist/core/HostPort;)V

    .line 708
    return-void
.end method

.method public greylist setIsdnSubAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "isdnSubAddress"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 640
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public greylist setLrParam()V
    .locals 3

    .line 901
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public greylist setMAddr(Ljava/lang/String;)V
    .locals 4
    .param p1, "mAddr"    # Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 605
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2}, Lgov/nist/core/Host;-><init>()V

    .line 606
    .local v2, "host":Lgov/nist/core/Host;
    invoke-virtual {v2, p1}, Lgov/nist/core/Host;->setAddress(Ljava/lang/String;)V

    .line 607
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, v2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 610
    :cond_0
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-direct {v3, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 611
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 613
    :goto_0
    return-void
.end method

.method public greylist setMAddrParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "maddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 913
    if-eqz p1, :cond_0

    .line 915
    const-string v0, "maddr"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-void

    .line 914
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad maddr"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    return-void
.end method

.method public greylist setMethodParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 925
    const-string v0, "method"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 947
    const-string v0, "ttl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 954
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method public greylist setPort(I)V
    .locals 1
    .param p1, "p"    # I

    .line 655
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 657
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPort(I)V

    .line 658
    return-void
.end method

.method public greylist setQHeader(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .line 675
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 676
    return-void
.end method

.method public greylist setQheaders(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "parms"    # Lgov/nist/core/NameValueList;

    .line 596
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 597
    return-void
.end method

.method public greylist setScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .line 92
    const-string v0, "sip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "sips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public greylist setSecure(Z)V
    .locals 1
    .param p1, "secure"    # Z

    .line 963
    if-eqz p1, :cond_0

    .line 964
    const-string v0, "sips"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 966
    :cond_0
    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 967
    :goto_0
    return-void
.end method

.method public greylist setTTLParam(I)V
    .locals 3
    .param p1, "ttl"    # I

    .line 976
    if-lez p1, :cond_1

    .line 978
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    .line 979
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "ttl"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 982
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_0
    return-void

    .line 977
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad ttl value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setTelephoneSubscriber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .locals 0
    .param p1, "tel"    # Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 648
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 649
    return-void
.end method

.method public greylist setTransportParam(Ljava/lang/String;)V
    .locals 3
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 995
    if-eqz p1, :cond_2

    .line 997
    const-string v0, "UDP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    const-string v0, "TLS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    const-string v0, "TCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    const-string v0, "SCTP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1001
    :cond_1
    :goto_0
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "transport"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1002
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 1003
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    nop

    .line 1005
    return-void

    .line 996
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setUriParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .line 682
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 683
    return-void
.end method

.method public greylist setUriParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 588
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 590
    return-void
.end method

.method public greylist setUriParms(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "parms"    # Lgov/nist/core/NameValueList;

    .line 578
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 579
    return-void
.end method

.method public greylist setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "uname"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 536
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setUser(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public greylist setUserParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "usertype"    # Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public greylist setUserPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 378
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPassword(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
