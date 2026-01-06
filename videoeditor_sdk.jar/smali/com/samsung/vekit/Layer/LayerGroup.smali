.class public Lcom/samsung/vekit/Layer/LayerGroup;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "LayerGroup.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/HierarchyInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Common/Object/Element;",
        "Lcom/samsung/vekit/Interface/HierarchyInterface<",
        "Lcom/samsung/vekit/Layer/Layer;",
        ">;"
    }
.end annotation


# instance fields
.field protected animationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected isVisible:Z

.field layerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field panel:Lcom/samsung/vekit/Panel/Panel;

.field totalDuration:J


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 3
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 33
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYERGROUP:Lcom/samsung/vekit/Common/Type/ElementType;

    const/4 v1, 0x0

    const-string v2, "LayerGroup"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method private calculateAutoDurationItems()V
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Layer/Layer;

    .line 82
    .local v1, "layer":Lcom/samsung/vekit/Layer/Layer;
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/LayerType;->AUDIO:Lcom/samsung/vekit/Common/Type/LayerType;

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/Common/Type/LayerType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vekit/Item/Item;

    .line 84
    .local v3, "item":Lcom/samsung/vekit/Item/Item;
    invoke-virtual {v3}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v4

    sget-object v5, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {v4, v5}, Lcom/samsung/vekit/Common/Type/ItemType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/samsung/vekit/Item/FragmentAudioItem;

    invoke-virtual {v4}, Lcom/samsung/vekit/Item/FragmentAudioItem;->isEnableAutoDuration()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    move-object v4, v3

    check-cast v4, Lcom/samsung/vekit/Item/FragmentAudioItem;

    iget-wide v5, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/vekit/Item/FragmentAudioItem;->setDuration(J)Lcom/samsung/vekit/Item/FragmentAudioItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vekit/Item/FragmentAudioItem;->update()V

    .line 87
    .end local v3    # "item":Lcom/samsung/vekit/Item/Item;
    :cond_0
    goto :goto_1

    .line 89
    .end local v1    # "layer":Lcom/samsung/vekit/Layer/Layer;
    :cond_1
    goto :goto_0

    .line 90
    :cond_2
    return-void
.end method


# virtual methods
.method public attach(Lcom/samsung/vekit/Layer/Layer;)V
    .locals 2
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 104
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 106
    return-void
.end method

.method public attach(Lcom/samsung/vekit/Layer/Layer;I)V
    .locals 2
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;
    .param p2, "index"    # I

    .line 110
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-virtual {v0, p0, p2, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 112
    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->attach(Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/LayerGroup;->attach(Lcom/samsung/vekit/Layer/Layer;I)V

    return-void
.end method

.method public attach(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Layer/Layer;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Layer/Layer;

    .line 119
    .local v2, "layer":Lcom/samsung/vekit/Layer/Layer;
    invoke-virtual {v2}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "layer":Lcom/samsung/vekit/Layer/Layer;
    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    .line 122
    return-void
.end method

.method public attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    .line 183
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    nop

    .line 188
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 191
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 192
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v2, "attachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    return-void
.end method

.method public calculateTotalDuration()J
    .locals 10

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 45
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Layer/Layer;

    .line 46
    .local v1, "layer":Lcom/samsung/vekit/Layer/Layer;
    iget-object v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getFrameworkType()Lcom/samsung/vekit/Common/Type/FrameworkType;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/FrameworkType;->SINGLE:Lcom/samsung/vekit/Common/Type/FrameworkType;

    if-ne v2, v3, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/LayerType;->MEDIA:Lcom/samsung/vekit/Common/Type/LayerType;

    if-ne v2, v3, :cond_4

    .line 50
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Item/Item;

    .line 51
    .local v2, "item":Lcom/samsung/vekit/Item/Item;
    iget-wide v3, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/Item;->getDuration()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/samsung/vekit/Item/Item;->getPadding()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 52
    .end local v2    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_1

    .line 53
    :cond_0
    goto :goto_3

    .line 58
    :cond_1
    const-wide/16 v2, 0x0

    .line 59
    .local v2, "layerDuration":J
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/vekit/Item/Item;

    .line 60
    .local v5, "item":Lcom/samsung/vekit/Item/Item;
    invoke-virtual {v5}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v6

    sget-object v7, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Type/ItemType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lcom/samsung/vekit/Item/FragmentAudioItem;

    invoke-virtual {v6}, Lcom/samsung/vekit/Item/FragmentAudioItem;->isEnableAutoDuration()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/vekit/Item/Item;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/samsung/vekit/Item/Item;->getPadding()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 63
    .end local v5    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_2

    .line 64
    :cond_3
    iget-object v4, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "layerDuration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-wide v4, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 67
    .end local v1    # "layer":Lcom/samsung/vekit/Layer/Layer;
    .end local v2    # "layerDuration":J
    :cond_4
    goto/16 :goto_0

    .line 69
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final total duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FrameworkMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getFrameworkType()Lcom/samsung/vekit/Common/Type/FrameworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Type/FrameworkType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/samsung/vekit/Layer/LayerGroup;->calculateAutoDurationItems()V

    .line 71
    iget-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    return-wide v0
.end method

.method public checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 254
    return-void

    .line 252
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "isInvalidElement : please attach correct uiAnimation(not TransitionAnimation) to LayerGroup."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clear(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    return-void
.end method

.method public clearAnimations()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/Animation;

    .line 220
    .local v1, "animation":Lcom/samsung/vekit/Animation/Animation;
    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    .line 221
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 222
    .end local v1    # "animation":Lcom/samsung/vekit/Animation/Animation;
    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 225
    return-void
.end method

.method public contains(Lcom/samsung/vekit/Layer/Layer;)Z
    .locals 1
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 159
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->contains(Lcom/samsung/vekit/Layer/Layer;)Z

    move-result p1

    return p1
.end method

.method public detach(I)V
    .locals 1
    .param p1, "index"    # I

    .line 132
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Layer/Layer;

    .line 133
    .local v0, "layer":Lcom/samsung/vekit/Layer/Layer;
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Layer/LayerGroup;->detach(Lcom/samsung/vekit/Layer/Layer;)V

    .line 134
    return-void
.end method

.method public detach(Lcom/samsung/vekit/Layer/Layer;)V
    .locals 2
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 126
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 127
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public bridge synthetic detach(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->detach(Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method

.method public detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    .line 197
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    nop

    .line 202
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 203
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 206
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v2, "detachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    return-void
.end method

.method public getAnimation(I)Lcom/samsung/vekit/Animation/Animation;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/Animation;

    return-object v0

    .line 211
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v1, "failed to get animation (invalid index)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimationIndex(Lcom/samsung/vekit/Animation/Animation;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)I"
        }
    .end annotation

    .line 229
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    if-nez p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v1, "failed to getAnimationIndex (animation is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, -0x1

    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getAnimationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/samsung/vekit/Layer/Layer;
    .locals 1
    .param p1, "index"    # I

    .line 169
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Layer/Layer;

    return-object v0
.end method

.method public bridge synthetic getChild(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->getChild(I)Lcom/samsung/vekit/Layer/Layer;

    move-result-object p1

    return-object p1
.end method

.method public getChildSize()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Lcom/samsung/vekit/Layer/Layer;)I
    .locals 1
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 164
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIndex(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->getIndex(Lcom/samsung/vekit/Layer/Layer;)I

    move-result p1

    return p1
.end method

.method public getPanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object v0
.end method

.method public getTotalDuration()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    return v0
.end method

.method public setPanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Layer/LayerGroup;
    .locals 1
    .param p1, "panel"    # Lcom/samsung/vekit/Panel/Panel;

    .line 98
    invoke-virtual {p1}, Lcom/samsung/vekit/Panel/Panel;->clone()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 99
    return-object p0
.end method

.method public setTotalDuration(J)Lcom/samsung/vekit/Layer/LayerGroup;
    .locals 0
    .param p1, "totalDuration"    # J

    .line 75
    iput-wide p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 76
    return-object p0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 246
    iput-boolean p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    .line 247
    return-void
.end method

.method public swap(Lcom/samsung/vekit/Layer/Layer;Lcom/samsung/vekit/Layer/Layer;)V
    .locals 3
    .param p1, "from"    # Lcom/samsung/vekit/Layer/Layer;
    .param p2, "to"    # Lcom/samsung/vekit/Layer/Layer;

    .line 174
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 175
    .local v0, "fromIndex":I
    iget-object v1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 176
    .local v1, "toIndex":I
    iget-object v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 177
    iget-object v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->swap(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 178
    return-void
.end method

.method public bridge synthetic swap(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    check-cast p2, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/LayerGroup;->swap(Lcom/samsung/vekit/Layer/Layer;Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method
