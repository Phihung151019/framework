.class public Lgov/nist/javax/sip/parser/ims/SecurityServerParser;
.super Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.source "SecurityServerParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 65
    const-string v0, "SecuriryServer parse"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    const/16 v1, 0x859

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->headerName(I)V

    .line 69
    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    .line 70
    .local v1, "secServer":Lgov/nist/javax/sip/header/ims/SecurityServer;
    nop

    .line 71
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/ims/SecurityServerList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v2, "secServerList":Lgov/nist/javax/sip/header/ims/SecurityServerList;
    nop

    .line 75
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->dbg_leave(Ljava/lang/String;)V

    .line 72
    return-object v2

    .line 75
    .end local v1    # "secServer":Lgov/nist/javax/sip/header/ims/SecurityServer;
    .end local v2    # "secServerList":Lgov/nist/javax/sip/header/ims/SecurityServerList;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;->dbg_leave(Ljava/lang/String;)V

    .line 76
    throw v1
.end method
