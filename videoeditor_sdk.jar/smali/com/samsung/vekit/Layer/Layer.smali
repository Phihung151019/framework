.class public Lcom/samsung/vekit/Layer/Layer;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Layer.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/HierarchyInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Common/Object/Element;",
        "Lcom/samsung/vekit/Interface/HierarchyInterface<",
        "Lcom/samsung/vekit/Item/Item;",
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

.field protected availableTypes:[Lcom/samsung/vekit/Common/Type/ItemType;

.field protected isVisible:Z

.field protected itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Item/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final layerType:Lcom/samsung/vekit/Common/Type/LayerType;

.field panel:Lcom/samsung/vekit/Panel/Panel;

.field protected transitionAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Animation/TransitionAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/LayerType;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "type"    # Lcom/samsung/vekit/Common/Type/LayerType;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYER:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Layer/Layer;->isVisible:Z

    .line 39
    iput-object p2, p0, Lcom/samsung/vekit/Layer/Layer;->layerType:Lcom/samsung/vekit/Common/Type/LayerType;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method static synthetic lambda$checkValidItem$0(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Common/Type/ItemType;)Z
    .locals 1
    .param p0, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ItemType;

    .line 304
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
.method public attach(Lcom/samsung/vekit/Item/Item;)V
    .locals 3
    .param p1, "element"    # Lcom/samsung/vekit/Item/Item;

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .line 68
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    .line 70
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 71
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v2, "attach: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    return-void
.end method

.method public attach(Lcom/samsung/vekit/Item/Item;I)V
    .locals 3
    .param p1, "element"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "index"    # I

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    .line 83
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v1

    invoke-virtual {v0, p0, p2, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 84
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v2, "attach: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->attach(Lcom/samsung/vekit/Item/Item;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/Layer;->attach(Lcom/samsung/vekit/Item/Item;I)V

    return-void
.end method

.method public attach(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Item/Item;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Item/Item;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Item/Item;

    .line 90
    .local v1, "item":Lcom/samsung/vekit/Item/Item;
    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Layer/Layer;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_0

    .line 95
    :cond_0
    nop

    .line 96
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Item/Item;

    .line 99
    .local v2, "item":Lcom/samsung/vekit/Item/Item;
    invoke-virtual {v2, p0}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    .line 100
    invoke-virtual {v2}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_1

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    .line 103
    return-void

    .line 92
    .end local v0    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v2, "attach: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
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

    .line 174
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    nop

    .line 179
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 182
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 183
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v2, "attachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return-void
.end method

.method public attachTransitionAnimation(Lcom/samsung/vekit/Animation/TransitionAnimation;)V
    .locals 2
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/TransitionAnimation;

    .line 233
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 236
    return-void
.end method

.method public checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 315
    return-void

    .line 313
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "isInvalidElement : please attach correct TransitionAnimation To Layer."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->availableTypes:[Lcom/samsung/vekit/Common/Type/ItemType;

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->availableTypes:[Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/vekit/Layer/Layer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/vekit/Layer/Layer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Item/Item;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 305
    .local v0, "valid":Z
    if-eqz v0, :cond_1

    .line 308
    return-void

    .line 306
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "isInvalidElement : please attach correct Item."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clear(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Item/Item;

    .line 128
    .local v1, "item":Lcom/samsung/vekit/Item/Item;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    .line 129
    .end local v1    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    return-void
.end method

.method public clearAnimations()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/Animation;

    .line 211
    .local v1, "animation":Lcom/samsung/vekit/Animation/Animation;
    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    .line 212
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 213
    .end local v1    # "animation":Lcom/samsung/vekit/Animation/Animation;
    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 216
    return-void
.end method

.method public contains(Lcom/samsung/vekit/Item/Item;)Z
    .locals 1
    .param p1, "element"    # Lcom/samsung/vekit/Item/Item;

    .line 150
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->contains(Lcom/samsung/vekit/Item/Item;)Z

    move-result p1

    return p1
.end method

.method public detach(I)V
    .locals 1
    .param p1, "index"    # I

    .line 120
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/Item;

    .line 121
    .local v0, "item":Lcom/samsung/vekit/Item/Item;
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Layer/Layer;->detach(Lcom/samsung/vekit/Item/Item;)V

    .line 122
    return-void
.end method

.method public detach(Lcom/samsung/vekit/Item/Item;)V
    .locals 3
    .param p1, "element"    # Lcom/samsung/vekit/Item/Item;

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->checkValidItem(Lcom/samsung/vekit/Item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    .line 115
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v2, "detach: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-void
.end method

.method public bridge synthetic detach(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->detach(Lcom/samsung/vekit/Item/Item;)V

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

    .line 188
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    nop

    .line 193
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 194
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 197
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v2, "detachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return-void
.end method

.method public detachTransitionAnimation(Lcom/samsung/vekit/Animation/TransitionAnimation;)V
    .locals 2
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/TransitionAnimation;

    .line 267
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 268
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vekit/Animation/TransitionAnimation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    .line 270
    return-void
.end method

.method public findTransitionAnimation(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 257
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/TransitionAnimation;

    .line 259
    .local v1, "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->getFirstTarget()Lcom/samsung/vekit/Common/Object/Element;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->getSecondTarget()Lcom/samsung/vekit/Item/Item;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 260
    return-object v1

    .line 261
    .end local v1    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTransitionAnimationByFirstTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3
    .param p1, "firstTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 239
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/TransitionAnimation;

    .line 241
    .local v1, "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->getFirstTarget()Lcom/samsung/vekit/Common/Object/Element;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 242
    return-object v1

    .line 243
    .end local v1    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    :cond_0
    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTransitionAnimationBySecondTarget(Lcom/samsung/vekit/Item/Item;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 3
    .param p1, "secondTarget"    # Lcom/samsung/vekit/Item/Item;

    .line 248
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/TransitionAnimation;

    .line 250
    .local v1, "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->getSecondTarget()Lcom/samsung/vekit/Item/Item;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 251
    return-object v1

    .line 252
    .end local v1    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x0

    return-object v0
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

    .line 201
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/Animation;

    return-object v0

    .line 202
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v1, "failed to get animation (invalid index)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
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

    .line 220
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    if-nez p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v1, "failed to getAnimationIndex (animation is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, -0x1

    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

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

    .line 229
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->animationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/samsung/vekit/Item/Item;
    .locals 1
    .param p1, "index"    # I

    .line 160
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public bridge synthetic getChild(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->getChild(I)Lcom/samsung/vekit/Item/Item;

    move-result-object p1

    return-object p1
.end method

.method public getChildSize()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

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
            "Lcom/samsung/vekit/Item/Item;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Lcom/samsung/vekit/Item/Item;)I
    .locals 1
    .param p1, "element"    # Lcom/samsung/vekit/Item/Item;

    .line 155
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIndex(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/Layer;->getIndex(Lcom/samsung/vekit/Item/Item;)I

    move-result p1

    return p1
.end method

.method public getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->layerType:Lcom/samsung/vekit/Common/Type/LayerType;

    return-object v0
.end method

.method public getPanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object v0
.end method

.method public getTransitionAnimation(I)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 2
    .param p1, "index"    # I

    .line 273
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/TransitionAnimation;

    return-object v0

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v1, "failed to get transitionAnimation (invalid index)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionAnimationIndex(Lcom/samsung/vekit/Animation/Animation;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)I"
        }
    .end annotation

    .line 281
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    if-nez p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->TAG:Ljava/lang/String;

    const-string v1, "failed to getTransitionAnimationIndex (animation is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, -0x1

    return v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getTransitionAnimationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->transitionAnimationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/samsung/vekit/Layer/Layer;->isVisible:Z

    return v0
.end method

.method public setPanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Layer/Layer;
    .locals 1
    .param p1, "panel"    # Lcom/samsung/vekit/Panel/Panel;

    .line 56
    invoke-virtual {p1}, Lcom/samsung/vekit/Panel/Panel;->clone()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 57
    return-object p0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 297
    iput-boolean p1, p0, Lcom/samsung/vekit/Layer/Layer;->isVisible:Z

    .line 298
    return-void
.end method

.method public swap(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)V
    .locals 3
    .param p1, "from"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "to"    # Lcom/samsung/vekit/Item/Item;

    .line 165
    iget-object v0, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 166
    .local v0, "fromIndex":I
    iget-object v1, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 167
    .local v1, "toIndex":I
    iget-object v2, p0, Lcom/samsung/vekit/Layer/Layer;->itemList:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 168
    iget-object v2, p0, Lcom/samsung/vekit/Layer/Layer;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->swap(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 169
    return-void
.end method

.method public bridge synthetic swap(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/samsung/vekit/Item/Item;

    check-cast p2, Lcom/samsung/vekit/Item/Item;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/Layer;->swap(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Item/Item;)V

    return-void
.end method
