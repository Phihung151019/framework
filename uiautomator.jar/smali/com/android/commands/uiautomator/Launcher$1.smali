.class Lcom/android/commands/uiautomator/Launcher$1;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uiautomator/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: uiautomator <subcommand> [options]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Available subcommands:\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/android/commands/uiautomator/Launcher;->-$$Nest$sfgetCOMMANDS()[Lcom/android/commands/uiautomator/Launcher$Command;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 105
    .local v3, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-virtual {v3}, Lcom/android/commands/uiautomator/Launcher$Command;->shortHelp()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "shortHelp":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/commands/uiautomator/Launcher$Command;->detailedOptions()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "detailedOptions":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 108
    const-string v4, ""

    .line 110
    :cond_0
    if-nez v5, :cond_1

    .line 111
    const-string v5, ""

    .line 113
    :cond_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lcom/android/commands/uiautomator/Launcher$Command;->name()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    .end local v3    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    .end local v4    # "shortHelp":Ljava/lang/String;
    .end local v5    # "detailedOptions":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "displays help message"

    return-object v0
.end method
