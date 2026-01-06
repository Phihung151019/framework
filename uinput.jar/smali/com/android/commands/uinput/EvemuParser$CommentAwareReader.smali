.class Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;
.super Ljava/lang/Object;
.source "EvemuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/EvemuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommentAwareReader"
.end annotation


# instance fields
.field private mAtEndOfFile:Z

.field private mNextLine:Ljava/lang/String;

.field private mPreviousLine:Ljava/lang/String;

.field private final mReader:Ljava/io/LineNumberReader;


# direct methods
.method constructor <init>(Ljava/io/LineNumberReader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/LineNumberReader;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mAtEndOfFile:Z

    .line 61
    iput-object p1, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mReader:Ljava/io/LineNumberReader;

    .line 62
    return-void
.end method

.method private findNextLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-string v0, ""

    .line 66
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mReader:Ljava/io/LineNumberReader;

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "unstrippedLine":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mAtEndOfFile:Z

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mNextLine:Ljava/lang/String;

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-static {v1}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->stripComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .end local v1    # "unstrippedLine":Ljava/lang/String;
    goto :goto_0

    .line 75
    :cond_1
    iput-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mNextLine:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private static stripComments(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    .line 79
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 82
    .local v0, "index":I
    if-ltz v0, :cond_1

    const-string v1, "N: "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mNextLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mPreviousLine:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mNextLine:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public getPreviousLine()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mPreviousLine:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLineNumber()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mReader:Ljava/io/LineNumberReader;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public isAtEndOfFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mNextLine:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mAtEndOfFile:Z

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->findNextLine()V

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mAtEndOfFile:Z

    return v0
.end method

.method public peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mNextLine:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mAtEndOfFile:Z

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->findNextLine()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->mNextLine:Ljava/lang/String;

    return-object v0
.end method
