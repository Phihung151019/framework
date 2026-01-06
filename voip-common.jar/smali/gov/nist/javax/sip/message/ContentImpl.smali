.class public Lgov/nist/javax/sip/message/ContentImpl;
.super Ljava/lang/Object;
.source "ContentImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/message/Content;


# instance fields
.field private greylist boundary:Ljava/lang/String;

.field private greylist content:Ljava/lang/Object;

.field private greylist contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

.field private greylist contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "boundary"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public greylist getContent()Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getContentDispositionHeader()Ljavax/sip/header/ContentDispositionHeader;
    .locals 1

    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

    return-object v0
.end method

.method public greylist getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .locals 1

    .line 44
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    return-object v0
.end method

.method public greylist setContent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public greylist setContentDispositionHeader(Ljavax/sip/header/ContentDispositionHeader;)V
    .locals 0
    .param p1, "contentDispositionHeader"    # Ljavax/sip/header/ContentDispositionHeader;

    .line 80
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

    .line 81
    return-void
.end method

.method public greylist setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V
    .locals 0
    .param p1, "contentTypeHeader"    # Ljavax/sip/header/ContentTypeHeader;

    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    .line 99
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

    const-string v1, "--"

    const-string v2, "\r\n"

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/ContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/ContentImpl;->getContentDispositionHeader()Ljavax/sip/header/ContentDispositionHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/ContentDispositionHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/ContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
