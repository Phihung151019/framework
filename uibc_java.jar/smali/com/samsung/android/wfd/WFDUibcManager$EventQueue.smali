.class Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueue"
.end annotation


# instance fields
.field private keyInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;",
            ">;"
        }
    .end annotation
.end field

.field private rotateInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scrollInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/wfd/WFDUibcManager;

.field private touchInputs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/wfd/WFDUibcManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    .line 348
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    .line 349
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    .line 350
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/wfd/WFDUibcManager;Lcom/samsung/android/wfd/WFDUibcManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;-><init>(Lcom/samsung/android/wfd/WFDUibcManager;)V

    return-void
.end method


# virtual methods
.method public addKeyEvent(III)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "keyCode1"    # I
    .param p3, "keyCode2"    # I

    .line 437
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "WFDUibcManager"

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addKeyEvent(action : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keyCode1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keyCode2 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 444
    const/4 v0, 0x0

    .local v0, "type":I
    goto :goto_0

    .line 445
    .end local v0    # "type":I
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 446
    const/4 v0, 0x1

    .line 452
    .restart local v0    # "type":I
    :goto_0
    const-string v2, "Null pointer exception"

    const-string v3, "Interrupted when waiting to insert to queue"

    if-eqz p2, :cond_2

    .line 453
    new-instance v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    invoke-direct {v4}, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;-><init>()V

    .line 454
    .local v4, "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    iput v0, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    .line 455
    iput p2, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    .line 458
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 461
    :catch_0
    move-exception v5

    .line 462
    .local v5, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 459
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 460
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 465
    .end local v4    # "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    .line 466
    new-instance v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    invoke-direct {v4}, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;-><init>()V

    .line 467
    .restart local v4    # "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    iput v0, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    .line 468
    iput p3, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    .line 471
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 474
    :catch_2
    move-exception v3

    .line 475
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 472
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_3
    nop

    .line 478
    .end local v4    # "input":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    :cond_3
    :goto_4
    return-void

    .line 448
    .end local v0    # "type":I
    :cond_4
    const-string v0, "Unknown Key Event"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public addRotateEvent(II)V
    .locals 4
    .param p1, "radians"    # I
    .param p2, "fraction"    # I

    .line 501
    if-gez p1, :cond_0

    .line 502
    mul-int/lit8 p2, p2, -0x1

    .line 504
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    const v2, 0x3b7f9724    # 0.0039f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    const v1, 0x4048f5c3    # 3.14f

    div-float/2addr v0, v1

    .line 505
    .local v0, "degrees":F
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    const-string v2, "WFDUibcManager"

    if-eqz v1, :cond_1

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRotateEvent(degree : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "Null pointer exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 511
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 516
    :goto_1
    return-void
.end method

.method public addScrollEvent(IIII)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "type"    # I
    .param p3, "direction"    # I
    .param p4, "scrollBit"    # I

    .line 481
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "WFDUibcManager"

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addScrollEvent(action : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", direction : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scrollBit : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    invoke-direct {v0}, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;-><init>()V

    .line 487
    .local v0, "input":Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    iput p1, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    .line 488
    iput p3, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->direction:I

    .line 489
    iput p4, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->scrollBit:I

    .line 492
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "Null pointer exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 493
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 498
    :goto_1
    return-void
.end method

.method public addTouchEvent(II[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "pointers"    # I
    .param p3, "touchEvent"    # [Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 397
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "WFDUibcManager"

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTouchEvent(action : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pointers : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touchEvent(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") X : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    invoke-direct {v0}, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;-><init>()V

    .line 406
    .local v0, "input":Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    if-nez p1, :cond_1

    .line 407
    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    goto :goto_1

    .line 408
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 409
    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    goto :goto_1

    .line 410
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 411
    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    goto :goto_1

    .line 412
    :cond_3
    const/16 v2, 0x63

    if-ne p1, v2, :cond_5

    .line 413
    const/4 v2, 0x3

    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    .line 418
    :goto_1
    iput p2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointers:I

    .line 419
    new-array v2, p2, [Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iput-object v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 420
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p2, :cond_4

    .line 421
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    new-instance v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    invoke-direct {v4}, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;-><init>()V

    aput-object v4, v3, v2

    .line 422
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v2

    aget-object v4, p3, v2

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 423
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v2

    aget-object v4, p3, v2

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 424
    iget-object v3, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v2

    aget-object v4, p3, v2

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 428
    .end local v2    # "i":I
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 431
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "Null pointer exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 429
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_3
    nop

    .line 434
    :goto_4
    return-void

    .line 415
    :cond_5
    const-string v2, "Unknown Touch Event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method public getKeyEvent()Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    .locals 4

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->keyInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRotateEvent()Ljava/lang/Integer;
    .locals 4

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->rotateInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    const/4 v1, 0x0

    return-object v1
.end method

.method public getScrollEvent()Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    .locals 4

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->scrollInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTouchEvent()Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    .locals 4

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->touchInputs:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v1}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to read from queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v1, 0x0

    return-object v1
.end method
