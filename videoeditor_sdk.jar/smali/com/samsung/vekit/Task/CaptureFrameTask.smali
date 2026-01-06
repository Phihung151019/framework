.class public Lcom/samsung/vekit/Task/CaptureFrameTask;
.super Ljava/lang/Object;
.source "CaptureFrameTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    }
.end annotation


# instance fields
.field private captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field private item:Lcom/samsung/vekit/Item/Item;

.field private listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

.field private outputCenterX:I

.field private outputCenterY:I

.field private outputHeight:I

.field private outputWidth:I


# direct methods
.method public constructor <init>(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "outputCenterX"    # I
    .param p4, "outputCenterY"    # I
    .param p5, "captureType"    # Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .param p6, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 15
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 16
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    .line 17
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    .line 49
    iput p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 50
    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 51
    iput-object p6, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 52
    iput-object p5, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 53
    iput p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    .line 54
    iput p4, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    .line 55
    return-void
.end method

.method public constructor <init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 15
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 16
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    .line 17
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    .line 33
    iput p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 34
    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 35
    iput-object p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 36
    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 15
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 16
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    .line 17
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    .line 24
    iput-object p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    .line 25
    iput-object p4, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 26
    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 27
    iput p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 28
    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "captureType"    # Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .param p5, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 15
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 16
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    .line 17
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    .line 40
    iput-object p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    .line 41
    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 42
    iput p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 43
    iput-object p5, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 44
    iput-object p4, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 45
    return-void
.end method


# virtual methods
.method public getCaptureType()Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-object v0
.end method

.method public getItem()Lcom/samsung/vekit/Item/Item;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    return-object v0
.end method

.method public getOutputCenterX()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterX:I

    return v0
.end method

.method public getOutputCenterY()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputCenterY:I

    return v0
.end method

.method public getOutputHeight()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    return v0
.end method
