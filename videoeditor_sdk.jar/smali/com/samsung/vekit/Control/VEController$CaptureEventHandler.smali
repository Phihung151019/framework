.class Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 302
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    .line 303
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 304
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 308
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    .line 309
    .local v0, "captureInfo":Lcom/samsung/vekit/Common/Object/CaptureInfo;
    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/CaptureInfo;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v1

    .line 310
    .local v1, "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    if-eqz v1, :cond_0

    .line 311
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/CaptureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;->onCaptureFrameReceived(ILandroid/graphics/Bitmap;)V

    .line 313
    :cond_0
    return-void
.end method
