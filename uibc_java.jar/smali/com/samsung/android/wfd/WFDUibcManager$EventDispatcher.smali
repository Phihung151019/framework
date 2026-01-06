.class Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;
.super Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field public volatile isRunning:Z

.field final synthetic this$0:Lcom/samsung/android/wfd/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/wfd/WFDUibcManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/wfd/WFDUibcManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;-><init>(Lcom/samsung/android/wfd/WFDUibcManager;Lcom/samsung/android/wfd/WFDUibcManager-IA;)V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->isRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "count":I
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->isRunning:Z

    if-eqz v1, :cond_7

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getTouchEvent()Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    move-result-object v1

    .line 309
    .local v1, "touchInput":Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getKeyEvent()Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    move-result-object v2

    .line 310
    .local v2, "keyInput":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getScrollEvent()Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    move-result-object v3

    .line 311
    .local v3, "scrollInput":Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v4

    .line 313
    .local v4, "rotationInput":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 315
    .local v5, "isDirty":Z
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 316
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/wfd/ConnectionMode;->handleTouchEvent(Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;)V

    .line 317
    const/4 v5, 0x1

    .line 319
    :cond_0
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 320
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/wfd/ConnectionMode;->handleKeyEvent(Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;)V

    .line 321
    const/4 v5, 0x1

    .line 323
    :cond_1
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 324
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/wfd/ConnectionMode;->handleScrollEvent(Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;)V

    .line 325
    const/4 v5, 0x1

    .line 327
    :cond_2
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 328
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/wfd/ConnectionMode;->handleRotationEvent(Ljava/lang/Integer;)V

    .line 329
    const/4 v5, 0x1

    .line 332
    :cond_3
    if-eqz v5, :cond_5

    .line 333
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_4

    .line 334
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6, v7}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fputmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;I)V

    .line 336
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 338
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I

    move-result v6

    const/16 v7, 0xbb8

    if-eq v6, v7, :cond_6

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x1388

    if-le v0, v6, :cond_6

    .line 339
    iget-object v6, p0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/android/wfd/WFDUibcManager;

    invoke-static {v6, v7}, Lcom/samsung/android/wfd/WFDUibcManager;->-$$Nest$fputmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;I)V

    .line 342
    .end local v1    # "touchInput":Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    .end local v2    # "keyInput":Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;
    .end local v3    # "scrollInput":Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;
    .end local v4    # "rotationInput":Ljava/lang/Integer;
    .end local v5    # "isDirty":Z
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 343
    :cond_7
    return-void
.end method
