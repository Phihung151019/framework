.class Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortraitVideoEventHandler"
.end annotation


# instance fields
.field private controller:Lcom/samsung/vekit/Control/VEController;

.field final synthetic this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "controller"    # Lcom/samsung/vekit/Control/VEController;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 319
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    .line 320
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 321
    iput-object p2, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    .line 322
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 326
    invoke-static {}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->values()[Lcom/samsung/vekit/Common/State/PortraitVideoStatus;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 327
    .local v0, "status":Lcom/samsung/vekit/Common/State/PortraitVideoStatus;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 329
    .local v1, "itemId":I
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    invoke-virtual {v2}, Lcom/samsung/vekit/Control/VEController;->getContext()Lcom/samsung/vekit/Common/VEContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Item/Item;

    .line 330
    .local v2, "item":Lcom/samsung/vekit/Item/Item;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v3

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/samsung/vekit/Item/PortraitVideoItem;

    .line 336
    .local v3, "targetItem":Lcom/samsung/vekit/Item/PortraitVideoItem;
    sget-object v4, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$State$PortraitVideoStatus:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/State/PortraitVideoStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Lcom/samsung/vekit/Item/PortraitVideoItem;->onPortraitVideoError(I)V

    .line 346
    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/samsung/vekit/Item/PortraitVideoItem;->onPortraitVideoKeyFrameUpdated(Ljava/util/ArrayList;)V

    .line 342
    goto :goto_0

    .line 338
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    invoke-virtual {v3, v4}, Lcom/samsung/vekit/Item/PortraitVideoItem;->onPortraitVideoFrameInfoUpdated(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V

    .line 339
    nop

    .line 350
    :goto_0
    return-void

    .line 331
    .end local v3    # "targetItem":Lcom/samsung/vekit/Item/PortraitVideoItem;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v3}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PortraitVideoEventHandler : item is invalid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
