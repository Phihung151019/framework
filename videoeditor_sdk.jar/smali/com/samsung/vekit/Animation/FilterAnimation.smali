.class public Lcom/samsung/vekit/Animation/FilterAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "FilterAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Lcom/samsung/vekit/Common/Object/FilterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->FILTER:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/FilterAnimation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/FilterAnimation;

    move-result-object p1

    return-object p1
.end method

.method public addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/FilterAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/FilterInfo;",
            ">;)",
            "Lcom/samsung/vekit/Animation/FilterAnimation;"
        }
    .end annotation

    .line 59
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/FilterInfo;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    return-object v0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/FilterAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/FilterAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/FilterAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public rollback()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/samsung/vekit/Animation/FilterAnimation;->isEnableRollback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    check-cast v0, Lcom/samsung/vekit/Item/Item;

    iget-object v1, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->rollbackValue:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/vekit/Common/Object/FilterInfo;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/FilterInfo;->getFilter()Lcom/samsung/vekit/Common/Object/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Item/Item;->setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;

    .line 26
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    check-cast v0, Lcom/samsung/vekit/Item/Item;

    iget-object v1, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->rollbackValue:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/vekit/Common/Object/FilterInfo;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/FilterInfo;->getIntensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Item/Item;->setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;

    .line 27
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    .line 29
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->enableRollback:Z

    .line 30
    return-void
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/FilterAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/FilterAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/FilterAnimation;
    .locals 1
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    return-object v0
.end method

.method public bridge synthetic setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/FilterAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/FilterAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/FilterAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/FilterAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/FilterAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/FilterInfo;",
            ">;)",
            "Lcom/samsung/vekit/Animation/FilterAnimation;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/FilterInfo;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    return-object v0
.end method

.method public setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/FilterAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/FilterInfo;",
            ">;",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/FilterInfo;",
            ">;)",
            "Lcom/samsung/vekit/Animation/FilterAnimation;"
        }
    .end annotation

    .line 54
    .local p1, "firstKeyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/FilterInfo;>;"
    .local p2, "secondKeyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/FilterInfo;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    return-object v0
.end method

.method public bridge synthetic setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/FilterAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/FilterAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/FilterAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/FilterInfo;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/FilterAnimation;"
        }
    .end annotation

    .line 49
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/FilterInfo;>;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    return-object v0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/FilterAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/FilterAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/FilterAnimation;
    .locals 1
    .param p1, "startTime"    # J

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    return-object v0
.end method

.method public bridge synthetic setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/FilterAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/FilterAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/FilterAnimation;
    .locals 1
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 34
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    return-object v0
.end method

.method public updateTargetValue(Ljava/lang/Object;)V
    .locals 5
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    return-void

    .line 97
    :cond_1
    move-object v0, p1

    check-cast v0, [F

    .line 99
    .local v0, "interpolatedFilterInfo":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    .line 100
    .local v1, "filterId":I
    iget-object v2, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getFilterManager()Lcom/samsung/vekit/Manager/FilterManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/vekit/Manager/FilterManager;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Common/Object/Filter;

    .line 101
    .local v2, "filter":Lcom/samsung/vekit/Common/Object/Filter;
    iget-object v3, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    check-cast v3, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {v3, v2}, Lcom/samsung/vekit/Item/Item;->setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;

    .line 103
    const/4 v3, 0x1

    aget v3, v0, v3

    .line 104
    .local v3, "intensity":F
    iget-object v4, p0, Lcom/samsung/vekit/Animation/FilterAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    check-cast v4, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {v4, v3}, Lcom/samsung/vekit/Item/Item;->setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;

    .line 105
    return-void
.end method
