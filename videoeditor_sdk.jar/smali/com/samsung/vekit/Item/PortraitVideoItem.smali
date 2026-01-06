.class public Lcom/samsung/vekit/Item/PortraitVideoItem;
.super Lcom/samsung/vekit/Item/VideoItem;
.source "PortraitVideoItem.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;


# instance fields
.field blurStrength:I

.field frameInfo:Lcom/samsung/vekit/Common/Object/PVFrameInfo;

.field keyFrameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Item/VideoItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 27
    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    iput-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->itemType:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->keyFrameList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public changePortraitVideoFocus(II)V
    .locals 1
    .param p1, "focusX"    # I
    .param p2, "focusY"    # I

    .line 44
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 45
    return-void
.end method

.method public changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V
    .locals 1
    .param p1, "detectionInfo"    # Lcom/samsung/vekit/Common/Object/PVDetectionInfo;

    .line 40
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoFocus(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVDetectionInfo;)V

    .line 41
    return-void
.end method

.method public changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V
    .locals 1
    .param p1, "keyFrame"    # Lcom/samsung/vekit/Common/Object/PVKeyFrame;

    .line 48
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/PVKeyFrame;)V

    .line 49
    return-void
.end method

.method public changePortraitVideoKeyFrameList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/PVKeyFrame;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->changePortraitVideoKeyFrameList(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    .line 52
    return-void
.end method

.method public checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 2
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    .line 80
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set portraitVideo(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteKeyFrame(I)V
    .locals 1
    .param p1, "keyFrameId"    # I

    .line 73
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->deletePortraitVideoKeyFrame(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 74
    return-void
.end method

.method public getBlurStrength()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->blurStrength:I

    return v0
.end method

.method public getFrameInfo()Lcom/samsung/vekit/Common/Object/PVFrameInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->frameInfo:Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    return-object v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->keyFrameList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPortraitVideoStatusListener()Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    return-object v0
.end method

.method public onPortraitVideoError(I)V
    .locals 3
    .param p1, "requestType"    # I

    .line 99
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoError -> ItemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;->onPortraitVideoError(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onPortraitVideoFrameInfoUpdated(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V
    .locals 3
    .param p1, "frameInfo"    # Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    .line 92
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoFrameInfoUpdated -> ItemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/PVFrameInfo;->getBlurLevel()I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->blurStrength:I

    .line 94
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;->onPortraitVideoFrameInfoUpdated(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onPortraitVideoKeyFrameUpdated(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/PVKeyFrame;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoKeyFrameUpdated -> ItemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;->onPortraitVideoKeyFrameUpdated(Ljava/util/ArrayList;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setBlurStrength(I)V
    .locals 0
    .param p1, "blurStrength"    # I

    .line 71
    iput p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->blurStrength:I

    return-void
.end method

.method public setFrameInfo(Lcom/samsung/vekit/Common/Object/PVFrameInfo;)V
    .locals 0
    .param p1, "frameInfo"    # Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    .line 59
    iput-object p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->frameInfo:Lcom/samsung/vekit/Common/Object/PVFrameInfo;

    .line 60
    return-void
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/PVKeyFrame;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/PVKeyFrame;>;"
    iput-object p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->keyFrameList:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public setPortraitVideoStatusListener(Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    .line 32
    iput-object p1, p0, Lcom/samsung/vekit/Item/PortraitVideoItem;->portraitVideoStatusListener:Lcom/samsung/vekit/Listener/PortraitVideoStatusListener;

    .line 33
    return-void
.end method
