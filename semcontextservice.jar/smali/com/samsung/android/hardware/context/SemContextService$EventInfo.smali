.class public final Lcom/samsung/android/hardware/context/SemContextService$EventInfo;
.super Ljava/lang/Object;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EventInfo"
.end annotation


# instance fields
.field private mEvent:Lcom/samsung/android/hardware/context/SemContextEvent;

.field private mListener:Lcom/samsung/android/hardware/context/SemContextService$Listener;

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextService;


# direct methods
.method static bridge synthetic -$$Nest$mcallback(Lcom/samsung/android/hardware/context/SemContextService$EventInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->callback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEvent(Lcom/samsung/android/hardware/context/SemContextService$EventInfo;Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->sendEvent(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/SemContextService;
    .param p2, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 676
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->setEvent(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 678
    return-void
.end method

.method private callback()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->mListener:Lcom/samsung/android/hardware/context/SemContextService$Listener;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->mEvent:Lcom/samsung/android/hardware/context/SemContextEvent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextService$Listener;->callback(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 708
    return-void
.end method

.method private declared-synchronized sendEvent(Lcom/samsung/android/hardware/context/SemContextService$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextService$Listener;

    monitor-enter p0

    .line 694
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->mEvent:Lcom/samsung/android/hardware/context/SemContextEvent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->mListener:Lcom/samsung/android/hardware/context/SemContextService$Listener;

    .line 697
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 698
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x55

    iput v1, v0, Landroid/os/Message;->what:I

    .line 699
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/SemContextService;)Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    const-string v1, "SemContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventInfo.sendEvent() : service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->mEvent:Lcom/samsung/android/hardware/context/SemContextEvent;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 702
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    monitor-exit p0

    return-void

    .line 693
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/samsung/android/hardware/context/SemContextService$EventInfo;
    .end local p1    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 695
    .restart local p1    # "listener":Lcom/samsung/android/hardware/context/SemContextService$Listener;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method getEvent()Lcom/samsung/android/hardware/context/SemContextEvent;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->mEvent:Lcom/samsung/android/hardware/context/SemContextEvent;

    return-object v0
.end method

.method setEvent(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 685
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->mEvent:Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 686
    return-void
.end method
