.class public Lgov/nist/javax/sip/parser/MimeVersionParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MimeVersionParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeVersion"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    const-string v1, "MimeVersionParser.parse"

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    .line 71
    .local v0, "mimeVersion":Lgov/nist/javax/sip/header/MimeVersion;
    const/16 v2, 0x80c

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/MimeVersionParser;->headerName(I)V

    .line 73
    const-string v2, "MIME-Version"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/MimeVersion;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "majorVersion":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "minorVersion":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v2    # "majorVersion":Ljava/lang/String;
    .end local v3    # "minorVersion":Ljava/lang/String;
    nop

    .line 85
    :try_start_2
    iget-object v2, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v2, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    nop

    .line 91
    sget-boolean v2, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    .line 89
    :cond_1
    return-object v0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MimeVersionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local v0    # "mimeVersion":Lgov/nist/javax/sip/header/MimeVersion;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/MimeVersionParser;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "mimeVersion":Lgov/nist/javax/sip/header/MimeVersion;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/MimeVersionParser;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_2
    throw v2
.end method
