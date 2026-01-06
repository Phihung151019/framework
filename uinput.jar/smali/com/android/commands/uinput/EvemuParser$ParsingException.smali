.class public Lcom/android/commands/uinput/EvemuParser$ParsingException;
.super Ljava/lang/RuntimeException;
.source "EvemuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/EvemuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsingException"
.end annotation


# instance fields
.field private final mLine:Ljava/lang/String;

.field private final mLineNumber:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reader"    # Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    .line 133
    invoke-virtual {p2}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->getPreviousLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->getPreviousLineNumber()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I

    .line 137
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 138
    iput p3, p0, Lcom/android/commands/uinput/EvemuParser$ParsingException;->mLineNumber:I

    .line 139
    iput-object p2, p0, Lcom/android/commands/uinput/EvemuParser$ParsingException;->mLine:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public makeErrorMessage()Ljava/lang/String;
    .locals 3

    .line 144
    iget v0, p0, Lcom/android/commands/uinput/EvemuParser$ParsingException;->mLineNumber:I

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/commands/uinput/EvemuParser$ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/commands/uinput/EvemuParser$ParsingException;->mLine:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 144
    const-string v1, "Parsing error on line %d: %s\n--> %s\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
