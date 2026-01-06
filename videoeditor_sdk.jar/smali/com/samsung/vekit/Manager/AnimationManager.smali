.class public Lcom/samsung/vekit/Manager/AnimationManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Animation/Animation<",
        "*>;>;"
    }
.end annotation


# instance fields
.field uiAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 34
    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->uiAnimationList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private createTransitionAnimation(Lcom/samsung/vekit/Common/Type/TransitionType;ILjava/lang/String;)Lcom/samsung/vekit/Animation/TransitionAnimation;
    .locals 2
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/TransitionType;
    .param p2, "uniqueId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$TransitionType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/TransitionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_0
    new-instance v0, Lcom/samsung/vekit/Animation/WipeAnimation;

    iget-object v1, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/vekit/Animation/WipeAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 107
    .local v0, "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    goto :goto_0

    .line 103
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    :pswitch_1
    new-instance v0, Lcom/samsung/vekit/Animation/SlideAnimation;

    iget-object v1, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/vekit/Animation/SlideAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 104
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    goto :goto_0

    .line 100
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    :pswitch_2
    new-instance v0, Lcom/samsung/vekit/Animation/DissolveAnimation;

    iget-object v1, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/vekit/Animation/DissolveAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 101
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    goto :goto_0

    .line 97
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    :pswitch_3
    new-instance v0, Lcom/samsung/vekit/Animation/FadeAnimation;

    iget-object v1, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/vekit/Animation/FadeAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 98
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/TransitionAnimation;
    nop

    .line 115
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/AnimationManager;->add(Ljava/lang/Object;)V

    .line 117
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public animate()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->animate()V

    .line 149
    return-void
.end method

.method public attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;

    .line 122
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 127
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->uiAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Manager/AnimationManager;->TAG:Ljava/lang/String;

    const-string v2, "attachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
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

    .line 152
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    return-void

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "isInvalidElement : please attach correct uiAnimation(not TransitionAnimation) to AnimationManager."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearAnimations()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->uiAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 145
    return-void
.end method

.method public create(Lcom/samsung/vekit/Common/Type/AnimationType;Lcom/samsung/vekit/Common/Type/TransitionType;Ljava/lang/String;)Lcom/samsung/vekit/Animation/Animation;
    .locals 4
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnimationType;
    .param p2, "transitionType"    # Lcom/samsung/vekit/Common/Type/TransitionType;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Type/AnimationType;",
            "Lcom/samsung/vekit/Common/Type/TransitionType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/AnimationManager;->generateUniqueId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v1, "uniqueId":I
    nop

    .line 51
    sget-object v2, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/AnimationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 83
    return-object v0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/samsung/vekit/Animation/TranslateAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/TranslateAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 80
    .local v0, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 76
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_1
    new-instance v0, Lcom/samsung/vekit/Animation/RotateAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/RotateAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 77
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 73
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_2
    new-instance v0, Lcom/samsung/vekit/Animation/ScaleAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/ScaleAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 74
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 70
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_3
    new-instance v0, Lcom/samsung/vekit/Animation/WaveAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/WaveAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 71
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 67
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_4
    new-instance v0, Lcom/samsung/vekit/Animation/ClipAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/ClipAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 68
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 64
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_5
    new-instance v0, Lcom/samsung/vekit/Animation/AlphaAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/AlphaAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 65
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 62
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_6
    invoke-direct {p0, p2, v1, p3}, Lcom/samsung/vekit/Manager/AnimationManager;->createTransitionAnimation(Lcom/samsung/vekit/Common/Type/TransitionType;ILjava/lang/String;)Lcom/samsung/vekit/Animation/TransitionAnimation;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_7
    new-instance v0, Lcom/samsung/vekit/Animation/ToneAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/ToneAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 60
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 56
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_8
    new-instance v0, Lcom/samsung/vekit/Animation/FilterAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/FilterAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 57
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    goto :goto_0

    .line 53
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :pswitch_9
    new-instance v0, Lcom/samsung/vekit/Animation/TransformAnimation;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p3}, Lcom/samsung/vekit/Animation/TransformAnimation;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 54
    .restart local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    nop

    .line 88
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/AnimationManager;->add(Ljava/lang/Object;)V

    .line 90
    return-object v0

    .line 46
    .end local v0    # "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    .end local v1    # "uniqueId":I
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/vekit/Manager/AnimationManager;->TAG:Ljava/lang/String;

    const-string v3, "create: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create(Lcom/samsung/vekit/Common/Type/AnimationType;Ljava/lang/String;)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/AnimationType;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Type/AnimationType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/samsung/vekit/Common/Type/TransitionType;->DEFAULT:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/vekit/Manager/AnimationManager;->create(Lcom/samsung/vekit/Common/Type/AnimationType;Lcom/samsung/vekit/Common/Type/TransitionType;Ljava/lang/String;)Lcom/samsung/vekit/Animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;

    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 138
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->uiAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 140
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Manager/AnimationManager;->TAG:Ljava/lang/String;

    const-string v2, "detachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return-void
.end method

.method public getUiAnimationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/samsung/vekit/Manager/AnimationManager;->uiAnimationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
