.class Lcom/android/internal/telephony/Am$2;
.super Ljava/lang/Object;
.source "Am.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/Am;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 2

    .line 248
    const-string p2, "-D"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0}, Lcom/android/internal/telephony/Am;->-$$Nest$fgetmStartFlags(Lcom/android/internal/telephony/Am;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStartFlags(Lcom/android/internal/telephony/Am;I)V

    goto/16 :goto_0

    .line 250
    :cond_0
    const-string p2, "-N"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0}, Lcom/android/internal/telephony/Am;->-$$Nest$fgetmStartFlags(Lcom/android/internal/telephony/Am;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStartFlags(Lcom/android/internal/telephony/Am;I)V

    goto/16 :goto_0

    .line 252
    :cond_1
    const-string p2, "-W"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmWaitOption(Lcom/android/internal/telephony/Am;Z)V

    goto/16 :goto_0

    .line 254
    :cond_2
    const-string p2, "-P"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 255
    iget-object p1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmProfileFile(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmAutoStop(Lcom/android/internal/telephony/Am;Z)V

    goto/16 :goto_0

    .line 257
    :cond_3
    const-string p2, "--start-profiler"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 258
    iget-object p1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmProfileFile(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmAutoStop(Lcom/android/internal/telephony/Am;Z)V

    goto/16 :goto_0

    .line 260
    :cond_4
    const-string p2, "--sampling"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmSamplingInterval(Lcom/android/internal/telephony/Am;I)V

    goto :goto_0

    .line 262
    :cond_5
    const-string p2, "-R"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 263
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmRepeat(Lcom/android/internal/telephony/Am;I)V

    goto :goto_0

    .line 264
    :cond_6
    const-string p2, "-S"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 265
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStopOption(Lcom/android/internal/telephony/Am;Z)V

    goto :goto_0

    .line 266
    :cond_7
    const-string p2, "--track-allocation"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 267
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0}, Lcom/android/internal/telephony/Am;->-$$Nest$fgetmStartFlags(Lcom/android/internal/telephony/Am;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStartFlags(Lcom/android/internal/telephony/Am;I)V

    goto :goto_0

    .line 268
    :cond_8
    const-string p2, "--user"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmUserId(Lcom/android/internal/telephony/Am;I)V

    goto :goto_0

    .line 270
    :cond_9
    const-string p2, "--receiver-permission"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 271
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmReceiverPermission(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_a
    return v1
.end method
