.class final Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;
.super Landroid/os/Handler;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    .line 1149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1150
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1159
    if-nez p1, :cond_0

    return-void

    .line 1160
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x55

    if-ne v0, v1, :cond_2

    .line 1161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;

    .line 1162
    .local v0, "lastEventInfo":Lcom/samsung/android/hardware/context/SemContextService$EventInfo;
    if-nez v0, :cond_1

    return-void

    .line 1163
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextService$EventInfo;->-$$Nest$mcallback(Lcom/samsung/android/hardware/context/SemContextService$EventInfo;)V

    .line 1164
    .end local v0    # "lastEventInfo":Lcom/samsung/android/hardware/context/SemContextService$EventInfo;
    goto :goto_0

    .line 1165
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 1166
    .local v0, "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    if-nez v0, :cond_3

    return-void

    .line 1167
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    .line 1168
    .local v1, "serviceType":I
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextService$ServiceHandler;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmServiceMap(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextService$Service;

    .line 1169
    .local v2, "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    if-eqz v2, :cond_4

    .line 1170
    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/context/SemContextService$Service;->sendEventToListeners(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    .line 1172
    .end local v0    # "event":Lcom/samsung/android/hardware/context/SemContextEvent;
    .end local v1    # "serviceType":I
    .end local v2    # "service":Lcom/samsung/android/hardware/context/SemContextService$Service;
    :cond_4
    :goto_0
    return-void
.end method
