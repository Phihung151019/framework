.class public Lcom/samsung/vekit/Task/CaptureFrameThread;
.super Ljava/lang/Thread;
.source "CaptureFrameThread.java"


# instance fields
.field context:Lcom/samsung/vekit/Common/VEContext;

.field handler:Landroid/os/Handler;

.field private isRunning:Z

.field private queue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/samsung/vekit/Task/CaptureFrameTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    .line 24
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    .line 25
    iput-object p1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    .line 26
    iput-object p2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method


# virtual methods
.method public addRequest(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 7
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "outputCenterX"    # I
    .param p4, "outputCenterY"    # I
    .param p5, "captureType"    # Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .param p6, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 78
    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "outputWidth":I
    .end local p2    # "outputHeight":I
    .end local p3    # "outputCenterX":I
    .end local p4    # "outputCenterY":I
    .end local p5    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local p6    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .local v1, "outputWidth":I
    .local v2, "outputHeight":I
    .local v3, "outputCenterX":I
    .local v4, "outputCenterY":I
    .local v5, "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .local v6, "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    invoke-direct/range {v0 .. v6}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    move-object p1, v0

    .line 79
    .local p1, "task":Lcom/samsung/vekit/Task/CaptureFrameTask;
    iget-object p2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter p2

    .line 81
    :try_start_0
    iget-object p3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p3, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 82
    iget-object p3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    move-object p3, v0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    move-object p3, v0

    .line 84
    .local p3, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 86
    .end local p3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit p2

    .line 87
    return-void

    .line 86
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p3
.end method

.method public addRequest(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 3
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 54
    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    .line 55
    .local v0, "task":Lcom/samsung/vekit/Task/CaptureFrameTask;
    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 58
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 62
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addRequest(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/vekit/Item/ImageItem;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 42
    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    .line 43
    .local v0, "task":Lcom/samsung/vekit/Task/CaptureFrameTask;
    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 46
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 50
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addRequest(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 6
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "captureType"    # Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .param p5, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 66
    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "item":Lcom/samsung/vekit/Item/Item;
    .end local p2    # "outputWidth":I
    .end local p3    # "outputHeight":I
    .end local p4    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local p5    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .local v1, "item":Lcom/samsung/vekit/Item/Item;
    .local v2, "outputWidth":I
    .local v3, "outputHeight":I
    .local v4, "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .local v5, "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    move-object p1, v0

    .line 67
    .local p1, "task":Lcom/samsung/vekit/Task/CaptureFrameTask;
    iget-object p2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter p2

    .line 69
    :try_start_0
    iget-object p3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p3, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 70
    iget-object p3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    move-object p3, v0

    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    move-object p3, v0

    .line 72
    .local p3, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 74
    .end local p3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit p2

    .line 75
    return-void

    .line 74
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p3
.end method

.method public run()V
    .locals 15

    .line 91
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    if-eqz v0, :cond_6

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "request":Lcom/samsung/vekit/Task/CaptureFrameTask;
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 94
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 99
    monitor-exit v2

    return-void

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Task/CaptureFrameTask;

    move-object v1, v0

    .line 103
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-eqz v1, :cond_5

    .line 106
    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getCaptureType()Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    move-result-object v0

    sget-object v2, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    if-ne v0, v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->captureLatestFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/samsung/vekit/Common/Object/CaptureInfo;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 109
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "message":Landroid/os/Message;
    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getCaptureType()Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    move-result-object v0

    sget-object v2, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    if-ne v0, v2, :cond_2

    .line 111
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v3

    new-instance v4, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/samsung/vekit/Common/Object/CaptureInfo;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 113
    .restart local v2    # "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "message":Landroid/os/Message;
    goto/16 :goto_2

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputCenterX()I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputCenterY()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 117
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, -0x1

    .line 118
    .local v0, "id":I
    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v0

    .line 120
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 121
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    .local v13, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v13, v3, v5, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 123
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 125
    .end local v13    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/samsung/vekit/Common/Object/CaptureInfo;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 126
    .restart local v2    # "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    .end local v0    # "id":I
    .end local v1    # "request":Lcom/samsung/vekit/Task/CaptureFrameTask;
    .end local v2    # "message":Landroid/os/Message;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 103
    .restart local v1    # "request":Lcom/samsung/vekit/Task/CaptureFrameTask;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 131
    .end local v1    # "request":Lcom/samsung/vekit/Task/CaptureFrameTask;
    :cond_6
    return-void
.end method

.method public startThread()V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->start()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    .line 32
    return-void
.end method

.method public stopThread()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    .line 38
    invoke-virtual {p0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->interrupt()V

    .line 39
    return-void
.end method
