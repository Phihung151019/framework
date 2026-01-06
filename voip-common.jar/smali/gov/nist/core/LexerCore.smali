.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field public static final greylist ALPHA:I = 0x1003

.field static final greylist ALPHADIGIT_VALID_CHARS:C = '\ufffd'

.field static final greylist ALPHA_VALID_CHARS:C = '\uffff'

.field public static final greylist AND:I = 0x26

.field public static final greylist AT:I = 0x40

.field public static final greylist BACKSLASH:I = 0x5c

.field public static final greylist BACK_QUOTE:I = 0x60

.field public static final greylist BAR:I = 0x7c

.field public static final greylist COLON:I = 0x3a

.field public static final greylist DIGIT:I = 0x1002

.field static final greylist DIGIT_VALID_CHARS:C = '\ufffe'

.field public static final greylist DOLLAR:I = 0x24

.field public static final greylist DOT:I = 0x2e

.field public static final greylist DOUBLEQUOTE:I = 0x22

.field public static final greylist END:I = 0x1000

.field public static final greylist EQUALS:I = 0x3d

.field public static final greylist EXCLAMATION:I = 0x21

.field public static final greylist GREATER_THAN:I = 0x3e

.field public static final greylist HAT:I = 0x5e

.field public static final greylist HT:I = 0x9

.field public static final greylist ID:I = 0xfff

.field public static final greylist LESS_THAN:I = 0x3c

.field public static final greylist LPAREN:I = 0x28

.field public static final greylist L_CURLY:I = 0x7b

.field public static final greylist L_SQUARE_BRACKET:I = 0x5b

.field public static final greylist MINUS:I = 0x2d

.field public static final greylist NULL:I = 0x0

.field public static final greylist PERCENT:I = 0x25

.field public static final greylist PLUS:I = 0x2b

.field public static final greylist POUND:I = 0x23

.field public static final greylist QUESTION:I = 0x3f

.field public static final greylist QUOTE:I = 0x27

.field public static final greylist RPAREN:I = 0x29

.field public static final greylist R_CURLY:I = 0x7d

.field public static final greylist R_SQUARE_BRACKET:I = 0x5d

.field public static final greylist SAFE:I = 0xffe

.field public static final greylist SEMICOLON:I = 0x3b

.field public static final greylist SLASH:I = 0x2f

.field public static final greylist SP:I = 0x20

.field public static final greylist STAR:I = 0x2a

.field public static final greylist START:I = 0x800

.field public static final greylist TILDE:I = 0x7e

.field public static final greylist UNDERSCORE:I = 0x5f

.field public static final greylist WHITESPACE:I = 0x1001

.field protected static final greylist globalSymbolTable:Ljava/util/Hashtable;

.field protected static final greylist lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected greylist currentLexer:Ljava/util/Hashtable;

.field protected greylist currentLexerName:Ljava/lang/String;

.field protected greylist currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    .line 96
    return-void
.end method

.method protected constructor greylist <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    .line 133
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 134
    const-string v0, "charLexer"

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static greylist charAsString(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .line 649
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist isTokenChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 303
    invoke-static {p0}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 304
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 318
    const/4 v0, 0x0

    return v0

    .line 316
    :sswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public greylist SPorHT()V
    .locals 3

    .line 282
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 283
    .local v1, "c":C
    :goto_0
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 289
    .end local v1    # "c":C
    :cond_0
    goto :goto_2

    .line 284
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 285
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 287
    .end local v1    # "c":C
    :catch_0
    move-exception v0

    .line 290
    :goto_2
    return-void
.end method

.method protected greylist addKeyword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 99
    invoke-static {p1}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-void
.end method

.method protected greylist addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .param p1, "lexerName"    # Ljava/lang/String;

    .line 118
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 119
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 121
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-object v0
.end method

.method public greylist byteStringNoComma()Ljava/lang/String;
    .locals 3

    .line 632
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 635
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 636
    .local v1, "next":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 637
    goto :goto_1

    .line 639
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    nop

    .end local v1    # "next":C
    goto :goto_0

    .line 644
    :cond_1
    :goto_1
    goto :goto_2

    .line 643
    :catch_0
    move-exception v1

    .line 645
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist byteStringNoSemicolon()Ljava/lang/String;
    .locals 3

    .line 585
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 590
    .local v1, "next":C
    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 591
    goto :goto_1

    .line 593
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    nop

    .end local v1    # "next":C
    goto :goto_0

    .line 599
    :cond_1
    :goto_1
    nop

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist byteStringNoSlash()Ljava/lang/String;
    .locals 3

    .line 609
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 614
    .local v1, "next":C
    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 615
    goto :goto_1

    .line 617
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    nop

    .end local v1    # "next":C
    goto :goto_0

    .line 623
    :cond_1
    :goto_1
    nop

    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist charAsString(I)Ljava/lang/String;
    .locals 3
    .param p1, "nchars"    # I

    .line 656
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist comment()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 555
    .local v0, "retval":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 556
    const/4 v1, 0x0

    return-object v1

    .line 557
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 559
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v1

    .line 560
    .local v1, "next":C
    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    .line 561
    nop

    .line 578
    .end local v1    # "next":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 562
    .restart local v1    # "next":C
    :cond_1
    if-eqz v1, :cond_4

    .line 566
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_3

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v1

    .line 569
    if-eqz v1, :cond_2

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 570
    :cond_2
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 575
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 577
    .end local v1    # "next":C
    :goto_1
    goto :goto_0

    .line 563
    .restart local v1    # "next":C
    :cond_4
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public greylist consumeValidChars([C)V
    .locals 8
    .param p1, "validChars"    # [C

    .line 488
    array-length v0, p1

    .line 490
    .local v0, "validCharsLength":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 492
    .local v2, "nextChar":C
    const/4 v3, 0x0

    .line 493
    .local v3, "isValid":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_2

    .line 494
    aget-char v6, p1, v4

    .line 495
    .local v6, "validChar":C
    packed-switch v6, :pswitch_data_0

    .line 506
    if-ne v2, v6, :cond_0

    move v7, v5

    goto :goto_2

    .line 497
    :pswitch_0
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v7

    .line 498
    .end local v3    # "isValid":Z
    .local v7, "isValid":Z
    move v3, v7

    goto :goto_3

    .line 500
    .end local v7    # "isValid":Z
    .restart local v3    # "isValid":Z
    :pswitch_1
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v7

    .line 501
    .end local v3    # "isValid":Z
    .restart local v7    # "isValid":Z
    move v3, v7

    goto :goto_3

    .line 503
    .end local v7    # "isValid":Z
    .restart local v3    # "isValid":Z
    :pswitch_2
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v7

    .line 504
    .end local v3    # "isValid":Z
    .restart local v7    # "isValid":Z
    move v3, v7

    goto :goto_3

    .line 506
    .end local v7    # "isValid":Z
    .restart local v3    # "isValid":Z
    :cond_0
    move v7, v1

    :goto_2
    move v3, v7

    .line 508
    :goto_3
    if-eqz v3, :cond_1

    .line 509
    goto :goto_4

    .line 493
    .end local v6    # "validChar":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 512
    .end local v4    # "i":I
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 513
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v2    # "nextChar":C
    .end local v3    # "isValid":Z
    goto :goto_0

    .line 521
    :cond_3
    goto :goto_5

    .line 519
    :catch_0
    move-exception v1

    .line 522
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist createParseException()Ljava/text/ParseException;
    .locals 3

    .line 762
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public greylist getBuffer()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getNextId()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNextToken()Lgov/nist/core/Token;
    .locals 1

    .line 163
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v0
.end method

.method public greylist getPtr()I
    .locals 1

    .line 750
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public greylist getRest()Ljava/lang/String;
    .locals 2

    .line 704
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 705
    const/4 v0, 0x0

    return-object v0

    .line 707
    :cond_0
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getString(C)Ljava/lang/String;
    .locals 7
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 715
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 717
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 721
    .local v2, "next":C
    const-string v3, "unexpected EOL"

    if-eqz v2, :cond_3

    .line 725
    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    .line 726
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 727
    nop

    .line 744
    .end local v2    # "next":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 728
    .restart local v2    # "next":C
    :cond_0
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_2

    .line 729
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 730
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 731
    .local v1, "nextchar":C
    if-eqz v1, :cond_1

    .line 736
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 739
    .end local v1    # "nextchar":C
    goto :goto_1

    .line 732
    .restart local v1    # "nextchar":C
    :cond_1
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v4, v3, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 740
    .end local v1    # "nextchar":C
    :cond_2
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 741
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 743
    .end local v2    # "next":C
    :goto_1
    goto :goto_0

    .line 722
    .restart local v2    # "next":C
    :cond_3
    new-instance v1, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public greylist lookupToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .line 109
    const/16 v0, 0x800

    if-le p1, v0, :cond_0

    .line 110
    sget-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 112
    :cond_0
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 113
    .local v0, "ch":Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist markInputPosition()I
    .locals 1

    .line 690
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public greylist match(I)Lgov/nist/core/Token;
    .locals 5
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 208
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 211
    :cond_0
    const/16 v0, 0x800

    const/16 v1, 0x1000

    if-le p1, v0, :cond_6

    if-ge p1, v1, :cond_6

    .line 212
    const-string v0, "\nID expected"

    const/16 v1, 0xfff

    if-ne p1, v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "id":Ljava/lang/String;
    new-instance v2, Lgov/nist/core/Token;

    invoke-direct {v2}, Lgov/nist/core/Token;-><init>()V

    iput-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 218
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v0, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v1, v2, Lgov/nist/core/Token;->tokenType:I

    .line 220
    .end local v0    # "id":Ljava/lang/String;
    goto/16 :goto_1

    .line 215
    :cond_1
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 220
    :cond_2
    const/16 v1, 0xffe

    if-ne p1, v1, :cond_4

    .line 221
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsSafeToken()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0    # "id":Ljava/lang/String;
    new-instance v2, Lgov/nist/core/Token;

    invoke-direct {v2}, Lgov/nist/core/Token;-><init>()V

    iput-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 225
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v0, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v1, v2, Lgov/nist/core/Token;->tokenType:I

    .line 227
    .end local v0    # "id":Ljava/lang/String;
    goto/16 :goto_1

    .line 222
    :cond_3
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 228
    :cond_4
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "nexttok":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    .local v1, "cur":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 235
    new-instance v2, Lgov/nist/core/Token;

    invoke-direct {v2}, Lgov/nist/core/Token;-><init>()V

    iput-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 236
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v0, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v2, Lgov/nist/core/Token;->tokenType:I

    .line 238
    .end local v0    # "nexttok":Ljava/lang/String;
    .end local v1    # "cur":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 232
    .restart local v0    # "nexttok":Ljava/lang/String;
    .restart local v1    # "cur":Ljava/lang/Integer;
    :cond_5
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nUnexpected Token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 239
    .end local v0    # "nexttok":Ljava/lang/String;
    .end local v1    # "cur":Ljava/lang/Integer;
    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-le p1, v1, :cond_b

    .line 241
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 242
    .local v0, "next":C
    const/16 v1, 0x1002

    if-ne p1, v1, :cond_8

    .line 243
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    new-instance v1, Lgov/nist/core/Token;

    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 246
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 247
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 249
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 244
    :cond_7
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nExpecting DIGIT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 251
    :cond_8
    const/16 v1, 0x1003

    if-ne p1, v1, :cond_a

    .line 252
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 254
    new-instance v1, Lgov/nist/core/Token;

    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 255
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 256
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 258
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    .line 253
    :cond_9
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nExpecting ALPHA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 262
    .end local v0    # "next":C
    :cond_a
    :goto_0
    goto :goto_1

    .line 264
    :cond_b
    int-to-char v1, p1

    .line 265
    .local v1, "ch":C
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 266
    .restart local v0    # "next":C
    if-ne v0, v1, :cond_c

    .line 271
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 277
    .end local v0    # "next":C
    .end local v1    # "ch":C
    :goto_1
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v0

    .line 273
    .restart local v0    # "next":C
    .restart local v1    # "ch":C
    :cond_c
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nExpecting  >>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<< got >>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public greylist number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 665
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 667
    .local v0, "startIdx":I
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    invoke-static {v2}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 674
    :goto_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 675
    .local v3, "next":C
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 676
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 679
    .end local v3    # "next":C
    goto :goto_0

    .line 680
    :cond_0
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 668
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unexpected token at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 669
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "startIdx":I
    .end local p0    # "this":Lgov/nist/core/LexerCore;
    throw v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .restart local v0    # "startIdx":I
    .restart local p0    # "this":Lgov/nist/core/LexerCore;
    :catch_0
    move-exception v1

    .line 682
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v2, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist peekNextId()Ljava/lang/String;
    .locals 3

    .line 148
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 149
    .local v0, "oldPtr":I
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "retval":Ljava/lang/String;
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v2, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 151
    iput v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 152
    return-object v1
.end method

.method public greylist peekNextToken()Lgov/nist/core/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public greylist peekNextToken(I)[Lgov/nist/core/Token;
    .locals 8
    .param p1, "ntokens"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 174
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 175
    .local v0, "old":I
    new-array v1, p1, [Lgov/nist/core/Token;

    .line 176
    .local v1, "retval":[Lgov/nist/core/Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_4

    .line 177
    new-instance v3, Lgov/nist/core/Token;

    invoke-direct {v3}, Lgov/nist/core/Token;-><init>()V

    .line 178
    .local v3, "tok":Lgov/nist/core/Token;
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "id":Ljava/lang/String;
    iput-object v4, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 181
    invoke-static {v4}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "idUppercase":Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 184
    .local v6, "type":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v3, Lgov/nist/core/Token;->tokenType:I

    .line 185
    .end local v6    # "type":Ljava/lang/Integer;
    goto :goto_1

    .line 186
    :cond_0
    const/16 v6, 0xfff

    iput v6, v3, Lgov/nist/core/Token;->tokenType:I

    .line 187
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "idUppercase":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 188
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v4

    .line 189
    .local v4, "nextChar":C
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 190
    invoke-static {v4}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    const/16 v5, 0x1003

    iput v5, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_2

    .line 192
    :cond_2
    invoke-static {v4}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    const/16 v5, 0x1002

    iput v5, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_2

    .line 195
    :cond_3
    iput v4, v3, Lgov/nist/core/Token;->tokenType:I

    .line 197
    .end local v4    # "nextChar":C
    :goto_2
    aput-object v3, v1, v2

    .line 176
    .end local v3    # "tok":Lgov/nist/core/Token;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_4
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v2, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 200
    iput v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 201
    return-object v1
.end method

.method public greylist quotedString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 529
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 530
    .local v0, "startIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    .line 531
    const/4 v1, 0x0

    return-object v1

    .line 532
    :cond_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 534
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v2

    .line 535
    .local v2, "next":C
    if-ne v2, v3, :cond_1

    .line 537
    nop

    .line 546
    .end local v2    # "next":C
    iget-object v2, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 538
    .restart local v2    # "next":C
    :cond_1
    if-eqz v2, :cond_3

    .line 542
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_2

    .line 543
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 545
    .end local v2    # "next":C
    :cond_2
    goto :goto_0

    .line 539
    .restart local v2    # "next":C
    :cond_3
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public greylist rewindInputPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 697
    iput p1, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 698
    return-void
.end method

.method public greylist selectLexer(Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public greylist startsId()Z
    .locals 2

    .line 325
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 326
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 327
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v1

    .line 328
    .local v1, "ex":Ljava/text/ParseException;
    return v0
.end method

.method public greylist startsSafeToken()Z
    .locals 4

    .line 334
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 335
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 336
    return v3

    .line 339
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 367
    return v0

    .line 365
    :sswitch_0
    return v3

    .line 370
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v1

    .line 371
    .local v1, "ex":Ljava/text/ParseException;
    return v0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist ttoken()Ljava/lang/String;
    .locals 3

    .line 376
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 378
    .local v0, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 380
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 385
    .end local v1    # "nextChar":C
    goto :goto_0

    .line 386
    :cond_0
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "ex":Ljava/text/ParseException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist ttokenSafe()Ljava/lang/String;
    .locals 4

    .line 434
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 436
    .local v0, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 438
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_2

    .line 442
    :cond_0
    const/4 v2, 0x0

    .line 443
    .local v2, "isValidChar":Z
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 468
    :sswitch_0
    const/4 v2, 0x1

    .line 470
    :goto_1
    if-eqz v2, :cond_1

    .line 471
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 477
    .end local v1    # "nextChar":C
    .end local v2    # "isValidChar":Z
    :goto_2
    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "ex":Ljava/text/ParseException;
    const/4 v2, 0x0

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method
