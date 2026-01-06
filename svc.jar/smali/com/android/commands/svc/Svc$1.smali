.class Lcom/android/commands/svc/Svc$1;
.super Lcom/android/commands/svc/Svc$Command;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/svc/Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/commands/svc/Svc$1;->shortHelp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;

    .line 67
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 68
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/android/commands/svc/Svc;->-$$Nest$smlookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object v0

    .line 69
    .local v0, "c":Lcom/android/commands/svc/Svc$Command;
    if-eqz v0, :cond_0

    .line 70
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/android/commands/svc/Svc$Command;->longHelp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-void

    .line 75
    .end local v0    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    array-length v0, v0

    .line 77
    .local v0, "N":I
    const/4 v1, 0x0

    .line 78
    .local v1, "maxlen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 79
    sget-object v3, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v3, v3, v2

    .line 80
    .local v3, "c":Lcom/android/commands/svc/Svc$Command;
    invoke-virtual {v3}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 81
    .local v4, "len":I
    if-ge v1, v4, :cond_1

    .line 82
    move v1, v4

    .line 78
    .end local v3    # "c":Lcom/android/commands/svc/Svc$Command;
    .end local v4    # "len":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    %-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s    %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "format":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 87
    sget-object v4, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v4, v4, v3

    .line 88
    .local v4, "c":Lcom/android/commands/svc/Svc$Command;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/commands/svc/Svc$Command;->shortHelp()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    .end local v4    # "c":Lcom/android/commands/svc/Svc$Command;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "Show information about the subcommands"

    return-object v0
.end method
