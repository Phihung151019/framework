.class public Lcom/samsung/vekit/Animation/TransitionAnimation;
.super Lcom/samsung/vekit/Animation/Animation;
.source "TransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Animation/Animation<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field protected secondTarget:Lcom/samsung/vekit/Item/Item;

.field protected transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Lcom/samsung/vekit/Common/Type/TransitionType;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transitionType"    # Lcom/samsung/vekit/Common/Type/TransitionType;

    .line 21
    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Animation/Animation;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V

    .line 22
    iput-object p4, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    .line 23
    return-void
.end method

.method static synthetic lambda$checkValidItem$0(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Common/Type/ItemType;)Z
    .locals 1
    .param p0, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ItemType;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/vekit/Common/Type/ItemType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->COLOR:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v4, v0, v1

    .line 109
    .local v0, "availableTypes":[Lcom/samsung/vekit/Common/Type/ItemType;
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Item/Item;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 110
    .local v1, "valid":Z
    invoke-virtual {p1}, Lcom/samsung/vekit/Item/Item;->getParent()Lcom/samsung/vekit/Layer/Layer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v4

    sget-object v5, Lcom/samsung/vekit/Common/Type/LayerType;->MEDIA:Lcom/samsung/vekit/Common/Type/LayerType;

    if-ne v4, v5, :cond_0

    move v2, v3

    .line 111
    .local v2, "isOnMediaLayer":Z
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 114
    return-void

    .line 112
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "isInvalidElement : please set correct Items to TransitionAnimation."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFirstTarget()Lcom/samsung/vekit/Common/Object/Element;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public getSecondTarget()Lcom/samsung/vekit/Item/Item;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public getTransitionType()Lcom/samsung/vekit/Common/Type/TransitionType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->transitionType:Lcom/samsung/vekit/Common/Type/TransitionType;

    return-object v0
.end method

.method public onAnimationCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationCanceled(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onAnimationFinished(Ljava/lang/Object;)V
    .locals 0
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 99
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationFinished(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public onAnimationStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 89
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationStarted(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public onAnimationUpdated(Ljava/lang/Object;)V
    .locals 0
    .param p1, "interpolatedValue"    # Ljava/lang/Object;

    .line 94
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->onAnimationUpdated(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public bridge synthetic setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 1
    .param p1, "controlPointX1"    # F
    .param p2, "controlPointY1"    # F
    .param p3, "controlPointX2"    # F
    .param p4, "controlPointY2"    # F

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Animation/Animation;->setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .param p1, "duration"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    return-object p0
.end method

.method public setFirstTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .line 49
    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    .line 50
    return-object p0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setFirstTarget: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    return-object p0
.end method

.method public bridge synthetic setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .param p1, "from"    # Ljava/lang/Float;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    return-object p0
.end method

.method public setSecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3
    .param p1, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .line 60
    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    .line 61
    return-object p0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setSecondTarget: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-object p0
.end method

.method public bridge synthetic setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartTime(J)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 1
    .param p1, "startTime"    # J

    .line 84
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Animation/Animation;->setStartTime(J)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public bridge synthetic setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 1
    .param p1, "target"    # Lcom/samsung/vekit/Common/Object/Element;

    .line 74
    invoke-super {p0, p1}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0
.end method

.method public setTargets(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/samsung/vekit/Animation/TransitionAnimation;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    nop

    .line 37
    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    .line 38
    iput-object p2, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->secondTarget:Lcom/samsung/vekit/Item/Item;

    .line 39
    return-object p0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "setTargets: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    return-object p0
.end method

.method public bridge synthetic setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Ljava/lang/Float;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 0
    .param p1, "to"    # Ljava/lang/Float;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    return-object p0
.end method
