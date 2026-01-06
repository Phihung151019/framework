.class public Lcom/samsung/vekit/Animation/WipeAnimation;
.super Lcom/samsung/vekit/Animation/TransitionAnimation;
.source "WipeAnimation.java"


# instance fields
.field protected wipeType:Lcom/samsung/vekit/Common/Type/WipeType;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/samsung/vekit/Common/Type/TransitionType;->WIPE:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/vekit/Animation/TransitionAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Lcom/samsung/vekit/Common/Type/TransitionType;)V

    .line 20
    sget-object v0, Lcom/samsung/vekit/Common/Type/WipeType;->RIGHT:Lcom/samsung/vekit/Common/Type/WipeType;

    iput-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->wipeType:Lcom/samsung/vekit/Common/Type/WipeType;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    .line 40
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Ljava/lang/Float;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public getSecondTarget()Lcom/samsung/vekit/Item/Item;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public getTransitionType()Lcom/samsung/vekit/Common/Type/TransitionType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    return-object v0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .locals 3
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/WipeAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/WipeAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .param p1, "duration"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 0
    .param p1, "from"    # Ljava/lang/Float;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    return-object p0
.end method

.method public bridge synthetic setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    .local p1, "keyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Ljava/lang/Float;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    .line 35
    .local p1, "firstKeyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Ljava/lang/Float;>;"
    .local p2, "secondKeyFrame":Lcom/samsung/vekit/Common/Object/KeyFrame;, "Lcom/samsung/vekit/Common/Object/KeyFrame<Ljava/lang/Float;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "Ljava/lang/Float;",
            ">;>;)",
            "Lcom/samsung/vekit/Animation/WipeAnimation;"
        }
    .end annotation

    .line 30
    .local p1, "keyFrameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/KeyFrame<Ljava/lang/Float;>;>;"
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .param p1, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .param p1, "startTime"    # J

    .line 69
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/WipeAnimation;->setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 1
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 50
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    return-object v0
.end method

.method public bridge synthetic setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/WipeAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 0
    .param p1, "to"    # Ljava/lang/Float;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    return-object p0
.end method

.method public setWipeType(Lcom/samsung/vekit/Common/Type/WipeType;)Lcom/samsung/vekit/Animation/WipeAnimation;
    .locals 0
    .param p1, "wipeType"    # Lcom/samsung/vekit/Common/Type/WipeType;

    .line 44
    iput-object p1, p0, Lcom/samsung/vekit/Animation/WipeAnimation;->wipeType:Lcom/samsung/vekit/Common/Type/WipeType;

    .line 45
    return-object p0
.end method
