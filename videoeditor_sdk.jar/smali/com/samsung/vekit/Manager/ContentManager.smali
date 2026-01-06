.class public Lcom/samsung/vekit/Manager/ContentManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Content/Content;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 20
    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->CONTENT:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public create(Lcom/samsung/vekit/Common/Type/ContentType;Ljava/lang/String;)Lcom/samsung/vekit/Content/Content;
    .locals 4
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ContentType;
    .param p2, "name"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/ContentManager;->generateUniqueId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .local v1, "uniqueId":I
    nop

    .line 33
    sget-object v2, Lcom/samsung/vekit/Manager/ContentManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$ContentType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 59
    return-object v0

    .line 56
    :pswitch_0
    new-instance v0, Lcom/samsung/vekit/Content/PortraitVideo;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/PortraitVideo;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 57
    .local v0, "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_0

    .line 53
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_1
    new-instance v0, Lcom/samsung/vekit/Content/FragmentAudio;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/FragmentAudio;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 54
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_0

    .line 50
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_2
    new-instance v0, Lcom/samsung/vekit/Content/Caption;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Caption;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 51
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_0

    .line 47
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_3
    new-instance v0, Lcom/samsung/vekit/Content/Video;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Video;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 48
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_0

    .line 44
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_4
    new-instance v0, Lcom/samsung/vekit/Content/AnimatedImage;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/AnimatedImage;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 45
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_0

    .line 41
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_5
    new-instance v0, Lcom/samsung/vekit/Content/Image;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Image;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 42
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_0

    .line 38
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_6
    new-instance v0, Lcom/samsung/vekit/Content/Doodle;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Doodle;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 39
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_0

    .line 35
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_7
    new-instance v0, Lcom/samsung/vekit/Content/Audio;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Audio;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 36
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    nop

    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/ContentManager;->add(Ljava/lang/Object;)V

    .line 66
    return-object v0

    .line 28
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    .end local v1    # "uniqueId":I
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->TAG:Ljava/lang/String;

    const-string v3, "create: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
