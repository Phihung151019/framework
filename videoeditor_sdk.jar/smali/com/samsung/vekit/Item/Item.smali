.class public Lcom/samsung/vekit/Item/Item;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Item.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/ItemStatusListener;


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

.field protected content:Lcom/samsung/vekit/Content/Content;

.field protected duration:J

.field protected isVisible:Z

.field protected itemType:Lcom/samsung/vekit/Common/Type/ItemType;

.field listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

.field protected meshType:Lcom/samsung/vekit/Common/Type/MeshType;

.field protected padding:J

.field protected panel:Lcom/samsung/vekit/Panel/Panel;

.field protected parent:Lcom/samsung/vekit/Layer/Layer;

.field protected regionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/Region;",
            ">;"
        }
    .end annotation
.end field

.field protected speed:F


# direct methods
.method protected constructor <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "type"    # Lcom/samsung/vekit/Common/Type/ItemType;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ITEM:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/vekit/Item/Item;->speed:F

    .line 41
    sget-object v0, Lcom/samsung/vekit/Common/Type/MeshType;->PLANE:Lcom/samsung/vekit/Common/Type/MeshType;

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Item/Item;->isVisible:Z

    .line 49
    iput-object p2, p0, Lcom/samsung/vekit/Item/Item;->itemType:Lcom/samsung/vekit/Common/Type/ItemType;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method private getAnimationIndex(Lcom/samsung/vekit/Animation/Animation;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)I"
        }
    .end annotation

    .line 203
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    if-nez p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v1, "failed to getAnimationIndex (animation is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, -0x1

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getRegionIndex(Lcom/samsung/vekit/Common/Object/Region;)I
    .locals 2
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/Region;

    .line 140
    if-nez p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v1, "failed to get Region Index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, -0x1

    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/Region;

    .line 123
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-object p0
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

    .line 161
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/Item;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    nop

    .line 166
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 169
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 170
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v2, "attachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
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

    .line 281
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 282
    .local v0, "valid":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    return-void

    .line 283
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "isInvalidElement : please attach correct Animation(not TransitionAnimation) to Item."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 0
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public clearAnimations()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/Animation;

    .line 195
    .local v1, "animation":Lcom/samsung/vekit/Animation/Animation;
    invoke-virtual {v1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 197
    .end local v1    # "animation":Lcom/samsung/vekit/Animation/Animation;
    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 200
    return-void
.end method

.method public clearRegions()Lcom/samsung/vekit/Item/Item;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    return-object p0
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

    .line 174
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/Item;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    nop

    .line 179
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 180
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->rollback()V

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 183
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v2, "detachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return-void
.end method

.method public getAbsoluteEndTime()J
    .locals 4

    .line 234
    invoke-virtual {p0}, Lcom/samsung/vekit/Item/Item;->getAbsoluteStartTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getAbsoluteStartTime()J
    .locals 7

    .line 219
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    if-nez v0, :cond_0

    .line 220
    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    return-wide v0

    .line 222
    :cond_0
    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    .line 224
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {v2}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 225
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/vekit/Item/Item;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/vekit/Item/Item;

    .line 226
    .local v4, "item":Lcom/samsung/vekit/Item/Item;
    if-ne v4, p0, :cond_1

    .line 227
    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/vekit/Item/Item;->getItemEndTime()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 229
    .end local v4    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_0

    .line 230
    :cond_2
    :goto_1
    return-wide v0
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

    .line 186
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/Animation;

    return-object v0

    .line 187
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    const-string v1, "failed to get animation (invalid index)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    return-object v0
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

    .line 211
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->animationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/samsung/vekit/Content/Content;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->content:Lcom/samsung/vekit/Content/Content;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    return-wide v0
.end method

.method public getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 1

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterIntensity()F
    .locals 1

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getItemEndTime()J
    .locals 4

    .line 96
    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    iget-wide v2, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getItemStartTime()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    return-wide v0
.end method

.method public getItemType()Lcom/samsung/vekit/Common/Type/ItemType;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->itemType:Lcom/samsung/vekit/Common/Type/ItemType;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public getPadding()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    return-wide v0
.end method

.method public getPanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object v0
.end method

.method public getParent()Lcom/samsung/vekit/Layer/Layer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    return-object v0
.end method

.method public getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;
    .locals 1

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegion(I)Lcom/samsung/vekit/Common/Object/Region;
    .locals 3
    .param p1, "index"    # I

    .line 152
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/Region;

    return-object v0

    .line 153
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get region (invalid index) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/Region;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/vekit/Item/Item;->speed:F

    return v0
.end method

.method public getToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;)I
    .locals 1
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/samsung/vekit/Item/Item;->isVisible:Z

    return v0
.end method

.method public onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V
    .locals 1
    .param p1, "errorType"    # Lcom/samsung/vekit/Common/Type/ItemErrorType;

    .line 289
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/ItemStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V

    .line 292
    :cond_0
    return-void
.end method

.method public removeRegion(Lcom/samsung/vekit/Common/Object/Region;)Lcom/samsung/vekit/Item/Item;
    .locals 1
    .param p1, "region"    # Lcom/samsung/vekit/Common/Object/Region;

    .line 130
    iget-object v0, p0, Lcom/samsung/vekit/Item/Item;->regionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    return-object p0
.end method

.method public setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;

    .line 83
    iput-object p1, p0, Lcom/samsung/vekit/Item/Item;->content:Lcom/samsung/vekit/Content/Content;

    .line 84
    return-object p0
.end method

.method public setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "duration"    # J

    .line 109
    iput-wide p1, p0, Lcom/samsung/vekit/Item/Item;->duration:J

    .line 110
    return-object p0
.end method

.method public setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "filter"    # Lcom/samsung/vekit/Common/Object/Filter;

    .line 248
    return-object p0
.end method

.method public setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "intensity"    # F

    .line 252
    return-object p0
.end method

.method public bridge synthetic setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/Item;->setOpacity(F)Lcom/samsung/vekit/Item/Item;

    move-result-object p1

    return-object p1
.end method

.method public setOpacity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "opacity"    # F

    .line 269
    return-object p0
.end method

.method public setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "padding"    # J

    .line 100
    iput-wide p1, p0, Lcom/samsung/vekit/Item/Item;->padding:J

    .line 101
    return-object p0
.end method

.method public setPanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Item/Item;
    .locals 1
    .param p1, "panel"    # Lcom/samsung/vekit/Panel/Panel;

    .line 74
    invoke-virtual {p1}, Lcom/samsung/vekit/Panel/Panel;->clone()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Item/Item;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 75
    return-object p0
.end method

.method public setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "parent"    # Lcom/samsung/vekit/Layer/Layer;

    .line 64
    iput-object p1, p0, Lcom/samsung/vekit/Item/Item;->parent:Lcom/samsung/vekit/Layer/Layer;

    .line 65
    return-object p0
.end method

.method public setSpeed(F)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "speed"    # F

    .line 118
    iput p1, p0, Lcom/samsung/vekit/Item/Item;->speed:F

    .line 119
    return-object p0
.end method

.method public setStatusListener(Lcom/samsung/vekit/Listener/ItemStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/ItemStatusListener;

    .line 295
    iput-object p1, p0, Lcom/samsung/vekit/Item/Item;->listener:Lcom/samsung/vekit/Listener/ItemStatusListener;

    .line 296
    return-void
.end method

.method public setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;
    .param p2, "intensity"    # I

    .line 273
    return-object p0
.end method

.method public setVisible(Z)Lcom/samsung/vekit/Item/Item;
    .locals 0
    .param p1, "visible"    # Z

    .line 242
    iput-boolean p1, p0, Lcom/samsung/vekit/Item/Item;->isVisible:Z

    .line 243
    return-object p0
.end method
