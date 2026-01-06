.class Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;
.super Landroid/os/Handler;
.source "SehHdrSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;
    .param p2, "arg0"    # Landroid/os/Looper;
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

    .line 52
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 55
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I

    move-result v0

    const-string v1, "SehHdrSolutionService"

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "mDataspace:"

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 71
    :sswitch_0
    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfputmDataspace(I)V

    .line 72
    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfputmNetflixView(I)V

    .line 73
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "HANDLER_MSG_PQ_NON_NETFLIX case"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 65
    :sswitch_1
    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfputmDataspace(I)V

    .line 66
    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfputmNetflixView(I)V

    .line 67
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "HANDLER_MSG_PQ_NETFLIX case"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 59
    :sswitch_2
    const/16 v0, 0x8

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfputmDataspace(I)V

    .line 60
    invoke-static {v5}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfputmNetflixView(I)V

    .line 61
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "HANDLER_MSG_HLG case"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    :sswitch_3
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLER_MSG_STOP_HW_HDR case, mNetflixView:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmNetflixView()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmDataspace()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayController(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmNetflixView()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->setHdrLayerState(ZI)V

    .line 85
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayNitMapper(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmDataspace()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->setHdrLayerState(ZI)V

    .line 86
    goto :goto_0

    .line 77
    :sswitch_4
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLER_MSG_START_HW_HDR case, mNetflixView:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmNetflixView()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmDataspace()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayController(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmNetflixView()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->setHdrLayerState(ZI)V

    .line 79
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$fgetmHdrDisplayNitMapper(Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;)Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    move-result-object v0

    invoke-static {}, Lvendor/samsung/frameworks/hdrsolution/SehHdrSolutionService;->-$$Nest$sfgetmDataspace()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->setHdrLayerState(ZI)V

    .line 80
    nop

    .line 90
    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_3
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method
