.class Lcom/android/commands/monkey/Logger$1;
.super Lcom/android/commands/monkey/Logger;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/commands/monkey/Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 26
    sget-boolean v0, Lcom/android/commands/monkey/Logger$1;->stdout:Z

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    :cond_0
    sget-boolean v0, Lcom/android/commands/monkey/Logger$1;->logcat:Z

    if-eqz v0, :cond_1

    .line 30
    const-string v0, "Monkey"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    return-void
.end method
