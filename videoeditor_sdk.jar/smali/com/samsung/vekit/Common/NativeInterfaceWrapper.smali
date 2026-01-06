.class public Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
.super Ljava/lang/Object;
.source "NativeInterfaceWrapper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

.field stateInterface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/vekit/Common/State/VEStateInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/State/VEStateInterface;)V
    .locals 1
    .param p1, "stateInterface"    # Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 4

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 230
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 231
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 235
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->animate()V

    .line 238
    return-void

    .line 232
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animate  invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit p0

    return-void

    .line 235
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public attach(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "childId"    # I

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 245
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 252
    return-void

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public attach(Lcom/samsung/vekit/Common/Object/Element;II)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "index"    # I
    .param p3, "childId"    # I

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 258
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    monitor-exit p0

    return-void

    .line 262
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 265
    return-void

    .line 262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 271
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    monitor-exit p0

    return-void

    .line 275
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    .line 278
    return-void

    .line 275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "animationId"    # I

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 177
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 178
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachAnimation invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 184
    return-void

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "stroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 573
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 574
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachStroke invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    monitor-exit p0

    return-void

    .line 577
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V

    .line 580
    return-void

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelAnimation()V
    .locals 4

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 216
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 217
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 221
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->cancelAnimation()V

    .line 224
    return-void

    .line 218
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAnimation  invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit p0

    return-void

    .line 221
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 395
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 396
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 400
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 397
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureAnimatedFrame invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 400
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public captureLatestFrame(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 409
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 410
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 414
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->captureLatestFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 411
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureLatestFrame invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 414
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 436
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 437
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 441
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 438
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureStaticDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 441
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "centerX"    # I
    .param p5, "centerY"    # I

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 423
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 424
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    goto :goto_0

    .line 428
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v3, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "centerX":I
    .end local p5    # "centerY":I
    .local v4, "element":Lcom/samsung/vekit/Common/Object/Element;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "centerX":I
    .local v8, "centerY":I
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/vekit/External/NativeInterface;->captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 423
    .end local v4    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "centerX":I
    .end local v8    # "centerY":I
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    .restart local p1    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "centerX":I
    .restart local p5    # "centerY":I
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 425
    .end local p1    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "centerX":I
    .end local p5    # "centerY":I
    .restart local v4    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "centerX":I
    .restart local v8    # "centerY":I
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "captureSuperHDRFrame invalid state. currentState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 428
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    .end local v4    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "centerX":I
    .end local v8    # "centerY":I
    .restart local p1    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "centerX":I
    .restart local p5    # "centerY":I
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object p1, v0

    .end local p1    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "centerX":I
    .end local p5    # "centerY":I
    .restart local v4    # "element":Lcom/samsung/vekit/Common/Object/Element;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "centerX":I
    .restart local v8    # "centerY":I
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1
.end method

.method public changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "focusX"    # I
    .param p3, "focusY"    # I

    .line 749
    monitor-enter p0

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 752
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 753
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    monitor-exit p0

    return-void

    .line 756
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 758
    return-void

    .line 756
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "detectionInfo"    # Lcom/samsung/vekit/Common/Object/PVDetectionInfo;

    .line 737
    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 740
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 741
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    monitor-exit p0

    return-void

    .line 744
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V

    .line 746
    return-void

    .line 744
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "keyFrame"    # Lcom/samsung/vekit/Common/Object/PVKeyFrame;

    .line 761
    monitor-enter p0

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 764
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 765
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    monitor-exit p0

    return-void

    .line 768
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V

    .line 770
    return-void

    .line 768
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    .line 774
    .local p2, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/PVKeyFrame;>;"
    monitor-enter p0

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 777
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 778
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    monitor-exit p0

    return-void

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    .line 782
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    monitor-exit p0

    .line 783
    return-void

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 297
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 298
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit p0

    return-void

    .line 301
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->clear(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 304
    return-void

    .line 301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 203
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAnimations invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit p0

    return-void

    .line 207
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 210
    return-void

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public create(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 137
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->create(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 144
    return-void

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized createFramework(Lcom/samsung/vekit/Control/VEController;)V
    .locals 4
    .param p1, "controller"    # Lcom/samsung/vekit/Control/VEController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 43
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->CREATE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFramework invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 47
    .end local p0    # "this":Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-nez v1, :cond_2

    .line 48
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    .line 49
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Native interface is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "Native interface is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1, p1}, Lcom/samsung/vekit/External/NativeInterface;->createFramework(Lcom/samsung/vekit/Control/VEController;)V

    .line 56
    sget-object v1, Lcom/samsung/vekit/Common/State/VEKitState;->CREATE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v1}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 41
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    .end local p1    # "controller":Lcom/samsung/vekit/Control/VEController;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "keyFrameId"    # I

    .line 786
    monitor-enter p0

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 789
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 790
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    monitor-exit p0

    return-void

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 794
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    monitor-exit p0

    .line 797
    return-void

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public detach(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "childId"    # I

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 284
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit p0

    return-void

    .line 288
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->detach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 291
    return-void

    .line 288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "animationId"    # I

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 190
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachAnimation invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit p0

    return-void

    .line 194
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 197
    return-void

    .line 194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 583
    monitor-enter p0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 586
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 587
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachStroke invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit p0

    return-void

    .line 590
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 593
    return-void

    .line 590
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p2, "pointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/DoodlePoint;>;"
    monitor-enter p0

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 545
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 546
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 550
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    .line 553
    return-void

    .line 547
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    monitor-exit p0

    return-void

    .line 550
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized finalizeFramework()V
    .locals 4

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 90
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 91
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1}, Lcom/samsung/vekit/External/NativeInterface;->finalizeFramework()V

    .line 97
    sget-object v1, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v1}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalizeFramework invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 87
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 556
    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 559
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 560
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 564
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 567
    return-void

    .line 561
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    monitor-exit p0

    return-void

    .line 564
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentAnalyzedPosition()J
    .locals 4

    .line 725
    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 728
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 729
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 732
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getCurrentAnalyzedPosition()J

    move-result-wide v0

    return-wide v0

    .line 732
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentMediaPosition()J
    .locals 4

    .line 447
    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 450
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 451
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 455
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getCurrentMediaPosition()J

    move-result-wide v0

    return-wide v0

    .line 452
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMediaPosition invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 455
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getExportPosition()J
    .locals 4

    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 517
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 518
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 522
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->getExportPosition()J

    move-result-wide v0

    return-wide v0

    .line 519
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExportPosition invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 522
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
    .locals 4
    .param p1, "viewMode"    # I

    .line 622
    monitor-enter p0

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 625
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 626
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrcSupportInfo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 629
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object v0

    return-object v0

    .line 629
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .locals 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "graphicBufferWidth"    # I
    .param p3, "graphicBufferHeight"    # I
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .param p6, "viewMode"    # Lcom/samsung/vekit/Common/Type/ViewMode;
    .param p7, "frameworkType"    # Lcom/samsung/vekit/Common/Type/FrameworkType;

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 63
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 64
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->INITIALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/vekit/External/NativeInterface;->initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    .line 70
    sget-object v1, Lcom/samsung/vekit/Common/State/VEKitState;->INITIALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v1}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 65
    .end local p0    # "this":Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeFramework invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    .end local p1    # "surface":Landroid/view/Surface;
    .end local p2    # "graphicBufferWidth":I
    .end local p3    # "graphicBufferHeight":I
    .end local p4    # "viewportWidth":I
    .end local p5    # "viewportHeight":I
    .end local p6    # "viewMode":Lcom/samsung/vekit/Common/Type/ViewMode;
    .end local p7    # "frameworkType":Lcom/samsung/vekit/Common/Type/FrameworkType;
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 4
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 700
    monitor-enter p0

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 703
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 704
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    monitor-exit p0

    return-void

    .line 707
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->loadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    .line 709
    return-void

    .line 707
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 609
    monitor-enter p0

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 612
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    monitor-exit p0

    return-void

    .line 616
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 619
    return-void

    .line 616
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 4

    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 367
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 368
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 372
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pause()V

    .line 375
    return-void

    .line 369
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    monitor-exit p0

    return-void

    .line 372
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pauseAnalyze()J
    .locals 4

    .line 674
    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 677
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 681
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pauseAnalyze()J

    move-result-wide v0

    return-wide v0

    .line 681
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pauseExport()J
    .locals 4

    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 489
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 490
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 494
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->pauseExport()J

    move-result-wide v0

    return-wide v0

    .line 491
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseExport invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-exit p0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 494
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 4

    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 353
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 354
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 358
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->play()V

    .line 361
    return-void

    .line 355
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    monitor-exit p0

    return-void

    .line 358
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized releaseFramework()V
    .locals 4

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 103
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseFramework invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1}, Lcom/samsung/vekit/External/NativeInterface;->releaseFramework()V

    .line 110
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-static {v1}, Lcom/samsung/vekit/External/NativeInterface;->releaseInstance(Lcom/samsung/vekit/External/NativeInterface;)V

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    .line 113
    :cond_1
    sget-object v1, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-interface {v0, v1}, Lcom/samsung/vekit/Common/State/VEStateInterface;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 100
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V
    .locals 4
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ElementType;
    .param p2, "id"    # I

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 163
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V

    .line 170
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resizeGraphicBuffers(II)Z
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 75
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->INITIALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeGraphicBuffers invalid state. currentState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return v3

    .line 79
    .end local p0    # "this":Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
    :cond_0
    if-lez p1, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->resizeGraphicBuffers(II)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 80
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "resizeGraphicBuffers size should be bigger than 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    return v3

    .line 73
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    .end local p1    # "width":I
    .end local p2    # "height":I
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public resumeAnalyze(J)V
    .locals 4
    .param p1, "analyzedTime"    # J

    .line 687
    monitor-enter p0

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 690
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 691
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    monitor-exit p0

    return-void

    .line 694
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->resumeAnalyze(J)V

    .line 697
    return-void

    .line 694
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumeExport(J)V
    .locals 4
    .param p1, "renderTime"    # J

    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 503
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 504
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 508
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->resumeExport(J)V

    .line 511
    return-void

    .line 505
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeExport invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit p0

    return-void

    .line 508
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 596
    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 599
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 600
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    monitor-exit p0

    return-void

    .line 603
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 606
    return-void

    .line 603
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V
    .locals 4
    .param p1, "millisecond"    # J
    .param p3, "seekType"    # Lcom/samsung/vekit/Common/Type/SeekType;

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 338
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 339
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 343
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V

    .line 346
    return-void

    .line 340
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit p0

    return-void

    .line 343
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 638
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 639
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit p0

    return-void

    .line 642
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->setAnalyzeInfo(Lcom/samsung/vekit/Common/Object/AnalyzeInfo;)V

    .line 645
    return-void

    .line 642
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/vekit/Common/Object/ExportInfo;

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 476
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 477
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExportInfo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-exit p0

    return-void

    .line 480
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V

    .line 483
    return-void

    .line 480
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V
    .locals 4
    .param p1, "previewInfo"    # Lcom/samsung/vekit/Common/Object/PreviewInfo;

    .line 460
    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 463
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 464
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewInfo invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    monitor-exit p0

    return-void

    .line 467
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V

    .line 470
    return-void

    .line 467
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 4

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 324
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 325
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 329
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->show()V

    .line 332
    return-void

    .line 326
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    monitor-exit p0

    return-void

    .line 329
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startAnalyze()V
    .locals 4

    .line 648
    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 651
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 652
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    monitor-exit p0

    return-void

    .line 655
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->startAnalyze()V

    .line 658
    return-void

    .line 655
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "stroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 531
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 532
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 536
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/External/NativeInterface;->startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V

    .line 539
    return-void

    .line 533
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDoodle invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit p0

    return-void

    .line 536
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 381
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 382
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 386
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->stop()V

    .line 389
    return-void

    .line 383
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit p0

    return-void

    .line 386
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopAnalyze()V
    .locals 4

    .line 661
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 664
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 665
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    monitor-exit p0

    return-void

    .line 668
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->stopAnalyze()V

    .line 671
    return-void

    .line 668
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public swap(Lcom/samsung/vekit/Common/Object/Element;II)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 310
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 311
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swap invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit p0

    return-void

    .line 314
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/External/NativeInterface;->swap(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 317
    return-void

    .line 314
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
    .locals 4
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnalyzeType;

    .line 712
    monitor-enter p0

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 715
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 716
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyze invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    monitor-exit p0

    return-void

    .line 719
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->unloadAnalyzeSolution(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    .line 722
    return-void

    .line 719
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(Lcom/samsung/vekit/Common/Object/Element;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 150
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    monitor-exit p0

    return-void

    .line 154
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/External/NativeInterface;->update(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateViewport(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stateInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/State/VEStateInterface;

    .line 121
    .local v0, "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->FINALIZE:Lcom/samsung/vekit/Common/State/VEKitState;

    if-eq v1, v2, :cond_1

    .line 122
    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Common/State/VEKitState;->DESTROY:Lcom/samsung/vekit/Common/State/VEKitState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 126
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->nativeInterface:Lcom/samsung/vekit/External/NativeInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/External/NativeInterface;->updateViewport(IIII)V

    .line 129
    return-void

    .line 123
    .restart local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewport invalid state. currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/vekit/Common/State/VEStateInterface;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    monitor-exit p0

    return-void

    .line 126
    .end local v0    # "stateInterface":Lcom/samsung/vekit/Common/State/VEStateInterface;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
