.class public Lcom/samsung/vekit/Control/VEController;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;,
        Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;,
        Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;,
        Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;,
        Lcom/samsung/vekit/Control/VEController$ControllerCallbackMsg;
    }
.end annotation


# static fields
.field public static final UI_ANIMATION_MANAGER:I = -0x1

.field public static final VERSION:Ljava/lang/String; = "3.0.3"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

.field private animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

.field animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

.field private captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

.field captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

.field private controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

.field controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

.field exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

.field isAnimating:Z

.field isPlaying:Z

.field playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

.field private portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

.field renderTime:J

.field seekTime:J

.field viewMode:Lcom/samsung/vekit/Common/Type/ViewMode;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 73
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTROLLER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Controller"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 67
    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 68
    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "[VEKit] Version : 3.0.3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    goto :goto_0

    .line 80
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 83
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    const/4 v0, 0x0

    .line 85
    .restart local v0    # "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    .line 86
    new-instance v1, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    .line 87
    new-instance v1, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    .line 88
    new-instance v1, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    .line 90
    new-instance v1, Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1}, Lcom/samsung/vekit/Common/VEContext;-><init>()V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    .line 91
    new-instance v1, Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1, v3, v0}, Lcom/samsung/vekit/Control/VEAnalyzer;-><init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    .line 93
    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    .line 94
    new-instance v1, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

    .line 95
    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    .line 96
    new-instance v1, Lcom/samsung/vekit/Control/VEController$1;

    invoke-direct {v1, p0}, Lcom/samsung/vekit/Control/VEController$1;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;

    .line 47
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/vekit/Control/VEController;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Control/VEController;->handleError(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/vekit/Control/VEController;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Control/VEController;->handleItemError(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/vekit/Control/VEController;ILjava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/vekit/Control/VEController;->handleAudioPcmUpdate(ILjava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/vekit/Control/VEController;)Lcom/samsung/vekit/Common/VEContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vekit/Control/VEController;

    .line 47
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    return-object v0
.end method

.method private handleAudioPcmUpdate(ILjava/util/HashMap;)V
    .locals 4
    .param p1, "elementId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/PcmInfo;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/vekit/Common/Object/PcmInfo;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/Item;

    .line 241
    .local v0, "item":Lcom/samsung/vekit/Item/Item;
    if-nez v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v2, "Item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 245
    :cond_0
    if-nez p2, :cond_1

    .line 246
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v2, "Data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 249
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/vekit/Item/Item;->getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;

    move-result-object v1

    .line 250
    .local v1, "listener":Lcom/samsung/vekit/Listener/PcmInfoListener;
    if-nez v1, :cond_2

    .line 251
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v3, "listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 255
    :cond_2
    invoke-interface {v1, p2}, Lcom/samsung/vekit/Listener/PcmInfoListener;->onUpdate(Ljava/util/HashMap;)V

    .line 256
    return-void
.end method

.method private handleError(IILjava/lang/Object;)V
    .locals 4
    .param p1, "errorType"    # I
    .param p2, "extension"    # I
    .param p3, "extension2"    # Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExecuteError with errorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extension : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extension2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ErrorType;->values()[Lcom/samsung/vekit/Common/Type/ErrorType;

    move-result-object v0

    aget-object v0, v0, p1

    .line 191
    .local v0, "type":Lcom/samsung/vekit/Common/Type/ErrorType;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v1, :cond_2

    .line 192
    sget-object v1, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ErrorType:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 205
    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    move-object v2, p3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V

    goto :goto_0

    .line 194
    :pswitch_0
    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->pause()V

    .line 196
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    iget-wide v2, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onCodecReclaim(J)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->pauseExport()J

    .line 200
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    iget-wide v2, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onCodecReclaim(J)V

    .line 202
    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    move-object v2, p3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V

    .line 214
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleItemError(III)V
    .locals 6
    .param p1, "errorType"    # I
    .param p2, "elementType"    # I
    .param p3, "elementId"    # I

    .line 217
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ElementType;->values()[Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    aget-object v0, v0, p2

    .line 218
    .local v0, "type":Lcom/samsung/vekit/Common/Type/ElementType;
    sget-object v1, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ElementType:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 234
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid elementType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 231
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported listener error handling ElementType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 220
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Listener/ItemStatusListener;

    .line 221
    .local v1, "listener":Lcom/samsung/vekit/Listener/ItemStatusListener;
    if-eqz v1, :cond_0

    .line 222
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ItemErrorType;->values()[Lcom/samsung/vekit/Common/Type/ItemErrorType;

    move-result-object v2

    aget-object v2, v2, p1

    .line 223
    .local v2, "itemErrorType":Lcom/samsung/vekit/Common/Type/ItemErrorType;
    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleItemError itemErrorType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", elementType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", elementId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-interface {v1, v2}, Lcom/samsung/vekit/Listener/ItemStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V

    .line 226
    .end local v2    # "itemErrorType":Lcom/samsung/vekit/Common/Type/ItemErrorType;
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAnalyzeEvent(IIII)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 542
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    if-nez v0, :cond_0

    .line 543
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEAnalyzer;->onEvent(IIII)V

    .line 545
    return-void
.end method

.method private onAnimationEvent(IIIF)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "animationId"    # I
    .param p3, "type"    # I
    .param p4, "value"    # F

    .line 548
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onAnimationEvent(III[F)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "animationId"    # I
    .param p3, "type"    # I
    .param p4, "value"    # [F

    .line 555
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onControllerEvent(IIII)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 521
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 523
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onControllerEvent(IIIJ)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J

    .line 528
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 530
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 532
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onControllerEvent(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 537
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onPortraitVideoEvent(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "itemId"    # I
    .param p3, "type"    # I
    .param p4, "object"    # Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoEvent, status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->animate()V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 489
    return-void
.end method

.method public attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;

    .line 364
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    .line 365
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    .line 493
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->cancelAnimation()V

    .line 494
    return-void
.end method

.method public captureAnimatedFrame(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/vekit/Item/ImageItem;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 428
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    .line 431
    :cond_0
    return-void
.end method

.method public captureLatestFrame(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 434
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    .line 437
    :cond_0
    return-void
.end method

.method public captureSuperHDRFrame(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 8
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "centerX"    # I
    .param p4, "centerY"    # I
    .param p5, "captureType"    # Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .param p6, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 446
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "outputWidth":I
    .end local p2    # "outputHeight":I
    .end local p3    # "centerX":I
    .end local p4    # "centerY":I
    .end local p5    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local p6    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .local v2, "outputWidth":I
    .local v3, "outputHeight":I
    .local v4, "centerX":I
    .local v5, "centerY":I
    .local v6, "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .local v7, "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    goto :goto_0

    .line 446
    .end local v2    # "outputWidth":I
    .end local v3    # "outputHeight":I
    .end local v4    # "centerX":I
    .end local v5    # "centerY":I
    .end local v6    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local v7    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .restart local p1    # "outputWidth":I
    .restart local p2    # "outputHeight":I
    .restart local p3    # "centerX":I
    .restart local p4    # "centerY":I
    .restart local p5    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .restart local p6    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    :cond_0
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 449
    .end local p1    # "outputWidth":I
    .end local p2    # "outputHeight":I
    .end local p3    # "centerX":I
    .end local p4    # "centerY":I
    .end local p5    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local p6    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .restart local v2    # "outputWidth":I
    .restart local v3    # "outputHeight":I
    .restart local v4    # "centerX":I
    .restart local v5    # "centerY":I
    .restart local v6    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .restart local v7    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    :goto_0
    return-void
.end method

.method public captureSuperHDRFrame(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 7
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "captureType"    # Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .param p5, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 440
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "item":Lcom/samsung/vekit/Item/Item;
    .end local p2    # "outputWidth":I
    .end local p3    # "outputHeight":I
    .end local p4    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local p5    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .local v2, "item":Lcom/samsung/vekit/Item/Item;
    .local v3, "outputWidth":I
    .local v4, "outputHeight":I
    .local v5, "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .local v6, "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    goto :goto_0

    .line 440
    .end local v2    # "item":Lcom/samsung/vekit/Item/Item;
    .end local v3    # "outputWidth":I
    .end local v4    # "outputHeight":I
    .end local v5    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local v6    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .restart local p1    # "item":Lcom/samsung/vekit/Item/Item;
    .restart local p2    # "outputWidth":I
    .restart local p3    # "outputHeight":I
    .restart local p4    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .restart local p5    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    :cond_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 443
    .end local p1    # "item":Lcom/samsung/vekit/Item/Item;
    .end local p2    # "outputWidth":I
    .end local p3    # "outputHeight":I
    .end local p4    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .end local p5    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .restart local v2    # "item":Lcom/samsung/vekit/Item/Item;
    .restart local v3    # "outputWidth":I
    .restart local v4    # "outputHeight":I
    .restart local v5    # "captureType":Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .restart local v6    # "listener":Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    :goto_0
    return-void
.end method

.method public clearAnimations()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Manager/AnimationManager;->clearAnimations()V

    .line 373
    return-void
.end method

.method public create()V
    .locals 1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->createFramework(Lcom/samsung/vekit/Control/VEController;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 361
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    return-void
.end method

.method public detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;

    .line 368
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    .line 369
    return-void
.end method

.method public finalizeController()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->finalizeFramework()V

    .line 397
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->stopThread()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    .line 401
    :cond_0
    return-void
.end method

.method public getAnalyzer()Lcom/samsung/vekit/Control/VEAnalyzer;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    return-object v0
.end method

.method public getCurrentMediaPosition()J
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    .line 424
    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    return-wide v0
.end method

.method public getExportPosition()J
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getExportPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    .line 462
    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public getState()Lcom/samsung/vekit/Common/State/VEKitState;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v0

    return-object v0
.end method

.method public getVEKitVersion()Ljava/lang/String;
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "getVEKitVersion version : 3.0.3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "3.0.3"

    return-object v0
.end method

.method public initializeController(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "graphicBufferWidth"    # I
    .param p3, "graphicBufferHeight"    # I
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .param p6, "viewMode"    # Lcom/samsung/vekit/Common/Type/ViewMode;
    .param p7, "frameworkType"    # Lcom/samsung/vekit/Common/Type/FrameworkType;

    .line 378
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    .line 379
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->initialize()V

    .line 380
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0, p7}, Lcom/samsung/vekit/Common/VEContext;->setFrameworkType(Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    .line 381
    iput-object p6, p0, Lcom/samsung/vekit/Control/VEController;->viewMode:Lcom/samsung/vekit/Common/Type/ViewMode;

    .line 382
    sget-object v0, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    if-ne p6, v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameThread;

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Task/CaptureFrameThread;-><init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->startThread()V

    .line 388
    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return v0
.end method

.method synthetic lambda$new$0$com-samsung-vekit-Control-VEController(Lcom/samsung/vekit/Common/Type/EventType;)V
    .locals 3
    .param p1, "eventType"    # Lcom/samsung/vekit/Common/Type/EventType;

    .line 94
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent : EventType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pause()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pause()V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 512
    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    .line 513
    return-void
.end method

.method public pauseExport()J
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pauseExport()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    .line 453
    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public play()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    .line 502
    .local v0, "layerGroup":Lcom/samsung/vekit/Layer/LayerGroup;
    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->calculateTotalDuration()J

    move-result-wide v1

    .line 503
    .local v1, "totalDuration":J
    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->update()V

    .line 505
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 506
    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->play()V

    .line 507
    return-void

    .line 498
    .end local v0    # "layerGroup":Lcom/samsung/vekit/Layer/LayerGroup;
    .end local v1    # "totalDuration":J
    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->releaseFramework()V

    .line 405
    return-void
.end method

.method public resizeGraphicBuffers(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 391
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->resizeGraphicBuffers(II)Z

    move-result v0

    return v0
.end method

.method public resumeExport(J)V
    .locals 1
    .param p1, "renderTime"    # J

    .line 457
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->resumeExport(J)V

    .line 458
    return-void
.end method

.method public seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)Lcom/samsung/vekit/Control/VEController;
    .locals 2
    .param p1, "millisecond"    # J
    .param p3, "seekType"    # Lcom/samsung/vekit/Common/Type/SeekType;

    .line 412
    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "show : invalid state [playing]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object p0

    .line 417
    :cond_0
    iput-wide p1, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    .line 418
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V

    .line 419
    return-object p0
.end method

.method public setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/samsung/vekit/Common/Object/ExportInfo;

    .line 575
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExportInfo  width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getFd()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V

    .line 577
    return-void
.end method

.method public setExportstatuslistener(Lcom/samsung/vekit/Listener/ExportStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/ExportStatusListener;

    .line 580
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    .line 581
    return-void
.end method

.method public setPlayerStatusListener(Lcom/samsung/vekit/Listener/PlayerStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/PlayerStatusListener;

    .line 584
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    .line 585
    return-void
.end method

.method public setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V
    .locals 2
    .param p1, "previewInfo"    # Lcom/samsung/vekit/Common/Object/PreviewInfo;

    .line 570
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "setPreviewInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V

    .line 572
    return-void
.end method

.method public show()V
    .locals 2

    .line 479
    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "show : invalid state [playing]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->show()V

    .line 484
    return-void
.end method

.method public stop()V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stop()V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 518
    return-void
.end method

.method public update()V
    .locals 0

    .line 475
    invoke-super {p0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    .line 476
    return-void
.end method

.method public updateViewport(Lcom/samsung/vekit/Common/Object/Vector4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p1, "viewport":Lcom/samsung/vekit/Common/Object/Vector4;, "Lcom/samsung/vekit/Common/Object/Vector4<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getZ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getW()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->updateViewport(IIII)V

    .line 409
    return-void
.end method
