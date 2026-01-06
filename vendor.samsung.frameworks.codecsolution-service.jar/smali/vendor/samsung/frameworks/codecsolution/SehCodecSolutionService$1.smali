.class Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;
.super Landroid/os/Handler;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SehCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    const/16 v2, 0xd2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->registerToScpm()Z

    .line 4
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xca

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_8

    const/16 v2, 0x384

    if-eq v0, v2, :cond_6

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_5

    const/16 v2, 0x320

    const-string v3, "sendBroadcast "

    const-string v4, "intent is null."

    const-string v5, "intent"

    if-eq v0, v2, :cond_3

    const/16 v2, 0x321

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v2, "PLAYBACK_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez v0, :cond_2

    .line 8
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " playbackState : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmContext(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 15
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmContext(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 18
    :cond_5
    const-string p1, "HANDLER_MSG_SCPM_GET_OPUSOFFLOAD_ENABLE_PROPERTY"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmOpusRunnable(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$OpusRunnable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 20
    :cond_6
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$misBootCompleted(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    const-string p0, "ignore before boot completed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "event : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmLogging(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/Logging;

    move-result-object p0

    invoke-virtual {p1}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lvendor/samsung/frameworks/codecsolution/MediaStatisticsData;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lvendor/samsung/frameworks/codecsolution/Logging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_8
    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object p1

    invoke-virtual {p1}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object p1

    invoke-virtual {p1}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->getToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    .line 26
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmSCPMV2Helper(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;

    move-result-object p0

    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->registerToScpm()Z

    return-void

    .line 27
    :cond_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 28
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmActivityManager(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    .line 29
    const-string p0, "runningAppProcesses is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 31
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 33
    :try_start_0
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_b

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") pkg("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_c

    const/16 v0, 0xff

    .line 36
    :cond_c
    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v3}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v0, v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v0, v3, :cond_d

    .line 37
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v3}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    .line 38
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v3}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v3, v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    .line 39
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpList(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v3}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fputmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;I)V

    .line 41
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$1;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    invoke-static {p0, v0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fputmPidDumpIndex(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 42
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t write dump info : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    :goto_0
    return-void

    .line 43
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t get the pkg of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t find the pkg of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
