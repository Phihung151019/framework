.class public Lcom/samsung/vekit/Content/Doodle;
.super Lcom/samsung/vekit/Content/Content;
.source "Doodle.java"


# instance fields
.field private capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

.field private capturedImagePath:Ljava/lang/String;

.field private capturedStrokeCount:I

.field private hasCapturedMask:Z

.field private strokeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->DOODLE:Lcom/samsung/vekit/Common/Type/ContentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Content/Content;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V

    .line 21
    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addStroke(Lcom/samsung/vekit/Common/Object/DoodleStroke;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3
    .param p1, "stroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 43
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object p0
.end method

.method public addStrokeList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;)",
            "Lcom/samsung/vekit/Content/Doodle;"
        }
    .end annotation

    .line 53
    .local p1, "strokeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/DoodleStroke;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object p0
.end method

.method public clearStrokeList()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public getCapturedImagePanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    return-object v0
.end method

.method public getCapturedImagePath()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedStrokeCount()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    return v0
.end method

.method public getStrokeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isHasCapturedMask()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    return v0
.end method

.method public removeStroke(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 3
    .param p1, "index"    # I

    .line 59
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object p0

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strokeIndex is invalid - index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object p0
.end method

.method public removeStroke(Lcom/samsung/vekit/Common/Object/DoodleStroke;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3
    .param p1, "stroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 69
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStroke size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object p0
.end method

.method public setCapturedImageInfo(Ljava/lang/String;III)Lcom/samsung/vekit/Content/Doodle;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "savedStrokeSize"    # I

    .line 126
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    const-string v1, "setCapturedImageInfo(Legacy)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/samsung/vekit/Content/Doodle;->width:I

    .line 129
    iput p3, p0, Lcom/samsung/vekit/Content/Doodle;->height:I

    .line 130
    iput p4, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    .line 131
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    .line 133
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    .line 135
    :cond_0
    return-object p0
.end method

.method public setCapturedImageInfo(Ljava/lang/String;IIILcom/samsung/vekit/Common/Type/ContentColorType;Z)Lcom/samsung/vekit/Content/Doodle;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "savedStrokeSize"    # I
    .param p5, "colorType"    # Lcom/samsung/vekit/Common/Type/ContentColorType;
    .param p6, "hasCapturedMask"    # Z

    .line 139
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    const-string v1, "setCapturedImageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/samsung/vekit/Content/Doodle;->width:I

    .line 142
    iput p3, p0, Lcom/samsung/vekit/Content/Doodle;->height:I

    .line 143
    iput p4, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    .line 144
    iput-object p5, p0, Lcom/samsung/vekit/Content/Doodle;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 145
    iput-boolean p6, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    .line 146
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    .line 148
    :cond_0
    return-object p0
.end method

.method public setCapturedImagePanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Content/Doodle;
    .locals 0
    .param p1, "panel"    # Lcom/samsung/vekit/Panel/Panel;

    .line 116
    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePanel:Lcom/samsung/vekit/Panel/Panel;

    .line 117
    return-object p0
.end method

.method public setCapturedImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "capturedImagePath"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedImagePath:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCapturedStrokeCount(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 0
    .param p1, "count"    # I

    .line 103
    iput p1, p0, Lcom/samsung/vekit/Content/Doodle;->capturedStrokeCount:I

    .line 104
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Content/Doodle;->setDuration(J)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Doodle;
    .locals 1
    .param p1, "duration"    # J

    .line 86
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Content/Content;->setDuration(J)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method

.method public setHasCapturedMask(Z)V
    .locals 0
    .param p1, "hasCapturedMask"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/samsung/vekit/Content/Doodle;->hasCapturedMask:Z

    .line 100
    return-void
.end method

.method public bridge synthetic setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Doodle;->setHeight(I)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 1
    .param p1, "height"    # I

    .line 81
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setHeight(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method

.method public setStrokeList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Content/Doodle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodleStroke;",
            ">;)",
            "Lcom/samsung/vekit/Content/Doodle;"
        }
    .end annotation

    .line 31
    .local p1, "strokeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/DoodleStroke;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->strokeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget-object v0, p0, Lcom/samsung/vekit/Content/Doodle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStrokeList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-object p0
.end method

.method public bridge synthetic setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Content/Doodle;->setWidth(I)Lcom/samsung/vekit/Content/Doodle;

    move-result-object p1

    return-object p1
.end method

.method public setWidth(I)Lcom/samsung/vekit/Content/Doodle;
    .locals 1
    .param p1, "width"    # I

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/vekit/Content/Content;->setWidth(I)Lcom/samsung/vekit/Content/Content;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Content/Doodle;

    return-object v0
.end method
