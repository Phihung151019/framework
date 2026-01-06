.class public Lcom/samsung/vekit/Animation/RotateAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Lcom/samsung/vekit/Common/Object/Vector3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->ROTATE:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/RotateAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/RotateAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/RotateAnimation;->updateTargetValue(Ljava/lang/Object;)V

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public rollback()V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/samsung/vekit/Animation/RotateAnimation;->isEnableRollback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Element;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->rollbackValue:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Panel/Panel;->setRotation(Lcom/samsung/vekit/Common/Object/Vector3;)Lcom/samsung/vekit/Panel/Panel;

    .line 24
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    .line 26
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->enableRollback:Z

    .line 27
    return-void
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/RotateAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/RotateAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/RotateAnimation;
    .locals 1
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/RotateAnimation;

    return-object v0
.end method

.method public bridge synthetic setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/RotateAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/RotateAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/RotateAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/Vector3;",
            ">;)",
            "Lcom/samsung/vekit/Animation/RotateAnimation;"
        }
    .end annotation

    .line 36
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/Vector3;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/RotateAnimation;

    return-object v0
.end method

.method public bridge synthetic setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/RotateAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/RotateAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/RotateAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Lcom/samsung/vekit/Common/Object/Vector3;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/RotateAnimation;"
        }
    .end annotation

    .line 31
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<Lcom/samsung/vekit/Common/Object/Vector3;>;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/RotateAnimation;

    return-object v0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/RotateAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/RotateAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/RotateAnimation;
    .locals 1
    .param p1, "startTime"    # J

    .line 51
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/RotateAnimation;

    return-object v0
.end method

.method public bridge synthetic setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/RotateAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/RotateAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/RotateAnimation;
    .locals 1
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/RotateAnimation;

    return-object v0
.end method

.method public updateTargetValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 87
    :cond_0
    if-nez p1, :cond_1

    .line 88
    return-void

    .line 90
    :cond_1
    move-object v0, p1

    check-cast v0, [F

    .line 91
    .local v0, "data":[F
    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([F)V

    .line 92
    .local v1, "matrix":Lcom/samsung/vekit/Common/Object/Matrix4;
    iget-object v2, p0, Lcom/samsung/vekit/Animation/RotateAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Element;->getPanel()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/vekit/Panel/Panel;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Panel/Panel;

    .line 93
    return-void
.end method
