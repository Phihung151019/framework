.class public Lgov/nist/javax/sip/parser/SupportedParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SupportedParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "supported"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/SupportedList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SupportedList;-><init>()V

    .line 69
    .local v0, "supportedList":Lgov/nist/javax/sip/header/SupportedList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    const-string v2, "SupportedParser.parse"

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_enter(Ljava/lang/String;)V

    .line 73
    :cond_0
    const/16 v1, 0x814

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SupportedParser;->headerName(I)V

    .line 75
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v1, Lgov/nist/javax/sip/header/Supported;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    .line 78
    .local v1, "supported":Lgov/nist/javax/sip/header/Supported;
    const-string v4, "Supported"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Supported;->setHeaderName(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 83
    .local v4, "token":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 84
    iget-object v6, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 86
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 88
    :goto_1
    iget-object v6, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_1

    .line 89
    iget-object v6, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v6, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 92
    new-instance v6, Lgov/nist/javax/sip/header/Supported;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    move-object v1, v6

    .line 95
    iget-object v6, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v6, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    move-object v4, v6

    .line 97
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 103
    .end local v1    # "supported":Lgov/nist/javax/sip/header/Supported;
    .end local v4    # "token":Lgov/nist/core/Token;
    :cond_1
    goto :goto_0

    .line 105
    :cond_2
    sget-boolean v1, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 109
    :cond_3
    return-object v0

    .line 105
    :catchall_0
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    if-eqz v3, :cond_4

    .line 106
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 107
    :cond_4
    throw v1
.end method
