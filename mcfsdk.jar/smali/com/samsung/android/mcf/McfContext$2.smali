.class Lcom/samsung/android/mcf/McfContext$2;
.super Landroid/os/Handler;
.source "McfContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/McfContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/McfContext;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mcf/McfContext;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 306
    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfContext;->access$000(Lcom/samsung/android/mcf/McfContext;)V

    goto :goto_1

    .line 343
    :pswitch_1
    const-string v0, "onServiceConnected TO"

    const-string v2, "-"

    const-string v3, "McfContext"

    invoke-static {v3, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 345
    .local v0, "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    if-eqz v0, :cond_6

    .line 346
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_4

    .line 335
    .end local v0    # "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 336
    .local v1, "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    if-eqz v1, :cond_0

    .line 337
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    .line 339
    .end local v1    # "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    :cond_0
    goto :goto_0

    .line 340
    :cond_1
    goto :goto_4

    .line 325
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 326
    .restart local v1    # "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    if-eqz v1, :cond_2

    .line 327
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    .line 329
    .end local v1    # "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    :cond_2
    goto :goto_2

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfContext;->unbind()V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfContext;->releaseInstance()V

    .line 332
    goto :goto_4

    .line 312
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/McfContext$EventListener;

    .line 313
    .local v2, "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    if-eqz v2, :cond_4

    .line 314
    invoke-interface {v2, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    .line 316
    .end local v2    # "listener":Lcom/samsung/android/mcf/McfContext$EventListener;
    :cond_4
    goto :goto_3

    .line 317
    :cond_5
    nop

    .line 353
    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
