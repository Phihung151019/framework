.class public Lcom/android/commands/monkey/MonkeySourceNetwork;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final DONE:Ljava/lang/String; = "done"

.field public static final EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field public static final ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private static final ERROR_STR:Ljava/lang/String; = "ERROR"

.field public static final MONKEY_NETWORK_VERSION:I = 0x2

.field public static final OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private static final OK_STR:Ljava/lang/String; = "OK"

.field private static final QUIT:Ljava/lang/String; = "quit"

.field private static final TAG:Ljava/lang/String; = "MonkeyStub"

.field private static deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;


# instance fields
.field private clientSocket:Ljava/net/Socket;

.field private final commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

.field private input:Ljava/io/BufferedReader;

.field private output:Ljava/io/PrintWriter;

.field private serverSocket:Ljava/net/ServerSocket;

.field private started:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOMMAND_MAP()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputdeferredReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)V
    .locals 0

    sput-object p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetKeyCode(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->getKeyCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smwake()Z
    .locals 1

    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 89
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 90
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v2, "Invalid Argument"

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    .line 455
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "flip"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "touch"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "trackball"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "key"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "sleep"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "wake"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "tap"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "press"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v3, "type"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;-><init>()V

    const-string v3, "listvar"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;-><init>()V

    const-string v3, "getvar"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;-><init>()V

    const-string v3, "listviews"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;-><init>()V

    const-string v3, "queryview"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;-><init>()V

    const-string v3, "getrootview"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;

    invoke-direct {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;-><init>()V

    const-string v3, "getviewswithtext"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;

    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    const-string v2, "deferreturn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork-IA;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 561
    new-instance v1, Ljava/net/ServerSocket;

    .line 563
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    .line 564
    return-void
.end method

.method private static commandLineSplit(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 624
    .local v1, "tok":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 625
    .local v2, "insideQuote":Z
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    .local v3, "quotedWord":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 627
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "cur":Ljava/lang/String;
    const-string v5, "\""

    if-nez v2, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 630
    invoke-static {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const/4 v2, 0x1

    goto :goto_1

    .line 632
    :cond_0
    if-eqz v2, :cond_2

    .line 634
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_1

    .line 635
    const/4 v2, 0x0

    .line 636
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 640
    .local v5, "word":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .end local v5    # "word":Ljava/lang/String;
    goto :goto_1

    .line 642
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 645
    :cond_2
    invoke-static {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    .end local v4    # "cur":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 648
    :cond_3
    return-object v0
.end method

.method private static getKeyCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "keyName"    # Ljava/lang/String;

    .line 244
    const/4 v0, -0x1

    .line 246
    .local v0, "keyCode":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "keyCode":I
    .local v1, "keyCode":I
    goto :goto_0

    .line 247
    .end local v1    # "keyCode":I
    .restart local v0    # "keyCode":I
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    .line 251
    if-nez v0, :cond_1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    .line 258
    if-nez v0, :cond_0

    .line 260
    const/4 v2, -0x1

    return v2

    .line 258
    :cond_0
    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    move v1, v0

    .line 264
    .end local v0    # "keyCode":I
    .local v1, "keyCode":I
    :goto_0
    return v1
.end method

.method private handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V
    .locals 1
    .param p1, "ret"    # Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 669
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk(Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError()V

    .line 682
    :goto_0
    return-void
.end method

.method private static replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 607
    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnError()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method private returnError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method private returnOk()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method private returnOk(Ljava/lang/String;)V
    .locals 2
    .param p1, "returnValue"    # Ljava/lang/String;

    .line 796
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method private startServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    .line 579
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->setup()V

    .line 581
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    .line 583
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    .line 585
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    .line 586
    return-void
.end method

.method private stopServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 593
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->teardown()V

    .line 594
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 595
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    .line 597
    return-void
.end method

.method private translateCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "commandLine"    # Ljava/lang/String;

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translateCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MonkeyStub"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandLineSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 659
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 660
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    .line 661
    .local v1, "command":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    if-eqz v1, :cond_0

    .line 662
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-interface {v1, v0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v2

    .line 663
    .local v2, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-direct {p0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    .line 666
    .end local v1    # "command":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .end local v2    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_0
    return-void
.end method

.method private static final wake()Z
    .locals 7

    .line 438
    nop

    .line 439
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 441
    .local v1, "pm":Landroid/os/IPowerManager;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v5, "Monkey"

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/os/IPowerManager;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    nop

    .line 447
    const/4 v0, 0x1

    return v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MonkeyStub"

    const-string v3, "Got remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 6

    .line 686
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    const/4 v1, 0x0

    const-string v2, "MonkeyStub"

    if-nez v0, :cond_0

    .line 688
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->startServer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    nop

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Got IOException from server"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    return-object v1

    .line 702
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->getNextQueuedEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v0

    .line 703
    .local v0, "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v0, :cond_1

    .line 705
    return-object v0

    .line 711
    :cond_1
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    if-eqz v3, :cond_2

    .line 712
    const-string v3, "Waiting for event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->waitForEvent()Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v3

    .line 714
    .local v3, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    sput-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    .line 715
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    .line 718
    .end local v3    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_2
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 719
    .local v3, "command":Ljava/lang/String;
    const-string v4, "done"

    if-nez v3, :cond_3

    .line 720
    :try_start_2
    const-string v5, "Connection dropped."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object v3, v4

    .line 726
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_4

    .line 729
    :try_start_3
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->stopServer()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 733
    nop

    .line 736
    :try_start_4
    new-instance v4, Lcom/android/commands/monkey/MonkeyNoopEvent;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeyNoopEvent;-><init>()V

    return-object v4

    .line 730
    :catch_1
    move-exception v4

    .line 731
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "Got IOException shutting down!"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    return-object v1

    .line 740
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const-string v4, "quit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 742
    const-string v4, "Quit requested"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    .line 745
    return-object v1

    .line 751
    :cond_5
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 753
    goto :goto_0

    .line 757
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;->translateCommand(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 758
    .end local v0    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    .end local v3    # "command":Ljava/lang/String;
    goto :goto_0

    .line 759
    :catch_2
    move-exception v0

    .line 760
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    return-object v1
.end method

.method public setVerbose(I)V
    .locals 0
    .param p1, "verbose"    # I

    .line 803
    return-void
.end method

.method public validate()Z
    .locals 1

    .line 807
    const/4 v0, 0x1

    return v0
.end method
